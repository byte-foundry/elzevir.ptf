exports.glyphs['period'] =
	unicode: '.'
	glyphName: 'period'
	characterName: 'FULL STOP'
	ot:
		advanceWidth: contours[0].nodes[3].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 60
		spacingRight: 50 * spacing + 60
		# thickness: Math.max( 40, Math.min( 120, thickness ))
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	anchors:
		0:
			x: 125
			y: - overshoot
	contours:
		0:
			skeleton: false
			closed: true
			nodes:
				0:
					x: anchors[0].x
					y: anchors[0].y
					dirOut: 180 + 'deg'
					typeIn: 'smooth'
				1:
					x: anchors[0].x - Math.max(
						40,
						Math.min(
							160,
							thickness * ( 130 / 90 )
						)
					) / 2
					y: anchors[0].y + Math.max(
						40,
						Math.min(
							160,
							thickness * ( 130 / 90 )
						)
					) / 2
					dirOut: 90 + 'deg'
					typeIn: 'smooth'
				2:
					x: anchors[0].x
					y: anchors[0].y + Math.max(
						40,
						Math.min(
							160,
							thickness * ( 130 / 90 )
						)
					)
					dirOut: 0 + 'deg'
					typeIn: 'smooth'
				3:
					x: anchors[0].x + Math.max(
						40,
						Math.min(
							160,
							thickness * ( 130 / 90 )
						)
					) / 2
					y: anchors[0].y + Math.max(
						40,
						Math.min(
							160,
							thickness * ( 130 / 90 )
						)
					) / 2
					dirOut: - 90 + 'deg'
					typeIn: 'smooth'
