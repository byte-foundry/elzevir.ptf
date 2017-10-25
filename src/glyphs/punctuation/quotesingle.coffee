exports.glyphs['quotesingle'] =
	unicode: '\''
	glyphName: 'quotesingle'
	characterName: 'APOSTROPHE'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[1].x + spacingRight
	parameters:
		spacingLeft: 50 * spacing + 40
		spacingRight: 50 * spacing + 40
		thickness: Math.max( 40, Math.min( 120, thickness ))
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
					x: spacingLeft + (57/90) * thickness
					y: capHeight
					typeOut: 'line'
					expand:
						width: ( 115 / 90 ) * thickness
						angle: 0 + 'deg'
						distr: 0.5
				1:
					x: contours[0].nodes[0].x
					y: contours[0].nodes[0].y - 100 - Math.min( 160, ( 160 / 90 ) * thickness )
					typeIn: 'line'
					expand:
						width: ( 15 / 90 ) * thickness
						angle: 0 + 'deg'
						distr: 0.5
