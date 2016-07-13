exports.glyphs['r'] =
	unicode: 'r'
	glyphName: 'r'
	characterName: 'LATIN SMALL LETTER R'
	ot:
		advanceWidth: contours[1].nodes[2].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 120 + ( (22) / 90 ) * thickness + ( serifWidth - 75 )
		spacingRight: 50 * spacing + 10 
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: contours[0].nodes[0].expandedTo[0].x + ( contours[1].nodes[1].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
			y: xHeight + diacriticHeight
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
					y: xHeight - serifHeight - serifCurve * spurHeight
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
					# y: xHeight - 20 - 10 * width - Math.max(53, ( 53 / 90 ) * thickness ) - (3)
					y: Math.min(
						xHeight - 20 - 10 * width - Math.max(
							53 + 100 * aperture * apertureTop - 100,
							Math.min(
								53,
								( 53 / 90 ) * thickness + 100 * aperture * apertureTop - 100
							)
						) - (3),
						Math.min(
							contours[1].nodes[1].y + Math.cos( - 139 * Math.PI / 180 ) * ( 92 / 90 ) * thickness,
							xHeight - 65
						)
					)
					dirOut: Math.max(
						52,
						Math.min(
							110,
							( 80 / 90 ) * thickness
						) - 38 * width
					) + 'deg'
					dirOut: Math.max(
						Math.min(
							Math.PI / 2,
							contours[1].nodes[0].expand.angle + ( Math.PI / 2 ) +
							( Math.max(
								52,
								Math.min(
									110,
									( 80 / 90 ) * thickness
								) - 38 * width
							) * Math.PI / 180 ) * aperture * apertureTop
						),
						Utils.lineAngle( contours[1].nodes[0].expandedTo[0].point, contours[1].nodes[1].expandedTo[0].point )
					)
					expand: Object({
						width: ( 12 / 90 ) * thickness
						angle: - 90 + 'deg'
						distr: 0.25
					})
					expand: Object({
						width: ( 12 / 90 ) * thickness
						angle: ( - 180 + Math.max(
							90,
							Math.min(
								0,
								150 * aperture * apertureTop
							)
						) ) * Math.PI / 180
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].expandedTo[1].x + ( contours[1].nodes[2].expandedTo[0].x - contours[0].nodes[0].expandedTo[1].x ) * 0.63
					y: xHeight + overshoot
					dirIn: 180 + 'deg'
					tensionOut: 1.2
					type: 'smooth'
					expand: Object({
						width: ( 98 / 90 ) * thickness
						angle: - 137 + 'deg'
						distr: 0
					})
				2:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 200 * width + 100 - (33),
						contours[0].nodes[0].expandedTo[1].x + 150
					)
					y: xHeight - Math.max( 30, ( 53 / 90 ) * thickness ) - (33/90) * thickness
					dirIn: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 61 / 90 ) * thickness
						angle: - 135 + 'deg'
						distr: 0.75
					})
		2:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[1].nodes[2].expandedTo[0].x
					y: contours[1].nodes[2].expandedTo[0].y
					type: 'smooth'
					dirOut: - 90 + 'deg'
					# tensionOut: Math.min( 1, serifBall )
					# tensionIn: Math.min( 1, serifBall )
				1:
					x: contours[1].nodes[2].expandedTo[1].x
					y: Math.min(
						contours[1].nodes[2].expandedTo[1].y,
						contours[1].nodes[1].expandedTo[1].y - 15
					)
					type: 'smooth'
					dirOut: 180 + 'deg'
					# tensionOut: Math.min( 1, serifBall )
					# tensionIn: Math.min( 1, serifBall )
				2:
					x: contours[1].nodes[1].expandedTo[1].x
					y: contours[1].nodes[1].expandedTo[1].y
					dirIn: 0 + 'deg'
					typeOut: 'line'
					# tensionOut: Math.min( 1, serifBall )
					# tensionIn: Math.min( 1, serifBall )
				3:
					x: contours[1].nodes[1].expandedTo[0].x
					y: contours[1].nodes[1].expandedTo[0].y
					# typeOut: 'line'
					dirOut: 0 + 'deg'
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
					anchorLine: xHeight + overshoot
					right: false
					attaque: true
					serifAperture: true
					attaqueAngle: 18
					directionY: -1
					leftWidth: - 12
			parentParameters:
				serifHeight: serifHeight + ( 22 * (- ( 1 / (15 + serifHeight) - 1 ) ) ) * spurHeight
				serifMedian: 0.266 * serifMedian
