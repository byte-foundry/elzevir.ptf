# TODO: winding rules
exports.glyphs['d'] =
	unicode: 'd'
	glyphName: 'd'
	characterName: 'LATIN SMALL LETTER D'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 55 + ( (23) / 90 ) * thickness
		spacingRight: 50 * spacing + 110
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: contours[1].nodes[0].expandedTo[1].x + 50
			y: ascenderHeight + diacriticHeight
		1:
			angleTop: Math.max(
				0,
				65 - 45 * aperture * apertureTop
			) * Math.PI / 180
			angleBottom: Math.min(
				180,
				90 + 45 * aperture * apertureBottom
			) * Math.PI / 180
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[0].expandedTo[0].x + ( 5 / 90 ) * thickness
					y: Math.max(
						0 + 10 * width + Math.min(
							55 + 100 * aperture * apertureBottom - 100,
							Math.max(
								55,
								( 55 / 90 ) * thickness + 100 * aperture * apertureBottom - 100
							)
						) - (0),
						Math.max(
							contours[0].nodes[1].expandedTo[1].y + 20,
							55
						)
					)
					type: 'smooth'
					dirOut: Math.max(
						anchors[1].angleBottom + ( Math.PI / 2 ),
						Math.PI * 2 + Utils.lineAngle( contours[0].nodes[0].expandedTo[0].point, contours[0].nodes[1].expandedTo[0].point )
					)
					expand: Object({
						width: ( 10 / 90 ) * thickness
						angle: anchors[1].angleBottom
						distr: 1
					})
				1:
					x: contours[0].nodes[2].expandedTo[0].x + ( contours[0].nodes[4].expandedTo[0].x - contours[0].nodes[2].expandedTo[0].x ) * 0.5
					y: - overshoot
					dirIn: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 74 / 90 ) * thickness
						angle: 48 + 'deg'
						distr: 0
					})
				2:
					x: spacingLeft
					y: ( 230 / 500 ) * xHeight
					dirIn: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 100 / 90 ) * thickness
						angle: 20 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[0].nodes[2].expandedTo[1].x + ( contours[0].nodes[4].expandedTo[1].x - contours[0].nodes[2].expandedTo[1].x ) * 0.5
					y: xHeight + overshoot
					dirIn: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 25 / 90 ) * thickness
						angle: - 100 + 'deg'
						distr: 0
					})
				4:
					x: contours[1].nodes[0].expandedTo[0].x + ( 30 / 90 ) * thickness
					y: Math.min(
						xHeight - 35 - 10 * width - Math.max(
							55 + 100 * aperture * apertureTop - 100,
							Math.min(
								55,
								( 55 / 90 ) * thickness + 100 * aperture * apertureTop - 100
							)
						),
						Math.min(
							(contours[1].nodes[1].y - Math.sin( 80 * Math.PI / 180 ) * ( 25 / 90 ) * thickness) - 15,
							xHeight - 20
						)
					)
					tensionIn: 0.8 + 0.1 * aperture * apertureTop
					dirIn: Math.max(
						anchors[1].angleTop + Math.PI / 2 + Math.PI,
						Utils.lineAngle( contours[0].nodes[3].expandedTo[0].point, contours[0].nodes[4].expandedTo[0].point )
					)
					expand: Object({
						width: ( 25 / 90 ) * thickness
						angle: anchors[1].angleTop + Math.PI
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Math.max(
						contours[0].nodes[2].expandedTo[0].x + 200 * width + 240 - (22),
						contours[0].nodes[2].expandedTo[1].x + 0.75 * thickness + 10
					)
					y: Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.75
					})
				1:
					x: contours[1].nodes[0].x
					y: ascenderHeight - serifHeight - serifCurve * spurHeight
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.75
					})
	components:
		0:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[1].nodes[0].expandedTo[1].x
					y: contours[1].nodes[0].y
				1:
					x: contours[1].nodes[0].expandedTo[0].x
					y: contours[1].nodes[0].y
				2:
					anchorLine: - overshoot
					rightWidth: - 12
					left: false
					attaque: true
					# serifAperture: true
					attaqueAngle: 6
			parentParameters:
				serifMedian: 0.77 * serifMedian
		1:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[1].nodes[1].expandedTo[1].x
					y: contours[1].nodes[1].y
				1:
					x: contours[1].nodes[1].expandedTo[0].x
					y: contours[1].nodes[1].y
				2:
					anchorLine: ascenderHeight
					right: false
					attaque: true
					attaqueAngle: 17
					directionY: -1
					leftWidth: - 12
			parentParameters:
				serifHeight: serifHeight + ( 22 * (- ( 1 / (15 + serifHeight) - 1 ) ) ) * spurHeight
				serifMedian: 0.266 * serifMedian
