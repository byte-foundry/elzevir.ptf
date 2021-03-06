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
			parentParameters:
				serifRotate: serifRotate - 1
				serifWidth: Math.min( ( 125 / 75 ) * serifWidth, serifWidth + 50 )
				serifHeight: Math.min( ( 65 / 15 ) * serifHeight, serifHeight + 50 )
				serifMedian: Math.max( 0.2 * serifMedian, serifMedian - 0.8 )
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
				serifWidth: Math.min( ( 125 / 75 ) * serifWidth, serifWidth + 50 )
				serifHeight: Math.min( ( 65 / 15 ) * serifHeight, serifHeight + 50 )
				serifMedian: Math.max( 0.2 * serifMedian, serifMedian - 0.8 )
				serifCurve: Math.min( ( 120 / 65 ) * serifCurve, serifCurve + 55 )
