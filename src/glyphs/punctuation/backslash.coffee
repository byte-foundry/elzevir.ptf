exports.glyphs['backslash'] =
	unicode: '\\'
	glyphName: 'backslash'
	characterName: 'REVERSE SOLIDUS'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	parameters:
		spacingLeft: 50 * spacing - 60
		spacingRight: 50 * spacing + 0
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x + 250
					y: ( 145 / 230 ) * descender
					typeOut: 'line'
					expand:
						width: thickness * ( 40 / 115 )
						angle: 0
						distr: 0
				1:
					x: spacingLeft
					y: capHeight + 50
					typeIn: 'line'
					expand:
						width: thickness * ( 40 / 115 )
						angle: 0
						distr: 0
