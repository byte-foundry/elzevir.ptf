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
		spacingLeft: 50 * spacing + 50
		spacingRight: 50 * spacing + 60
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: contours[0].nodes[1].expandedTo[0].x
			y: capHeight + diacriticHeight
			baseSerifTop: Utils.pointOnCurve( contours[0].nodes[0].expandedTo[0], contours[0].nodes[1].expandedTo[0], serifHeight + serifCurve + Math.sqrt( serifCurve * 20 ), false )
			baseSerifBottom: Utils.pointOnCurve( contours[0].nodes[1].expandedTo[1], contours[0].nodes[0].expandedTo[1], serifHeight + serifCurve + Math.sqrt( serifCurve * 80 ), true )
			baseSerifTop_: Utils.pointOnCurve( contours[0].nodes[4].expandedTo[1], contours[0].nodes[3].expandedTo[1], serifHeight + serifCurve + Math.sqrt( serifCurve * 80 ), false )
			baseSerifBottom_: Utils.pointOnCurve( contours[0].nodes[3].expandedTo[0], contours[0].nodes[4].expandedTo[0], serifHeight + serifCurve + Math.sqrt( serifCurve * 20 ), true )
		1:
			angleTop: Math.max(
				90,
				Math.min(
					200 - 50 * aperture * apertureTop,
					170
				)
			) * Math.PI / 180
			angleBottom: Math.PI + Math.min(
				- 90,
				Math.max(
					- 200 + 50 * aperture * apertureBottom,
					- 170
				)
			) * Math.PI / 180
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Math.max(
						contours[0].nodes[2].expandedTo[1].x + 285 + 200 * width,
						contours[0].nodes[2].expandedTo[0].x + 395 + 200 * width
					)
					y: Math.min(
						Math.max(
							capHeight - 60 - 60 * aperture * apertureTop + 60,
							contours[0].nodes[2].y + serifWidth
						),
						contours[0].nodes[1].y - ( 25 / 90 ) * thickness * opticThickness
					)
					dirOut: anchors[1].angleTop
					type: 'smooth'
					expand: Object({
						width: ( ( 25 / 90 ) * thickness + ( 10 / 90 ) * Math.sqrt( thickness ) ) * opticThickness
						angle: anchors[1].angleTop + Math.PI / 2
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
					y: Math.max(
						Math.min(
							60 + 60 * aperture * apertureBottom - 60,
							contours[0].nodes[2].y - serifWidth
						),
						contours[0].nodes[3].y + ( 25 / 90 ) * thickness * opticThickness
					)
					dirIn: anchors[1].angleBottom
					type: 'smooth'
					expand: Object({
						width: ( ( 25 / 90 ) * thickness + ( 10 / 90 ) * Math.sqrt( thickness ) ) * opticThickness
						angle: anchors[1].angleBottom + Math.PI / 2
						distr: 0.25
					})
	components:
		0:
			base: ['none', 'serif-curve-inside-auto']
			id: 'bottomtop'
			parentAnchors:
				0:
					baseWidth: contours[0].nodes[4].expandedTo[0]
					baseHeight: contours[0].nodes[4].expandedTo[0].point
					noneAnchor: contours[0].nodes[4].expandedTo[0].point
					opposite: contours[0].nodes[4].expandedTo[1].point
					curveEnd: contours[0].nodes[3].expandedTo[0]
					rotationAngle: -15
					rotationCenter: contours[0].nodes[4].expandedTo[0].point
					down: true
					inverseOrder: true
			parentParameters:
				serifRotate: serifRotate - 1
		1:
			base: ['serif-curve-inside-auto', 'none']
			id: 'bottombottom'
			parentAnchors:
				0:
					baseWidth: contours[0].nodes[4].expandedTo[1]
					baseHeight: contours[0].nodes[4].expandedTo[0].point
					noneAnchor: contours[0].nodes[4].expandedTo[1].point
					opposite: contours[0].nodes[4].expandedTo[0].point
					curveEnd: contours[0].nodes[3].expandedTo[1]
					rotationAngle: -15
					rotationCenter: contours[0].nodes[4].expandedTo[0].point
			parentParameters:
				serifRotate: serifRotate - 1
				serifWidth: Math.min( ( 125 / 75 ) * serifWidth, serifWidth + 50 )
				serifHeight: Math.min( ( 65 / 15 ) * serifHeight, serifHeight + 50 )
				serifMedian: Math.max( 0.2 * serifMedian, serifMedian - 0.8 )
				serifCurve: Math.min( ( 160 / 65 ) * serifCurve, serifCurve + 95 )
		2:
			base: ['serif-curve-inside-auto', 'none']
			id: 'topbottom'
			parentAnchors:
				0:
					baseWidth: contours[0].nodes[0].expandedTo[1]
					baseHeight: contours[0].nodes[0].expandedTo[0].point
					noneAnchor: contours[0].nodes[0].expandedTo[1].point
					opposite: contours[0].nodes[0].expandedTo[0].point
					curveEnd: contours[0].nodes[1].expandedTo[1]
					rotationAngle: 15
					rotationCenter: contours[0].nodes[0].expandedTo[0].point
					down: true
					inverseOrder: true
			parentParameters:
				serifRotate: serifRotate - 1
				serifWidth: Math.min( ( 125 / 75 ) * serifWidth, serifWidth + 50 )
				serifHeight: Math.min( ( 65 / 15 ) * serifHeight, serifHeight + 50 )
				serifMedian: Math.max( 0.2 * serifMedian, serifMedian - 0.8 )
				serifCurve: Math.min( ( 120 / 65 ) * serifCurve, serifCurve + 55 )
		3:
			base: ['none', 'serif-curve-inside-auto']
			id: 'toptop'
			parentAnchors:
				0:
					baseWidth: contours[0].nodes[0].expandedTo[0]
					baseHeight: contours[0].nodes[0].expandedTo[0].point
					noneAnchor: contours[0].nodes[0].expandedTo[0].point
					opposite: contours[0].nodes[0].expandedTo[1].point
					curveEnd: contours[0].nodes[1].expandedTo[0]
					rotationAngle: 15
					rotationCenter: contours[0].nodes[0].expandedTo[0].point
			parentParameters:
				serifRotate: serifRotate - 1
