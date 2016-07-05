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
	anchors:
		0:
			angle: Math.PI - Math.min(
				180,
				130 + 45 * aperture * apertureBottom
			) * Math.PI / 180
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
					y: Math.min(
						xHeight - 40 - 10 * width - Math.max(
							35 + 100 * aperture * apertureTop - 100,
							Math.min(
								35,
								( 35 / 90 ) * thickness + 100 * aperture * apertureTop - 100
							)
						) - (3),
						Math.min(
							contours[1].nodes[1].y + Math.cos( - 139 * Math.PI / 180 ) * ( 92 / 90 ) * thickness,
							xHeight - 65
						)
					)
					dirOut: Math.max(
						50,
						Math.min(
							110,
							( 80 / 90 ) * thickness
						) - 31 * width
					) + 'deg'
					dirOut: Math.max(
						Math.min(
							Math.PI / 2,
							contours[1].nodes[0].expand.angle + ( Math.PI / 2 ) +
							( Math.max(
								50,
								Math.min(
									110,
									( 80 / 90 ) * thickness
								) - 31 * width
							) * Math.PI / 180 ) * aperture * apertureTop
						),
						Utils.lineAngle( contours[1].nodes[0].expandedTo[0].point, contours[1].nodes[1].expandedTo[0].point )
					)
					expand: Object({
						width: ( 15 / 90 ) * thickness
						# angle: - 90 + 'deg'
						angle: Math.min(
							0,
							Math.max(
								- 90,
								- 140 + 50 * aperture * apertureTop
							)
						) * Math.PI / 180
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
					y: 135 + 40 * aperture * apertureBottom - 40
					dirIn: anchors[0].angle + Math.PI / 2
					type: 'smooth'
					expand: Object({
						width: Math.min( thickness, ( 70 / 90 ) * thickness * ( 1 / (aperture * apertureBottom) ) )
						angle: anchors[0].angle
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
