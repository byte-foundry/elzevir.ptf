exports.glyphs['slash'] =
	unicode: '/'
	glyphName: 'slash'
	characterName: 'SOLIDUS'
	ot:
		advanceWidth: contours[0].nodes[1].expandedTo[1].x
	transforms: Array(
		['skewX', slant + 'deg']
	)
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	parameters:
		spacingLeft: 50 * spacing + 0
		spacingRight: 50 * spacing + 0
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: ( 145 / 230 ) * descender
					typeOut: 'line'
					expand:
						width: ( 40 / 90 ) * thickness
						angle: 0 + 'deg'
						distr: 0
				1:
					x: contours[0].nodes[0].expandedTo[0].x + 310
					y: capHeight + 50
					typeIn: 'line'
					expand:
						width: ( 40 / 90 ) * thickness
						angle: 0 + 'deg'
						distr: 0
