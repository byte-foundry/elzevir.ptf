'use strict';

var gulp = require('gulp'),
	path = require('path'),
	fs = require('fs'),
	coffee = require('coffee-script'),
	glob = require('glob'),
	argv = require('yargs').argv,
	karma = require('karma').server,
	operation = require('./operationalyzer'),
	jsufon = require('./jsufonify'),
	svgembed = require('./svgembeder');

var $ = require('gulp-load-plugins')({
  pattern: ['gulp-*']
});

gulp.task('make:alternates', function() {
	var glyphsDir = './src/glyphs';
	glob('./diacritics/**/*.coffee', {cwd: glyphsDir}, function(err, filepaths) {
		filepaths.forEach((filepath) => {
			var diacriticDir = path.dirname(filepath);
			fs.readFile(path.join(glyphsDir, filepath), 'utf-8', (err, data) => {
				if (err) throw err;

				// Find the glyph name and diacritic name
				var baseGlyphName = data.match(/base\s*:\s*'(.+)'/)[1];
				var glyphName = data.match(new RegExp("exports.glyphs\\['(.+)'\\]"))[1];
				var diacriticNameMatch = data.match(new RegExp("exports.glyphs\\['" + baseGlyphName + "_(.+)'\\]"));
				if(!diacriticNameMatch) {
					console.warn('Possible case problem between base name (' + baseGlyphName + ') and glyph name (' + glyphName + ')');
					return;
				}
				var diacriticName = diacriticNameMatch[1];

				if(!baseGlyphName || !diacriticName) {
					console.error('Missing glyph name or base');
					return;
				}

				// Look for the alternates
				var destinationDir = path.join(glyphsDir, diacriticDir.match(/uppercases/) ?  'uppercases' : 'lowercases');
				glob(
					'./'+ baseGlyphName +'?*.coffee',
					{cwd: destinationDir},
					function(err, filepaths) { // for every alternate we find
						filepaths.forEach((filepath) => {
							var filename = path.basename(filepath);
							var alternateName = filename.match(new RegExp('(' + baseGlyphName + '.+).coffee'))[1];

							// Copy the original file and modify the base value
							var newGlyphName = alternateName + '_' + diacriticName;
							var newFileData = data
									.replace(/exports.glyphs\['.+'\]/, "exports.glyphs['" + newGlyphName + "']")
									.replace(new RegExp("base\\s*:\\s*'" + baseGlyphName), "base: '" + alternateName);

							var newFilepath = path.join(glyphsDir, diacriticDir, newGlyphName + '.coffee');
							fs.writeFile(newFilepath, newFileData, { flag: argv.force ? 'w' : 'wx' }, function(err) {
								if (err && err.code == 'EEXIST') {
									console.warn('File already exists, ignoring:', newFilepath, '(use --force to overwrite)');
									return;
								} else if (err) { throw err; }

								console.log('New diacritic generated:', newFilepath);
							});
						});
					}
				);
			});
		});
	});
});

gulp.task('clean-dist', function() {
	return gulp.src('dist', { read: false })
		.pipe($.rimraf());
});

gulp.task('build', ['copy'], function() {
	return gulp.src('src/**/*.coffee')
		.pipe($.coffee({bare: true}).on('error', $.util.log))
		.pipe(operation())
		.pipe($.concat('font.json'))
		.pipe(jsufon())
		.pipe(svgembed())
		.pipe(gulp.dest('dist/'));
});

gulp.task('copy', ['clean-dist'], function() {
	return gulp.src('src/**/*.js')
		.pipe(gulp.dest('dist'));
});

gulp.task('lint', function() {
	return gulp.src(['src/**/*.js'])
		.pipe($.size())
		.pipe($.jshint())
		.pipe($.jshint.reporter('jshint-stylish'))
		.pipe($.jshint.reporter('fail'));
});

gulp.task('test', ['lint', 'build'], function(done) {
	karma.start({
		configFile: __dirname + '/karma.conf.js',
			singleRun: true
		}, done);
});

gulp.task('watch', function() {
	gulp.watch(['src/**/*'], ['build']);
});
