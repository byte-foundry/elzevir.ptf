exports.glyphs['C_cap'] =
	unicode: 'C'
	glyphName: 'C'
	characterName: 'LATIN CAPITAL LETTER C'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
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
		2:
			x: contours[0].nodes[3].expandedTo[0].x
			y: contours[0].nodes[3].expandedTo[0].y + ( 4 / 90 ) * thickness * contrast
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
					dirOut: Math.PI
					typeIn: 'smooth'
					expand:
						width: ( 25 / 90 ) * thickness * opticThickness
						angle:( - 90 ) / 180 * Math.PI
						distr: 0
				2:
					x: spacingLeft + (27)
					y: ( 330 / 660 ) * capHeight
					dirOut:( - 90 ) / 180 * Math.PI
					typeIn: 'smooth'
					expand:
						width: ( 110 / 90 ) * thickness * opticThickness
						angle: 0
						distr: 0.25
				3:
					x: contours[0].nodes[1].x
					y: - overshoot
					dirOut: 0
					typeIn: 'smooth'
					expand:
						width: ( 25 / 90 ) * thickness * opticThickness
						angle: Math.PI / 2
						distr: 0
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
					expand:
						width: ( ( 25 / 90 ) * thickness + ( 10 / 90 ) * Math.sqrt( thickness ) ) * opticThickness
						angle: anchors[1].angleBottom + Math.PI / 2
						distr: 0.25
	components:
		0:
			base: ['none', 'serif-curve-inside-auto']
			id: 'bottomtop'
			parentAnchors:
				0:
					baseDir: contours[0].nodes[4].dirIn
					baseWidth: contours[0].nodes[4].expandedTo[0]
					baseHeight: contours[0].nodes[4].expandedTo[0]
					noneAnchor: contours[0].nodes[4].expandedTo[0]
					opposite: contours[0].nodes[4].expandedTo[1]
					curveEnd: contours[0].nodes[3].expandedTo[0]
					rotationAngle: -15
					rotationCenter: contours[0].nodes[4].expandedTo[0]
					down: true
					inverseOrder: true
			parameters:
				serifRotate: serifRotate - 1
		1:
			base: ['serif-curve-inside-auto', 'none']
			id: 'bottombottom'
			parentAnchors:
				0:
					baseDir: contours[0].nodes[4].dirIn
					baseWidth: contours[0].nodes[4].expandedTo[1]
					baseHeight: contours[0].nodes[4].expandedTo[0]
					noneAnchor: contours[0].nodes[4].expandedTo[1]
					opposite: contours[0].nodes[4].expandedTo[0]
					curveEnd: contours[0].nodes[3].expandedTo[1]
					rotationAngle: -15
					rotationCenter: contours[0].nodes[4].expandedTo[0]
			parameters:
				serifRotate: serifRotate - 1
				serifWidth: Math.min( ( 125 / 75 ) * serifWidth, serifWidth + 50 )
				serifHeight: Math.min( ( 65 / 15 ) * serifHeight, serifHeight + 50 )
				serifMedian: Math.max( 0.2 * serifMedian, serifMedian - 0.8 )
				serifCurve: Math.min( ( 160 / 65 ) * serifCurve, serifCurve + 95 )
		2:
			base: ['serif-curve-inside-auto', 'none']
			id: 'topbottom'
			class: 'topInsideSerif'
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
		3:
			base: ['none', 'serif-curve-inside-auto']
			id: 'toptop'
			class: 'topOutsideSerif'
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
