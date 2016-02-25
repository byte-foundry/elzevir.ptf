exports.glyphs['C_cap'] =
	unicode: 'C'
	glyphName: 'C'
	characterName: 'LATIN CAPITAL LETTER C'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + (0)
		spacingRight: 60 * spacing
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: 0
			y: 0
			baseSerifTop: Utils.pointOnCurve( contours[0].nodes[0].expandedTo[0], contours[0].nodes[1].expandedTo[0], serifHeight + serifCurve + Math.sqrt( serifCurve * 20 ), false )
			baseSerifBottom: Utils.pointOnCurve( contours[0].nodes[1].expandedTo[1], contours[0].nodes[0].expandedTo[1], serifHeight + serifCurve + Math.sqrt( serifCurve * 80 ), true )
			baseSerifTop_: Utils.pointOnCurve( contours[0].nodes[4].expandedTo[1], contours[0].nodes[3].expandedTo[1], serifHeight + serifCurve + Math.sqrt( serifCurve * 80 ), false )
			baseSerifBottom_: Utils.pointOnCurve( contours[0].nodes[3].expandedTo[0], contours[0].nodes[4].expandedTo[0], serifHeight + serifCurve + Math.sqrt( serifCurve * 20 ), true )
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[2].expandedTo[0].x + 395 + 200 * width
					y: capHeight - 60 - (12)
					dirOut: 150 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( ( 25 / 90 ) * thickness + ( 10 / 90 ) * Math.sqrt( thickness ) ) * opticThickness
						angle: - 125 + 'deg'
						distr: 0.25
					})
				1:
					x: Math.max(
						contours[0].nodes[2].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[0].x - contours[0].nodes[2].expandedTo[0].x ) * 0.56 + (2),
						contours[0].nodes[2].expandedTo[1].x + ( contours[0].nodes[0].expandedTo[1].x - contours[0].nodes[2].expandedTo[1].x ) * 0.5
					)
					y: capHeight + overshoot
					dirOut: 180 + 'deg'
					expand: Object({
						width: ( 25 / 90 ) * thickness * opticThickness
						angle: - 90 + 'deg'
						distr: 0
					})
				2:
					x: spacingLeft + (27)
					y: ( 330 / 660 ) * capHeight
					dirOut: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 110 / 90 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[0].nodes[1].x
					y: - overshoot
					dirOut: 0 + 'deg'
					expand: Object({
						width: ( 25 / 90 ) * thickness * opticThickness
						angle: 90 + 'deg'
						distr: 0
					})
				4:
					x: contours[0].nodes[0].x
					y: 60 + (12)
					dirIn: - 150 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( ( 25 / 90 ) * thickness + ( 10 / 90 ) * Math.sqrt( thickness ) ) * opticThickness
						angle: 125 + 'deg'
						distr: 0.25
					})
	components:
		0:
			base: 'serif-c'
			parentAnchors:
				0:
					x: anchors[0].baseSerifTop.x
					y: anchors[0].baseSerifTop.y
				1:
					x: anchors[0].baseSerifBottom.x
					y: anchors[0].baseSerifBottom.y
				2:
					right: false
					anchorLine: contours[0].nodes[0].expandedTo[0].x
					leftWidth: 30
					angleTop: anchors[0].baseSerifTop.normal
					angleBottom: anchors[0].baseSerifBottom.normal
					serifMedianLeft: 10 * serifMedian
					baseRight: contours[0].nodes[0].expandedTo[0].point
					baseLeft: contours[0].nodes[0].expandedTo[1].point
					oncurveSerifTopHeight: Utils.pointOnCurve( contours[0].nodes[0].expandedTo[0], contours[0].nodes[1].expandedTo[0], serifHeight, true, 100 )
					oncurveSerifBottomHeight: Utils.pointOnCurve( contours[0].nodes[0].expandedTo[1], contours[0].nodes[1].expandedTo[1], serifHeight, false, 100 )
					bottomAngle: contours[0].nodes[0].expandedTo[0].dirOut
					topAngle: contours[0].nodes[0].expandedTo[1].dirIn
					serifTransformOrigin: Array( contours[0].nodes[0].expandedTo[0].x, contours[0].nodes[0].expandedTo[0].y )
					serifTransform: - serifRotate * 15 + (15)
			parentParameters:
				serifHeight: serifHeight + Math.sqrt( serifHeight * 5 )
			transformOrigin: Array( contours[0].nodes[0].expandedTo[0].x, contours[0].nodes[0].expandedTo[0].y )
			transforms: Array(
				[ 'skewX', - serifRotate * 15 + (15) + 'deg' ]
			)
		1:
			base: 'serif-c'
			parentAnchors:
				0:
					x: anchors[0].baseSerifTop_.x
					y: anchors[0].baseSerifTop_.y
				1:
					x: anchors[0].baseSerifBottom_.x
					y: anchors[0].baseSerifBottom_.y
				2:
					left: false
					baseRight: Utils.pointOnCurve( contours[0].nodes[4].expandedTo[1], contours[0].nodes[3].expandedTo[1], 1, false, 1 )
					baseLeft: Utils.pointOnCurve( contours[0].nodes[3].expandedTo[0], contours[0].nodes[4].expandedTo[0], 1, true, 1 )
					angleBottom: anchors[0].baseSerifBottom_.normal
					angleTop: anchors[0].baseSerifTop_.normal
					rightWidth: 30
					serifMedianRight: 10 * serifMedian
					# serifMedianLeft: 8
					oncurveSerifBottomHeight: Utils.pointOnCurve( contours[0].nodes[4].expandedTo[1], contours[0].nodes[3].expandedTo[1], serifHeight, false, 100 )
					oncurveSerifTopHeight: Utils.pointOnCurve( contours[0].nodes[3].expandedTo[0], contours[0].nodes[4].expandedTo[0], serifHeight, true, 100 )
					topAngle: contours[0].nodes[4].expandedTo[0].dirOut
					bottomAngle: contours[0].nodes[4].expandedTo[1].dirIn
					serifTransformOrigin: Array( contours[0].nodes[4].expandedTo[0].x, contours[0].nodes[4].expandedTo[0].y )
					serifTransform: serifRotate * 15 - (15)
			parentParameters:
				serifHeight: serifHeight + Math.sqrt( serifHeight * 5 )
			transformOrigin: Array( contours[0].nodes[4].expandedTo[0].x, contours[0].nodes[4].expandedTo[0].y )
			transforms: Array(
				[ 'skewX', serifRotate * 15 - (15) + 'deg' ]
			)
