exports.glyphs['G_cap'] =
	unicode: 'G'
	glyphName: 'G'
	characterName: 'LATIN CAPITAL LETTER G'
	ot:
		advanceWidth: contours[0].nodes[4].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 50 + (0)
		spacingRight: 50 * spacing + 90 + ( 80 / 75 ) * serifWidth
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
		1:
			angleTop: Math.max(
				90,
				Math.min(
					200 - 50 * aperture * apertureTop,
					170
				)
			) * Math.PI / 180
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Math.max(
						contours[0].nodes[2].expandedTo[1].x + 265 + 200 * width,
						contours[0].nodes[2].expandedTo[0].x + 375 + 200 * width
					)
					y: Math.min(
						Math.max(
							capHeight - 60 - 60 * aperture * apertureTop + 60,
							contours[0].nodes[2].y + serifWidth
						),
						contours[0].nodes[1].y - ( 25 / 90 ) * thickness * opticThickness
					)
					dirOut: anchors[1].angleTop
					expand:
						width: ( ( 25 / 90 ) * thickness + ( 10 / 90 ) * Math.sqrt( thickness ) ) * opticThickness
						angle: anchors[1].angleTop + Math.PI / 2
						distr: 0.25
				1:
					x: Math.max(
						contours[0].nodes[2].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[0].x - contours[0].nodes[2].expandedTo[0].x ) * 0.56 + (2),
						contours[0].nodes[2].expandedTo[1].x + ( contours[0].nodes[0].expandedTo[1].x - contours[0].nodes[2].expandedTo[1].x ) * 0.5
					)
					y: capHeight + overshoot
					dirOut: 180 + 'deg'
					typeIn: 'smooth'
					expand:
						width: ( 25 / 90 ) * thickness * opticThickness
						angle: - 90 + 'deg'
						distr: 0
				2:
					x: spacingLeft + (27)
					y: ( 330 / 660 ) * capHeight
					dirOut: - 90 + 'deg'
					typeIn: 'smooth'
					expand:
						width: ( 110 / 90 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
				3:
					x: contours[0].nodes[1].x
					y: - overshoot
					dirOut: 0 + 'deg'
					typeIn: 'smooth'
					expand:
						width: ( 25 / 90 ) * thickness * opticThickness
						angle: 90 + 'deg'
						distr: 0
				4:
					x: contours[0].nodes[0].x + 5
					y: 60
					dirIn: - 150 + 'deg'
					expand:
						width: ( ( 25 / 90 ) * thickness + ( 10 / 90 ) * Math.sqrt( thickness ) ) * opticThickness
						angle: 125 + 'deg'
						distr: 0.25
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[4].expandedTo[0].x
					y: ( 310 / 660 ) * capHeight - Math.max( 0, serifHeight * serifArc )
					expand:
						width: ( 90 / 90 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 1
				1:
					expandedTo:
						[
							{
								y: Utils.onLine({
									x: contours[1].nodes[0].expandedTo[0].x
									on: [ contours[0].nodes[4].expandedTo[0], contours[0].nodes[3].expandedTo[0] ]
								})
								x: contours[1].nodes[0].expandedTo[0].x
								typeOut: 'line'
							}
							{
								x: contours[0].nodes[4].expandedTo[0].x
								y: contours[0].nodes[4].expandedTo[0].y
								typeIn: 'line'
							}
						]
	components:
		0:
			base: ['serif-curve-inside-auto', 'none']
			id: 'topbottom'
			parentAnchors:
				0:
					baseDir: contours[0].nodes[0].dirOut
					baseWidth: contours[0].nodes[0].expandedTo[1]
					baseHeight: contours[0].nodes[0].expandedTo[0]
					noneAnchor: contours[0].nodes[0].expandedTo[1]
					opposite: contours[0].nodes[0].expandedTo[0]
					curveEnd: contours[0].nodes[1].expandedTo[1]
					rotationAngle: 15
					rotationCenter: contours[0].nodes[0].expandedTo[0]
					down: true
					inverseOrder: true
			parameters:
				serifRotate: serifRotate - 1
				serifWidth: Math.min( ( 125 / 75 ) * serifWidth, serifWidth + 50 )
				serifHeight: Math.min( ( 65 / 15 ) * serifHeight, serifHeight + 50 )
				serifMedian: Math.max( 0.2 * serifMedian, serifMedian - 0.8 )
				serifCurve: Math.min( ( 120 / 65 ) * serifCurve, serifCurve + 55 )
		1:
			base: ['none', 'serif-curve-inside-auto']
			id: 'toptop'
			parentAnchors:
				0:
					baseDir: contours[0].nodes[0].dirOut
					baseWidth: contours[0].nodes[0].expandedTo[0]
					baseHeight: contours[0].nodes[0].expandedTo[0]
					noneAnchor: contours[0].nodes[0].expandedTo[0]
					opposite: contours[0].nodes[0].expandedTo[1]
					curveEnd: contours[0].nodes[1].expandedTo[0]
					rotationAngle: 15
					rotationCenter: contours[0].nodes[0].expandedTo[0]
			parameters:
				serifRotate: serifRotate - 1

		2:
			base: ['serif-vertical', 'none']
			id: 'middleleft'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[0]
					noneAnchor: contours[1].nodes[0].expandedTo[0]
					opposite: contours[1].nodes[0].expandedTo[1]
					reversed: true
			transformOrigin: contours[1].nodes[0]
			transforms: Array(
				[ 'scaleY', -1 ]
			)
		3:
			base: ['serif-vertical', 'none']
			id: 'middleright'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[1]
					noneAnchor: contours[1].nodes[0].expandedTo[1]
					opposite: contours[1].nodes[0].expandedTo[0]
			transformOrigin: contours[1].nodes[0].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
