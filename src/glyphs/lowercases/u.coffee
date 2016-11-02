exports.glyphs['u'] =
	unicode: 'u'
	glyphName: 'u'
	characterName: 'LATIN SMALL LETTER U'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 90 + ( (22) / 90 ) * thickness + ( serifWidth - 75 )
		spacingRight: 50 * spacing + 110 + ( serifWidth - 75 )
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: contours[0].nodes[0].expandedTo[0].x + ( contours[1].nodes[0].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
			y: xHeight + diacriticHeight
		1:
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
					x: spacingLeft
					y: xHeight - Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: 155 + (2)
					dirOut: - 90 + 'deg'
					expand: Object({
						width: ( 90 / 90 ) * thickness
						angle: 6 + 'deg'
						distr: 0.25
					})
				2:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[3].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) * 0.45
					y: - overshoot
					dirOut: 0 + 'deg'
					tensionIn: 1.1
					tensionOut: 1.2
					type: 'smooth'
					expand: Object({
						width: ( 92 / 90 ) * thickness
						angle: 40 + 'deg'
						distr: 0
					})
				3:
					x: contours[1].nodes[0].expandedTo[0].x + ( 10 / 90 ) * thickness
					y: 20 + 10 * width + Math.max(35, ( 35 / 90 ) * thickness )
					dirIn: - 180 + Math.max(
						28,
						Math.min(
							110,
							( 80 / 90 ) * thickness
						) - 51 * width
					) + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 10 / 90 ) * thickness
						angle: 90 + 'deg'
						distr: 0.25
					})
					y: Math.max(
						20 + 10 * width + Math.min(
							35 + 100 * aperture * apertureBottom - 100,
							Math.max(
								35,
								( 35 / 90 ) * thickness + 100 * aperture * apertureBottom - 100
							)
						) - (0),
						Math.max(
							contours[0].nodes[2].y + ((Math.sin( 40 / 180 * Math.PI )) * (( 92 / 90 ) * thickness)) + 20,
							65
						)
					)
					dirIn: Math.max(
						anchors[1].angleBottom - ( Math.PI / 2 ),
						Utils.lineAngle( contours[0].nodes[2].expandedTo[0].point, contours[0].nodes[3].expandedTo[0].point )
					)
					expand: Object({
						width: ( 10 / 90 ) * thickness
						angle: anchors[1].angleBottom
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 200 * width + 195 - (22),
						contours[0].nodes[0].expandedTo[1].x + 0.75 * thickness + 10
					)
					y: xHeight - Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.75
					})
				1:
					x: contours[1].nodes[0].x
					y: Math.max( 0, serifHeight * serifArc )
					dirOut: - 90 + 'deg'
					expand: Object({
						width: ( 90 / 90 ) * thickness
						angle: 0 + 'deg'
						distr: 0.75
					})
	components:
		0:
			base: ['serif-vertical', 'none']
			id: 'topleft'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0].point
					noneAnchor: contours[0].nodes[0].expandedTo[0].point
					opposite: contours[0].nodes[0].expandedTo[1].point
					reversed: true
			transformOrigin: contours[0].nodes[0].point
			transforms: Array(
				[ 'scaleY', -1 ]
			)
		1:
			base: ['serif-vertical', 'none']
			id: 'topright'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[0].point
					noneAnchor: contours[1].nodes[0].expandedTo[0].point
					opposite: contours[1].nodes[0].expandedTo[1].point
					reversed: true
			transformOrigin: contours[1].nodes[0].point
			transforms: Array(
				[ 'scaleY', -1 ]
			)
		2:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[1].nodes[1].expandedTo[1].x
					y: contours[1].nodes[1].y
				1:
					x: contours[1].nodes[1].expandedTo[0].x
					y: contours[1].nodes[1].y
				2:
					anchorLine: - overshoot
					rightWidth: - 12
					left: false
					attaque: true
					serifAperture: true
					attaqueAngle: 6
			parentParameters:
				serifMedian: 0.77 * serifMedian
