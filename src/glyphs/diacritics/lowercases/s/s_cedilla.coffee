exports.glyphs['s_cedilla'] =
	unicode: 'ş'
	glyphName: 'uni015F'
	characterName: 'LATIN SMALL LETTER S WITH CEDILLA'
	base: 's'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'lowercase',
		'diacritic'
	]
	components:
		0:
			base: 'cedilla'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[2].x
					y: parentAnchors[2].y
