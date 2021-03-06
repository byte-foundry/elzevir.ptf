exports.glyphs['s'] =
	unicode: 's'
	glyphName: 's'
	characterName: 'LATIN SMALL LETTER S'
	ot:
		advanceWidth: contours[0].nodes[2].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 50 + (0)
		spacingRight: 50 * spacing + 50
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: contours[0].nodes[5].expandedTo[0].x
			y: xHeight + diacriticHeight
		1:
			# angleTop: Math.max(
			# 	90,
			# 	Math.min(
			# 		200 - 50 * aperture * apertureTop,
			# 		170
			# 	)
			# ) * Math.PI / 180
			# angleBottom: Math.max(
			# 	90,
			# 	Math.min(
			# 		200 - 50 * aperture * apertureBottom,
			# 		170
			# 	)
			# ) * Math.PI / 180
			angleTop: Math.max(
				90,
				Math.min(
					200 - 50 * aperture * apertureTop,
					170
				)
			) * Math.PI / 180
			angleBottom: Math.max(
				90,
				Math.min(
					200 - 50 * aperture * apertureBottom,
					170
				)
			) * Math.PI / 180
		2:
			x: contours[0].nodes[1].expandedTo[0].x
			y: contours[0].nodes[1].expandedTo[0].y + ( 4 / 90 ) * thickness * contrast
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: Math.min(
						30 + (8) + 50 * aperture * apertureBottom - 50,
						contours[0].nodes[3].y - serifWidth
					)
					# dirOut: Math.min(
					# 	- 23,
					# 	Math.max(
					# 		- 90,
					# 		- 70 + 47 * width - 45 * aperture * apertureBottom + 45
					# 	)
					# ) + serifRotate * ( 10 ) - 10 + 'deg'
					dirOut: anchors[1].angleBottom
					expand: Object({
						width: ( 32 / 90 ) * thickness
						angle: 90 + serifRotate * ( 15 ) - 15 + 'deg'
						angle: anchors[1].angleBottom + Math.PI / 2 - Math.PI
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x + ( (contours[0].nodes[2].x + ( ( 82 / 90 ) * thickness * 0.75 * Math.cos( - 156 * Math.PI / 180 ) )) - contours[0].nodes[0].x ) * 0.6
					y: - overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 21 / 90 ) * thickness
						angle: 76 + 'deg'
						distr: 0
					})
				2:
					# x: Math.max(
					# 	contours[0].nodes[4].expandedTo[1].x + 200 * width + 115 - (18),
					# 	contours[0].nodes[4].expandedTo[0].x + 10
					# )
					x: contours[0].nodes[4].expandedTo[1].x + 200 * width + 115 - (18)
					y: contours[0].nodes[1].expandedTo[0].y + ( contours[0].nodes[3].expandedTo[0].y - contours[0].nodes[1].expandedTo[0].y ) * 0.5
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 82 / 90 ) * thickness
						angle: - 156 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[0].nodes[0].x + ( contours[0].nodes[6].x - contours[0].nodes[0].x ) * 0.6
					y: contours[0].nodes[1].y + ( contours[0].nodes[5].y - contours[0].nodes[1].y ) * 0.5
					dirOut: Math.min(
						Utils.lineAngle( contours[0].nodes[2].expandedTo[1].point, contours[0].nodes[4].expandedTo[1].point ) + Math.PI / 8,
						Math.PI
					)
					type: 'smooth'
					expand: Object({
						width: ( 90 / 90 ) * thickness
						angle: Math.max(
							Math.PI / 4 + Math.PI,
							Utils.lineAngle( contours[0].nodes[6].expandedTo[1].point, contours[0].nodes[0].expandedTo[0].point )
						)
						distr: 0.5
					})
				4:
					x: 60 + (17)
					x: contours[0].nodes[0].expandedTo[0].x + 10 + (17)
					y: contours[0].nodes[3].expandedTo[1].y + ( contours[0].nodes[5].expandedTo[1].y - contours[0].nodes[3].expandedTo[1].y ) * 0.55
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 76 / 90 ) * thickness
						angle: - 156 + 'deg'
						distr: 0.75
					})
				5:
					# x: contours[0].nodes[4].x + ( contours[0].nodes[6].x - contours[0].nodes[4].x ) * 0.5 - (1)
					# x: (contours[0].nodes[4].x + ( 76 / 90 ) * thickness * 0.25 * Math.cos( 23 * Math.PI / 180 )) + ( contours[0].nodes[6].x - (contours[0].nodes[4].x + ( 76 / 90 ) * thickness * 0.25 * Math.cos( 23 * Math.PI / 180 )) ) * 0.45
					x: Math.max(
						(contours[0].nodes[4].x + ( 76 / 90 ) * thickness * 0.75 * Math.cos( 23 * Math.PI / 180 )) + ( contours[0].nodes[6].x - (contours[0].nodes[4].x + ( 76 / 90 ) * thickness * 0.75 * Math.cos( 23 * Math.PI / 180 )) ) * 0.45,
						(contours[0].nodes[4].x - ( 76 / 90 ) * thickness * 0.25 * Math.cos( 23 * Math.PI / 180 )) + ( contours[0].nodes[6].x - (contours[0].nodes[4].x - ( 76 / 90 ) * thickness * 0.25 * Math.cos( 23 * Math.PI / 180 )) ) * 0.45
					)
					y: xHeight + overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 20 / 90 ) * thickness
						angle: 180 - 90 + 'deg'
						distr: 1
					})
				6:
					x: Math.max(
						195 + 150 * width,
						145 + 200 * width
					)
					x: contours[0].nodes[4].x + 200 * width + 85 - (13)
					# y: xHeight - 35 - (8) - 50 * aperture * apertureTop + 50
					y: Math.max(
						xHeight - 35 - (8) - 50 * aperture * apertureTop + 50,
						contours[0].nodes[3].y + serifWidth
					)
					# dirIn: Math.min(
					# 	146,
					# 	90 + 56 * width
					# ) + 'deg'
					# dirIn: Math.min(
					# 	146,
					# 	Math.max(
					# 		90,
					# 		90 + 56 * width - 45 * aperture * apertureTop + 45
					# 	)
					# ) + 'deg'
					dirIn: anchors[1].angleTop
					expand: Object({
						width: ( 32 / 90 ) * thickness
						angle: 180 - 90 + serifRotate * ( 15 ) - 15 + 'deg'
						angle: anchors[1].angleTop - Math.PI / 2
						distr: 0.75
					})
	components:
		0:
			base: ['none', 'serif-curve-inside-auto']
			id: 'toptop'
			parentAnchors:
				0:
					baseWidth: contours[0].nodes[6].expandedTo[1]
					baseHeight: contours[0].nodes[6].expandedTo[1].point
					noneAnchor: contours[0].nodes[6].expandedTo[1].point
					opposite: contours[0].nodes[6].expandedTo[0].point
					curveEnd: contours[0].nodes[5].expandedTo[1]
					rotationAngle: 15
					rotationCenter: contours[0].nodes[6].expandedTo[1].point
			parentParameters:
				serifRotate: serifRotate - 1
		1:
			base: ['serif-curve-inside-auto', 'none']
			id: 'topbottom'
			parentAnchors:
				0:
					baseWidth: contours[0].nodes[6].expandedTo[0]
					baseHeight: contours[0].nodes[6].expandedTo[1].point
					noneAnchor: contours[0].nodes[6].expandedTo[0].point
					opposite: contours[0].nodes[6].expandedTo[1].point
					curveEnd: contours[0].nodes[5].expandedTo[0]
					rotationAngle: 15
					rotationCenter: contours[0].nodes[6].expandedTo[1].point
					down: true
					inverseOrder: true
					reversed: true
			parentParameters:
				serifRotate: serifRotate - 1
				serifHeight: Math.min( ( 40 / 15 ) * serifHeight, serifHeight + 25 )
				serifMedian: Math.max( 0.3 * serifMedian, serifMedian - 0.7 )
		2:
			base: ['none', 'serif-curve-inside-auto']
			id: 'bottombottom'
			parentAnchors:
				0:
					baseWidth: contours[0].nodes[0].expandedTo[0]
					baseHeight: contours[0].nodes[0].expandedTo[0].point
					noneAnchor: contours[0].nodes[0].expandedTo[0].point
					opposite: contours[0].nodes[0].expandedTo[1].point
					curveEnd: contours[0].nodes[1].expandedTo[0]
					rotationAngle: 15
					rotationCenter: contours[0].nodes[0].expandedTo[0].point
					down: true
					left: true
			parentParameters:
				serifRotate: serifRotate - 1
		3:
			base: ['serif-curve-inside-auto', 'none']
			id: 'bottomtop'
			parentAnchors:
				0:
					baseWidth: contours[0].nodes[0].expandedTo[1]
					baseHeight: contours[0].nodes[0].expandedTo[0].point
					noneAnchor: contours[0].nodes[0].expandedTo[1].point
					opposite: contours[0].nodes[0].expandedTo[0].point
					curveEnd: contours[0].nodes[1].expandedTo[1]
					rotationAngle: 15
					rotationCenter: contours[0].nodes[0].expandedTo[0].point
					left: true
					inverseOrder: true
			parentParameters:
				serifRotate: serifRotate - 1
				serifWidth: Math.min( ( 85 / 75 ) * serifWidth, serifWidth + 10 )
				serifHeight: Math.min( ( 55 / 15 ) * serifHeight, serifHeight + 40 )
				serifMedian: Math.max( 0.2 * serifMedian, serifMedian - 0.8 )
				serifCurve: Math.min( ( 90 / 65 ) * serifCurve, serifCurve + 25 )
