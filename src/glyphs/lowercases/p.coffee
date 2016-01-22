exports.glyphs['p'] =
	unicode: 'p'
	glyphName: 'p'
	characterName: 'LATIN SMALL LETTER P'
	ot:
		advanceWidth: contours[1].nodes[2].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 120 * spacing + ( (22) / 90 ) * thickness + ( serifWidth - 75 )
		spacingRight: 55 * spacing
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: descender + serifHeight + serifCurve
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: Math.min(
						xHeight - serifHeight - serifCurve * spurHeight,
						xHeight - 40 - 10 * width - Math.max(35, ( 35 / 90 ) * thickness ) - (3) # -> contours[1].nodes[0].expandedTo[1].y
					)
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x - ( 10 / 90 ) * thickness
					y: xHeight - 40 - 10 * width - Math.max(35, ( 35 / 90 ) * thickness ) - (3)
					dirOut: Math.max(
						50,
						Math.min(
							110,
							( 80 / 90 ) * thickness
						) - 31 * width
					) + 'deg'
					expand: Object({
						width: ( 15 / 90 ) * thickness
						angle: - 90 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[1].nodes[0].expandedTo[0].x + ( contours[1].nodes[2].expandedTo[0].x - contours[1].nodes[0].expandedTo[0].x ) * 0.5
					y: xHeight + overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 92 / 90 ) * thickness
						angle: - 139 + 'deg'
						distr: 0
					})
				2:
					x: Math.max(
						contours[0].nodes[1].expandedTo[1].x + ( ( 113 / 90 ) * thickness ) * 0.25 + ( serifWidth - 75 ),
						200 * width + 388 + ( serifWidth - 75 )
					) - (69)
					y: ( ( 290 - ( 25 / 90 ) * thickness ) / 500 ) * xHeight - (49)
					dirOut: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 113 / 90 ) * thickness
						angle: Math.min(
							- 145,
							- 130 - ( 15 / 90 ) * thickness
						) + 'deg'
						distr: 0.75
					})
				3:
					x: contours[1].nodes[0].expandedTo[1].x + ( contours[1].nodes[2].expandedTo[1].x - contours[1].nodes[0].expandedTo[1].x ) * 0.45
					y: - overshoot
					dirOut: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 25 / 90 ) * thickness
						angle: 90 + 'deg'
						distr: 0
					})
				4:
					x: contours[0].nodes[0].expandedTo[1].x
					y: 135
					dirIn: - 85 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 90 / 90 ) * thickness
						angle: 180 + 173.7 + 'deg'
						distr: 1
					})
	components:
		0:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].y
				1:
					x: contours[0].nodes[0].expandedTo[0].x
					y: contours[0].nodes[0].y
				2:
					anchorLine: descender
		1:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].y
				1:
					x: contours[0].nodes[1].expandedTo[0].x
					y: contours[0].nodes[1].y
				2:
					anchorLine: xHeight + overshoot
					right: false
					attaque: true
					serifAperture: true
					invertAperture: true
					attaqueAngle: 18
					directionY: -1
					leftWidth: - 12
			parentParameters:
				serifHeight: serifHeight + ( 22 * (- ( 1 / (15 + serifHeight) - 1 ) ) ) * spurHeight
				serifMedian: 0.266 * serifMedian
