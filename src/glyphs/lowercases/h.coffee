exports.glyphs['h'] =
	unicode: 'h'
	glyphName: 'h'
	characterName: 'LATIN SMALL LETTER H'
	ot:
		advanceWidth: contours[1].nodes[2].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 120 * spacing + ( (22) / 90 ) * thickness + ( serifWidth - 75 )
		spacingRight: 115 * spacing + ( serifWidth - 75 )
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: 0
			y: 0
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: 0 + serifHeight + serifCurve
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: ascenderHeight - serifHeight - serifCurve * spurHeight
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
					y: xHeight - 20 - 10 * width - Math.max(35, ( 35 / 90 ) * thickness ) - (3)
					dirOut: Math.max(
						28,
						Math.min(
							110,
							( 80 / 90 ) * thickness
						) - 51 * width
					) + 'deg'
					expand: Object({
						width: ( 10 / 90 ) * thickness
						angle: - 90 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[1].nodes[0].expandedTo[0].x + ( contours[1].nodes[2].expandedTo[0].x - contours[1].nodes[0].expandedTo[0].x ) * 0.63
					y: xHeight + overshoot
					dirOut: 0 + 'deg'
					tensionOut: 1.2
					type: 'smooth'
					expand: Object({
						width: ( 92 / 90 ) * thickness
						angle: - 139 + 'deg'
						distr: 0
					})
				2:
					x: Math.max(
						contours[0].nodes[1].expandedTo[1].x + ( ( 90.6 / 90 ) * thickness ) * 0.25 + serifWidth - 75,
						200 * width + 225 + serifWidth - 75
					) + (23)
					y: xHeight - Math.min(
						165,
						( 165 / 500 ) * xHeight + (2)
					)
					dirIn: 90 + 'deg'
					type: 'smooth'
					typeOut: 'line'
					expand: Object({
						width: ( 90.6 / 90 ) * thickness
						angle: 180 + 6 + 'deg'
						distr: 0.75
					})
				3:
					x: contours[1].nodes[2].x
					y: 0 + serifHeight + serifCurve
					dirIn: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness
						angle: 180 + 'deg'
						distr: 0.75
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
					anchorLine: 0
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
					anchorLine: ascenderHeight
					right: false
					attaque: true
					# serifAperture: true
					attaqueAngle: 18
					directionY: -1
					leftWidth: - 12
			parentParameters:
				serifHeight: serifHeight + ( 22 * (- ( 1 / (15 + serifHeight) - 1 ) ) ) * spurHeight
				serifMedian: 0.266 * serifMedian
		2:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[1].nodes[3].expandedTo[0].x
					y: contours[1].nodes[3].y
				1:
					x: contours[1].nodes[3].expandedTo[1].x
					y: contours[1].nodes[3].y
				2:
					anchorLine: 0
