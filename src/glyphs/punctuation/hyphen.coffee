exports.glyphs['hyphen'] =
	unicode: '-'
	glyphName: 'hyphen'
	characterName: 'HYPHEN-MINUS'
	ot:
		advanceWidth: contours[0].nodes[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 20
		spacingRight: 50 * spacing + 20
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: xHeight * ( 235 / 500 ) * crossbar
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand:
						width: ( 70 / 90 ) * thickness
						angle: 90 + 'deg'
						distr: 0.5
				1:
					x: 260 * width
					y: xHeight * ( 235 / 500 ) * crossbar
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand:
						width: ( 70 / 90 ) * thickness
						angle: 90 + 'deg'
						distr: 0.5
