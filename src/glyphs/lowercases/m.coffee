exports.glyphs['m'] =
	unicode: 'm'
	glyphName: 'm'
	characterName: 'LATIN SMALL LETTER M'
	ot:
		advanceWidth: contours[2].nodes[2].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 120 + ( (22) / 90 ) * thickness + ( serifWidth - 75 )
		spacingRight: 50 * spacing + 115 + ( serifWidth - 75 )
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			junction: Utils.pointOnCurve( contours[1].nodes[1].expandedTo[1], contours[1].nodes[3].expandedTo[1], ( 35 / 90 ) * thickness + 150 * aperture * apertureTop - 150, false, 10 )
			junction: Utils.pointOnCurve( contours[1].nodes[1].expandedTo[0], contours[1].nodes[2].expandedTo[0], 70, true, 10 )
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: xHeight - Math.max( 0, serifHeight * serifArc ) - ( Math.sin( (15 * spurHeight) / 180 * Math.PI ) * ( thickness ) ) - Math.max( 0, serifHeight + serifCurve )
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
					y: Math.min(
						xHeight - 20 - 10 * width - Math.max(
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
						Math.min(
							Math.PI / 2,
							contours[1].nodes[0].expand.angle + ( Math.PI / 2 ) +
							( Math.max(
								28,
								Math.min(
									110,
									( 80 / 90 ) * thickness
								) - 51 * width
							) * Math.PI / 180 ) * aperture * apertureTop
						),
						Utils.lineAngle( contours[1].nodes[0].expandedTo[0].point, contours[1].nodes[1].expandedTo[0].point )
					)
					expand: Object({
						width: ( 10 / 90 ) * thickness
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
					x: contours[1].nodes[0].expandedTo[0].x + ( contours[1].nodes[2].expandedTo[0].x - contours[1].nodes[0].expandedTo[0].x ) * 0.63
					y: xHeight + overshoot
					dirOut: 0 + 'deg'
					tensionIn: 1.1
					tensionOut: 0.95
					type: 'smooth'
					expand: Object({
						width: ( 89 / 90 ) * thickness
						angle: - 142 + 'deg'
						distr: 0
					})
				2:
					x: Math.max(
						contours[0].nodes[1].expandedTo[0].x + 200 * width + 205 - (22),
						contours[0].nodes[1].expandedTo[1].x + 0.75 * thickness + 10
					)
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
						distr: 0.25
					})
				3:
					x: contours[1].nodes[2].x
					y: Math.max( 0, serifHeight * serifArc )
					dirIn: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness
						angle: 180 + 'deg'
						distr: 0.25
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: anchors[0].junction.x - ( 6 / 90 ) * thickness - (0)
					y: Math.min(
						anchors[0].junction.y,
						contours[1].nodes[0].expandedTo[0].y
					)
					dirOut: Math.max(
						Math.min(
							Math.PI / 2,
							contours[1].nodes[0].expand.angle + ( Math.PI / 2 ) +
							( Math.max(
								28,
								Math.min(
									110,
									( 80 / 90 ) * thickness
								) - 51 * width
							) * Math.PI / 180 ) * aperture * apertureTop
						),
						Utils.lineAngle( contours[2].nodes[0].expandedTo[0].point, contours[2].nodes[1].expandedTo[0].point )
					)
					expand: Object({
						width: ( 14 / 90 ) * thickness
						angle: Math.min(
							0,
							Math.max(
								- 90,
								- 120 + 50 * aperture * apertureTop
							)
						) * Math.PI / 180
						distr: 0.25
					})
				1:
					x: contours[2].nodes[0].expandedTo[0].x + ( contours[2].nodes[2].expandedTo[0].x - contours[2].nodes[0].expandedTo[0].x ) * 0.63
					y: xHeight + overshoot
					dirOut: 0 + 'deg'
					tensionIn: 1.1
					tensionOut: 0.95
					type: 'smooth'
					expand: Object({
						width: ( 92 / 90 ) * thickness
						angle: - 139 + 'deg'
						distr: 0
					})
				2:
					x: Math.max(
						contours[1].nodes[2].expandedTo[1].x + 200 * width + 205 - (22),
						contours[1].nodes[2].expandedTo[0].x + 0.75 * thickness + 10
					)
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
						distr: 0.25
					})
				3:
					x: contours[2].nodes[2].x
					y: Math.max( 0, serifHeight * serifArc )
					dirIn: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness
						angle: 180 + 'deg'
						distr: 0.25
					})
	components:
		0:
			base: ['serif-vertical', 'none']
			id: 'bottomleft'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0].point
					noneAnchor: contours[0].nodes[0].expandedTo[0].point
					opposite: contours[0].nodes[0].expandedTo[1].point
		1:
			base: ['serif-vertical', 'none']
			id: 'bottomright'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1].point
					noneAnchor: contours[0].nodes[0].expandedTo[1].point
					opposite: contours[0].nodes[0].expandedTo[0].point
					reversed: true
			transformOrigin: contours[0].nodes[0].expandedTo[1].point
			transforms: Array(
				[ 'scaleX', -1 ]
			)
		2:
			base: ['spur-vertical', 'none']
			id: 'topleft'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[0].point
					noneAnchor: contours[0].nodes[1].expandedTo[0].point
					opposite: contours[0].nodes[1].expandedTo[1].point
					reversed: true
					rotate: -15 * spurHeight
					aperture: true
			transformOrigin: contours[0].nodes[1].expandedTo[0].point
			transforms: Array(
				[ 'scaleY', -1 ],
				[ 'translateY', - ( Math.sin( (15 * spurHeight) / 180 * Math.PI ) * ( thickness ) ) - Math.max( 0, serifHeight + serifCurve ) ]
			)
			parentParameters:
				serifMedian: Math.max( serifMedian * 0.2, serifMedian - 0.8 )
				serifHeight: Math.min( ( 45 / 15 ) * serifHeight, serifHeight + 30 )
				serifRoundness: Math.max( serifRoundness * 1.4, serifRoundness + 0.4 )
		3:
			base: ['serif-vertical', 'none']
			id: 'bottomleft'
			parentAnchors:
				0:
					base: contours[1].nodes[3].expandedTo[1].point
					noneAnchor: contours[1].nodes[3].expandedTo[1].point
					opposite: contours[1].nodes[3].expandedTo[0].point
		4:
			base: ['serif-vertical', 'none']
			id: 'bottomright'
			parentAnchors:
				0:
					base: contours[1].nodes[3].expandedTo[0].point
					noneAnchor: contours[1].nodes[3].expandedTo[0].point
					opposite: contours[1].nodes[3].expandedTo[1].point
					reversed: true
			transformOrigin: contours[1].nodes[3].expandedTo[0].point
			transforms: Array(
				[ 'scaleX', -1 ]
			)
		5:
			base: ['serif-vertical', 'none']
			id: 'bottomleft'
			parentAnchors:
				0:
					base: contours[2].nodes[3].expandedTo[1].point
					noneAnchor: contours[2].nodes[3].expandedTo[1].point
					opposite: contours[2].nodes[3].expandedTo[0].point
		6:
			base: ['serif-vertical', 'none']
			id: 'bottomright'
			parentAnchors:
				0:
					base: contours[2].nodes[3].expandedTo[0].point
					noneAnchor: contours[2].nodes[3].expandedTo[0].point
					opposite: contours[2].nodes[3].expandedTo[1].point
					reversed: true
			transformOrigin: contours[2].nodes[3].expandedTo[0].point
			transforms: Array(
				[ 'scaleX', -1 ]
			)
