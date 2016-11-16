# TODO: serifs…
# TODO: top part should follow right bottom (thickness+)
exports.glyphs['S_cap'] =
	unicode: 'S'
	glyphName: 'S'
	characterName: 'LATIN CAPITAL LETTER S'
	ot:
		advanceWidth: contours[0].nodes[2].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 45 + (0)
		spacingRight: 50 * spacing + 45
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: contours[0].nodes[5].expandedTo[0].x
			y: capHeight + diacriticHeight
			baseSerifTop_: Utils.pointOnCurve( contours[0].nodes[1].expandedTo[1], contours[0].nodes[0].expandedTo[1], serifHeight + Math.min( 180, serifCurve * ( 180 / 65 ) ), true )
			baseSerifBottom_: Utils.pointOnCurve( contours[0].nodes[0].expandedTo[0], contours[0].nodes[1].expandedTo[0], serifHeight + Math.min( 150, serifCurve * ( 150 / 65 ) ) )
			baseSerifBottom: Utils.pointOnCurve( contours[0].nodes[5].expandedTo[0], contours[0].nodes[6].expandedTo[0], serifHeight + Math.min( 150, serifCurve * ( 150 / 65 ) ), true )
			baseSerifTop: Utils.pointOnCurve( contours[0].nodes[6].expandedTo[1], contours[0].nodes[5].expandedTo[1], serifHeight + Math.min( 120, serifCurve * ( 120 / 65 ) ) )
		1:
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
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: Math.max(
						50 + 60 * aperture * apertureBottom - 60,
						contours[0].nodes[1].y + ( 25 / 90 ) * thickness * opticThickness
					)
					dirOut: anchors[1].angleBottom
					expand: Object({
						width: ( 35 / 90 ) * thickness * opticThickness
						# angle: 90 + serifRotate * ( 10 ) - 10 + 'deg'
						angle: anchors[1].angleBottom + Math.PI / 2 - Math.PI
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x + ( (contours[0].nodes[2].x + ( ( 82 / 90 ) * thickness * 0.75 * Math.cos( - 150 * Math.PI / 180 ) )) - contours[0].nodes[0].x ) * 0.6
					y: - overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 25 / 90 ) * thickness * opticThickness
						angle: 90 + 'deg'
						distr: 0
					})
				2:
					x: contours[0].nodes[0].expandedTo[0].x + 200 * width + 220 - (13)
					y: contours[0].nodes[1].expandedTo[0].y + ( contours[0].nodes[3].expandedTo[0].y - contours[0].nodes[1].expandedTo[0].y ) * 0.47
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 82 / 90 ) * thickness * opticThickness
						angle: - 150 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[0].nodes[0].x + ( contours[0].nodes[6].x - contours[0].nodes[0].x ) * 0.55
					y: contours[0].nodes[1].y + ( contours[0].nodes[5].y - contours[0].nodes[1].y ) * 0.5
					dirOut: Math.min(
						Utils.lineAngle( contours[0].nodes[2].expandedTo[1].point, contours[0].nodes[4].expandedTo[1].point ) + Math.PI / 7,
						Math.PI
					)
					type: 'smooth'
					expand: Object({
						width: ( ( 90 + Math.min(20, 20 * width) ) / 90 ) * thickness * opticThickness
						angle: Math.max(
							Math.PI / 4 + Math.PI,
							Utils.lineAngle( contours[0].nodes[6].expandedTo[1].point, contours[0].nodes[0].expandedTo[0].point )
						)
						distr: 0.5
					})
				4:
					x: contours[0].nodes[0].x + (16)
					y: contours[0].nodes[3].expandedTo[1].y + ( contours[0].nodes[5].expandedTo[1].y - contours[0].nodes[3].expandedTo[1].y ) * 0.5
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 80 / 90 ) * thickness * opticThickness
						angle: - 150  + 'deg'
						distr: 0.75
					})
				5:
					x: contours[0].nodes[4].expandedTo[0].x + ( contours[0].nodes[6].x - contours[0].nodes[4].expandedTo[0].x ) * 0.5 - (1)
					x: Math.max(
						(contours[0].nodes[4].x + ( 80 / 90 ) * thickness * 0.75 * Math.cos( 26 * Math.PI / 180 )) + ( contours[0].nodes[6].x - (contours[0].nodes[4].x + ( 80 / 90 ) * thickness * 0.75 * Math.cos( 26 * Math.PI / 180 )) ) * 0.45,
						(contours[0].nodes[4].x - ( 80 / 90 ) * thickness * 0.25 * Math.cos( 26 * Math.PI / 180 )) + ( contours[0].nodes[6].x - (contours[0].nodes[4].x - ( 80 / 90 ) * thickness * 0.25 * Math.cos( 26 * Math.PI / 180 )) ) * 0.45
					)
					y: capHeight + overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 25 / 90 ) * thickness * opticThickness
						angle: 180 - 100 + 'deg'
						distr: 1
					})
				6:
					x: contours[0].nodes[0].expandedTo[0].x + 200 * width + 180
					y: capHeight - 50 - (9)
					y: Math.min(
						capHeight - 50 - 60 * aperture * apertureTop + 60,
						contours[0].nodes[5].y - ( 25 / 90 ) * thickness * opticThickness
					)
					# dirIn: Math.min(
					# 	Utils.lineAngle( contours[0].nodes[5].expandedTo[1].point, contours[0].nodes[6].expandedTo[0].point ),
					# 	Math.PI * ( 160 ) / 180
					# )
					dirIn: Math.min(
						146,
						90 + 56 * width
					) + 'deg'
					dirIn: anchors[1].angleTop
					expand: Object({
						width: ( 35 / 90 ) * thickness * opticThickness
						angle: 180 - 90 + serifRotate * ( 10 ) - 10 + 'deg'
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
					rotationAngle: -15
					rotationCenter: contours[0].nodes[6].expandedTo[1].point
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
					rotationAngle: -15
					rotationCenter: contours[0].nodes[6].expandedTo[1].point
					down: true
					inverseOrder: true
		# 2:
		# 	base: ['serif-curve-inside-auto', 'none']
		# 	id: 'bottombottom'
		# 	parentAnchors:
		# 		0:
		# 			baseWidth: contours[0].nodes[0].expandedTo[0]
		# 			baseHeight: contours[0].nodes[0].expandedTo[0].point
		# 			noneAnchor: contours[0].nodes[0].expandedTo[0].point
		# 			opposite: contours[0].nodes[0].expandedTo[1].point
		# 			curveEnd: contours[0].nodes[1].expandedTo[0]
		# 			rotationAngle: -15
		# 			rotationCenter: contours[0].nodes[0].expandedTo[0].point
		# 			down: true
		# 			left: true
	# components:
	# 	0:
	# 		base: 'serif-c'
	# 		parentAnchors:
	# 			0:
	# 				x: anchors[0].baseSerifTop_.x
	# 				y: anchors[0].baseSerifTop_.y
	# 			1:
	# 				x: anchors[0].baseSerifBottom_.x
	# 				y: anchors[0].baseSerifBottom_.y
	# 			2:
	# 				left: false
	# 				directionX: -1
	# 				anchorLine: contours[0].nodes[0].expandedTo[1].x
	# 				rightWidth: 60
	# 				# leftWidth: 20
	# 				angleBottom: anchors[0].baseSerifTop_.normal
	# 				angleTop: anchors[0].baseSerifBottom_.normal
	# 				# maxWidthTop: capHeight + overshoot
	# 				serifMedianRight: 10 * serifMedian
	# 				# serifMedianLeft: 5
	# 				baseRight: contours[0].nodes[0].expandedTo[0].point
	# 				baseLeft: contours[0].nodes[0].expandedTo[0].point
	# 				oncurveSerifTopHeight: Utils.pointOnCurve( contours[0].nodes[1].expandedTo[1], contours[0].nodes[0].expandedTo[0], serifHeight, true, 100 )
	# 				oncurveSerifBottomHeight: Utils.pointOnCurve( contours[0].nodes[1].expandedTo[0], contours[0].nodes[0].expandedTo[1], serifHeight, false, 100 )
	# 				topAngle: contours[0].nodes[0].expandedTo[0].dirIn
	# 				bottomAngle: contours[0].nodes[0].expandedTo[1].dirOut
	# 				serifTransformOrigin: Array( contours[0].nodes[0].expandedTo[1].x, contours[0].nodes[0].expandedTo[1].y )
	# 				serifTransform: serifRotate * ( -18 ) + 18
	# 		parentParameters:
	# 			serifHeight: serifHeight + Math.sqrt( serifHeight * 5 )
	# 		transformOrigin: Array( contours[0].nodes[0].expandedTo[1].x, contours[0].nodes[0].expandedTo[1].y )
	# 		transforms: Array(
	# 			[ 'skewX', serifRotate * (-18) + 18 + 'deg' ]
	# 		)
	# 	1:
	# 		base: 'serif-c'
	# 		parentAnchors:
	# 			0:
	# 				x: anchors[0].baseSerifTop.x
	# 				y: anchors[0].baseSerifTop.y
	# 			1:
	# 				x: anchors[0].baseSerifBottom.x
	# 				y: anchors[0].baseSerifBottom.y
	# 			2:
	# 				right: false
	# 				leftWidth: 80
	# 				angleTop: anchors[0].baseSerifBottom.normal
	# 				angleBottom: anchors[0].baseSerifTop.normal
	# 				serifMedianLeft: 10 * serifMedian
	# 				baseRight: contours[0].nodes[6].expandedTo[1].point
	# 				baseLeft: Utils.pointOnCurve( contours[0].nodes[5].expandedTo[1], contours[0].nodes[6].expandedTo[1], 1, true, 1 )
	# 				oncurveSerifTopHeight: Utils.pointOnCurve( contours[0].nodes[6].expandedTo[0], contours[0].nodes[5].expandedTo[0], serifHeight, true, 100 )
	# 				oncurveSerifBottomHeight: Utils.pointOnCurve( contours[0].nodes[5].expandedTo[1], contours[0].nodes[6].expandedTo[1], serifHeight, true, 100 )
	# 				bottomAngle: contours[0].nodes[6].expandedTo[1].dirOut
	# 				topAngle: contours[0].nodes[6].expandedTo[0].dirIn
	# 				serifTransformOrigin: Array( contours[0].nodes[6].expandedTo[0].x, contours[0].nodes[6].expandedTo[0].y )
	# 				serifTransform: serifRotate * ( -10 ) + 10
	# 		parentParameters:
	# 			serifHeight: serifHeight + Math.sqrt( serifHeight * 5 )
	# 		transformOrigin: Array( contours[0].nodes[6].expandedTo[1].x, contours[0].nodes[6].expandedTo[1].y )
	# 		transforms: Array(
	# 			[ 'skewX', serifRotate * ( -10 ) + 10 + 'deg' ]
	# 		)
	# 	# 1:
	# 	# 	base: 'serif-c-left'
	# 	# 	parentAnchors:
	# 	# 		0:
	# 	# 			x: anchors[0].baseSerifTop.x
	# 	# 			y: anchors[0].baseSerifTop.y
	# 	# 			normal: anchors[0].baseSerifTop.normal
	# 	# 		1:
	# 	# 			baseRight: Utils.pointOnCurve( contours[0].nodes[6].expandedTo[1], contours[0].nodes[5].expandedTo[1], 0, false, 1 )
	# 	# 		2:
	# 	# 			baseLeft: Utils.pointOnCurve( contours[0].nodes[5].expandedTo[0], contours[0].nodes[6].expandedTo[0], 1, true, 1 )
	# 	# 		3:
	# 	# 			x: anchors[0].baseSerifBottom.x
	# 	# 			y: anchors[0].baseSerifBottom.y
	# 	# 			normal: anchors[0].baseSerifBottom.normal
	# 	# 	parentParameters:
	# 	# 		tensionModifierLeft: 40
	# 	# 		serifTransform: serifRotate * ( -18 ) + 18
	# 	# 		# pointFourSmallestWidth: Utils.pointOnCurve( contours[0].nodes[5].expandedTo[0], contours[0].nodes[6].expandedTo[0], serifHeight / 2 / Math.sin( anchors[0].baseSerifBottom.normal ), true, 10 )
	# 	# 	transformOrigin: contours[0].nodes[6].point
	# 	# 	transforms: Array(
	# 	# 		[ 'skewX', serifRotate * (-18) + 18 + 'deg' ]
	# 	# 	)
