exports.glyphs['t'] =
	unicode: 't'
	glyphName: 't'
	characterName: 'LATIN SMALL LETTER T'
	ot:
		advanceWidth: contours[0].nodes[4].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 25 + (0)
		spacingRight: 50 * spacing + 20
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: contours[1].nodes[0].expandedTo[1].x + 50
			y: ascenderHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: Math.max(
						xHeight + ( 140 / 720 ) * ascenderHeight,
						xHeight + 50
					)
					typeOut: 'line'
					expand:
						width: ( 15 / 90 ) * thickness
						angle: 0 + 'deg'
						distr: 1
				1:
					x: contours[1].nodes[2].x + ( 20 + 50 * width ) + (22)
					y: xHeight - ( 35 / 90 ) * thickness
					typeOut: 'line'
					typeIn: 'line'
					expand:
						width: ( 90 / 90 ) * thickness
						angle: 0 + 'deg'
						distr: 0.25
				2:
					x: contours[0].nodes[1].x
					y: Math.max(
						( 115 / 500 ) * xHeight,
						( ( ( 60 / 90 ) * thickness ) * Math.sin( 42 * (Math.PI / 180) ) ) + 75
					) - (6)
					dirOut: - 90 + 'deg'
					typeIn: 'smooth'
					tensionOut: 1.3
					expand:
						width: ( 91 / 90 ) * thickness
						angle: - 10 + 'deg'
						distr: 0.25
				3:
					x: contours[0].nodes[2].expandedTo[0].x + ( contours[0].nodes[4].expandedTo[0].x - contours[0].nodes[2].expandedTo[0].x ) * 0.5 - (23)
					y: - overshoot
					dirOut: 0 + 'deg'
					typeIn: 'smooth'
					tensionIn: 1.3
					tensionOut: 1.3
					expand:
						width: ( 60 / 90 ) * thickness
						angle: 42 + 'deg'
						distr: 0
				4:
					x: Math.max(
						contours[0].nodes[1].expandedTo[1].x + 145,
						130 + 200 * width
					)
					y: Math.max(
						Math.max(
							( ( ( 60 / 90 ) * thickness ) * Math.sin( 42 * (Math.PI / 180) ) ) + 5,
							44
						),
						Math.min(
							( ( ( 60 / 90 ) * thickness ) * Math.sin( 42 * (Math.PI / 180) ) ) + 5 + (150 * aperture * apertureBottom - 150),
							( 300 / 500 ) * xHeight
						)
					) + (1)
					dirIn: contours[0].nodes[4].expand.angle + Math.PI / 2
					typeOut: 'smooth'
					expand:
						width: ( 10 / 90 ) * thickness
						angle: Math.min(
							Math.max(
								44 + 70 * aperture * apertureBottom,
								130
							),
							190
						) * Math.PI / 180
						distr: 0.25
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[4].x - 10
					y: xHeight
					typeOut: 'line'
					expand:
						width: ( 35 / 90 ) * thickness
						angle: - 90 + 'deg'
						distr: 0
				1:
					x: contours[0].nodes[1].expandedTo[1].x
					y: xHeight
					typeOut: 'line'
					typeIn: 'line'
					expand:
						width: ( 35 / 90 ) * thickness
						angle: - 90 + 'deg'
						distr: 0
				2:
					x: spacingLeft
					y: contours[1].nodes[1].expandedTo[1].y
					typeIn: 'line'
					expand:
						width: ( 10 / 90 ) * thickness
						angle: 180 + 90 + 'deg'
						distr: 1
		2:
			skeleton: false
			closed: true
			nodes:
				0:
					x: Utils.onLine({
						y: Math.min(
							contours[0].nodes[0].expandedTo[0].y,
							contours[1].nodes[1].expandedTo[0].y + ( 140 / 90 ) * thickness - 6
						),
						on: [ contours[0].nodes[0].expandedTo[0], contours[0].nodes[1].expandedTo[0] ]
					})
					y: Math.min(
						contours[0].nodes[0].expandedTo[0].y,
						contours[1].nodes[1].expandedTo[0].y + ( 140 / 90 ) * thickness - 6
					)
					dirOut: Utils.lineAngle({x: contours[0].nodes[0].expandedTo[0].x, y: contours[0].nodes[0].expandedTo[0].y}, {x: contours[0].nodes[1].expandedTo[0].x, y: contours[0].nodes[1].expandedTo[0].y})
					typeIn: 'line'
				1:
					x: contours[1].nodes[2].expandedTo[0].x
					y: contours[1].nodes[2].expandedTo[0].y
					dirIn: Utils.lineAngle({x: contours[1].nodes[2].expandedTo[0].x, y: contours[1].nodes[2].expandedTo[0].y}, {x: contours[1].nodes[1].expandedTo[0].x, y: contours[1].nodes[1].expandedTo[0].y})
					typeOut: 'line'
				2:
					x: contours[0].nodes[1].expandedTo[0].x
					y: contours[0].nodes[1].expandedTo[0].y
					typeIn: 'line'
					typeOut: 'line'
