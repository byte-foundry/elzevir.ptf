exports.glyphs['tilde_char'] =
	unicode: '~'
	glyphName: 'asciitilde'
	characterName: 'TILDE'
	ot:
		advanceWidth: contours[0].nodes[3].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 120
		spacingRight: 50 * spacing + 120
		xHeight: xHeight / 2
	tags: [
		'component',
		'diacritic'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: xHeight - 75
					dirOut: Math.PI / 2
					expand:
						width: thickness * ( 15 / 90 ) * contrast
						angle: Math.PI
						distr: 0.25
				1:
					x: contours[0].nodes[0].x + 50 * width - (4)
					y: xHeight
					dirOut: 0
					type: 'smooth'
					expand:
						width: thickness * ( 63 / 90 )
						angle:( 72 ) / 180 * Math.PI
						distr: 0.25
				2:
					x: contours[0].nodes[3].expandedTo[0].x - ( contours[0].nodes[1].expandedTo[1].x - contours[0].nodes[0].expandedTo[1].x )
					y: xHeight - 75 - overshoot / 2 + (15)
					dirOut: 0
					type: 'smooth'
					expand:
						width: thickness * ( 63 / 90 )
						angle:( 72 ) / 180 * Math.PI
						distr: 0.25
				3:
					x: contours[0].nodes[0].x + 280 * width + (4)
					y: contours[0].nodes[1].expandedTo[1].y - overshoot / 2
					dirOut: Math.PI / 2
					expand:
						width: thickness * ( 15 / 90 ) * contrast
						angle: Math.PI
						distr: 0.75
