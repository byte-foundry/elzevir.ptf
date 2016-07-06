exports.glyphs['q'] =
	unicode: 'q'
	glyphName: 'q'
	characterName: 'LATIN SMALL LETTER Q'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 55 * spacing
		spacingRight: 120 * spacing + ( serifWidth - 75 )
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			angle: Math.min(
				180,
				90 + 45 * aperture * apertureBottom
			) * Math.PI / 180
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[0].expandedTo[0].x + (10/90) * thickness
					y: Math.max(
						20 + 10 * width + Math.min(
							35 + 100 * aperture * apertureBottom - 100,
							Math.max(
								35,
								( 35 / 90 ) * thickness + 100 * aperture * apertureBottom - 100
							)
						) - (0),
						Math.max(
							contours[0].nodes[1].expandedTo[1].y + 20,
							65
						)
					)
					dirOut: Math.max(
						anchors[0].angle + ( Math.PI / 2 ),
						Math.PI * 2 + Utils.lineAngle( contours[0].nodes[0].expandedTo[0].point, contours[0].nodes[1].expandedTo[0].point )
					)
					expand: Object({
						width: ( 12 / 90 ) * thickness
						angle: anchors[0].angle
						distr: 0.25
					})
				1:
					x: contours[0].nodes[2].expandedTo[0].x + ( contours[0].nodes[4].expandedTo[0].x - contours[0].nodes[2].expandedTo[0].x ) * 0.5
					y: - overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 74 / 90 ) * thickness
						angle: 48 + 'deg'
						distr: 0
					})
				2:
					x: spacingLeft + (23)
					y: ( 230 / 500 ) * xHeight
					dirOut: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 100 / 90 ) * thickness
						angle: 20 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[0].nodes[2].expandedTo[0].x + ( contours[1].nodes[1].expandedTo[1].x - contours[0].nodes[2].expandedTo[0].x ) * 0.53
					y: xHeight + overshoot
					dirOut: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 25 / 90 ) * thickness
						angle: - 90 + 'deg'
						distr: 0
					})
				4:
					x: contours[1].nodes[1].expandedTo[0].x
					y: contours[1].nodes[1].expandedTo[0].y
					# dirOut: 110 + 'deg'
					expand: Object({
						######
						# width: ( 35 / 90 ) * thickness
						######
						width: ( 15 / 90 ) * thickness
						angle: 180 + 'deg'
						distr: 1
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 295 + 200 * width - (23)
					y: descender + serifHeight + serifCurve
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.75
					})
				1:
					x: contours[1].nodes[0].x
					y: xHeight - ( ( 100 + ( 60 / 90 ) * thickness ) / 500 ) * xHeight - 50 * aperture * apertureTop + 50
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.75
					})
				2:
					x: contours[1].nodes[1].expandedTo[1].x
					y: xHeight
					expand: Object({
						width: ( 10 / 90 ) * thickness
						angle: 0 + 'deg'
						distr: 1
					})
		2:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[3].expandedTo[0].x
					y: contours[0].nodes[3].expandedTo[0].y
					tensionOut: 1.35
					dirOut: 0 + 'deg'
				1:
					x: contours[0].nodes[4].expandedTo[0].x
					x: Math.max(
						contours[0].nodes[4].expandedTo[1].x + ( contours[1].nodes[2].expandedTo[0].x - contours[0].nodes[4].expandedTo[1].x ) * Math.min( 0.3, ( 0.3 / 90 ) * thickness ),
						contours[0].nodes[4].expandedTo[0].x
					)
					y: contours[1].nodes[2].expandedTo[0].y - ( contours[1].nodes[2].expandedTo[0].y - contours[0].nodes[4].expandedTo[0].y ) * 0.18
					dirOut: 0 + 'deg'
					type: 'smooth'
				2:
					x: contours[1].nodes[2].expandedTo[0].x
					y: contours[1].nodes[2].expandedTo[0].y
					dirIn: Utils.lineAngle( contours[1].nodes[2].expandedTo[0].point, contours[1].nodes[1].expandedTo[0].point )
					typeOut: 'line'
				3:
					x: contours[0].nodes[4].x
					y: contours[0].nodes[4].y
					dirOut: 90 + 'deg'
				4:
					x: contours[0].nodes[3].x
					y: contours[0].nodes[3].y
					typeOut: 'line'
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
					anchorLine: descender
