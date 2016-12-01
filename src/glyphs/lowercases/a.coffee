exports.glyphs['a'] =
	unicode: 'a'
	glyphName: 'a'
	characterName: 'LATIN SMALL LETTER A'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 35
		spacingRight: 50 * spacing + 22
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: contours[0].nodes[5].expandedTo[0].x + ( contours[0].nodes[3].expandedTo[0].x - contours[0].nodes[5].expandedTo[0].x ) * 0.5
			y: xHeight + diacriticHeight
		1:
			x: anchors[2].ogonek.x
			y: anchors[2].ogonek.y
			normal: anchors[2].ogonek.normal
			middle: contours[0].nodes[1].expandedTo[0].x
		2:
			ogonek: Utils.pointOnCurve( contours[0].nodes[1].expandedTo[1], contours[0].nodes[0].expandedTo[1], 100 * width + 75 - ( 75 / 115 ) * thickness * contrast, false, 10 )
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[2].expandedTo[0].x + 98 - (3)
					y: Math.max(
						37,
						( ( ( 75 / 90 ) * thickness) * Math.sin( 35 * (Math.PI / 180) ) ) + 2
					) - (5)
					dirOut: Math.min(
						- 120,
						Math.max(
							- 135,
							- 175 + ( 40 / 90 ) * thickness
						)
					) + 'deg'
					expand: Object({
						width: ( 16 / 90 ) * thickness
						angle: 180 + 130 + 'deg'
						distr: 0.75
					})
				1:
					x: contours[0].nodes[2].expandedTo[1].x + ( contours[0].nodes[0].expandedTo[0].x - contours[0].nodes[2].expandedTo[1].x ) * 0.4
					y: - overshoot * 2
					dirIn: 180 + 'deg'
					tensionIn: 1.3
					tensionOut: 1.3
					type: 'smooth'
					expand: Object({
						width: ( 75 / 90 ) * thickness
						angle: 180 + 35 + 'deg'
						distr: 1
					})
				2:
					x: contours[0].nodes[3].x
					y: 40 + ( 50 / 90 ) * thickness + (2)
					dirIn: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 95.5 / 90 ) * thickness
						angle: - 174 + 'deg'
						distr: 0.5
					})
				3:
					x: Math.max(
						contours[1].nodes[2].expandedTo[0].x + 200 * width + 160 - (52),
						contours[1].nodes[2].expandedTo[1].x + 0.5 * ( 97 / 90 ) * thickness + 10
					)
					# x: contours[1].nodes[2].expandedTo[0].x + 200 * width + 160 - (26)
					y: xHeight - 135
					dirOut: 90 + 'deg'
					typeIn: 'line'
					expand: Object({
						width: ( 97 / 90 ) * thickness
						angle: 168 + 'deg'
						distr: 0.5
					})
				4:
					x: contours[0].nodes[5].expandedTo[0].x + ( contours[0].nodes[3].expandedTo[0].x - contours[0].nodes[5].expandedTo[0].x ) * 0.6
					y: xHeight + overshoot
					type: 'smooth'
					dirOut: 180 + 'deg'
					expand: Object({
						width: ( 32 / 90 ) * thickness
						angle: - 129 - 5 * width + 5 + 'deg'
						distr: 0
					})
				5:
					# x: Math.min(
					# 	contours[1].nodes[2].expandedTo[1].x + 10 * aperture,
					# 	contours[1].nodes[2].expandedTo[0].x + 20 + (22)
					# )
					x: contours[1].nodes[2].expandedTo[0].x + 10 + 10 * aperture * apertureTop + (22)
					y: Math.max(
						Math.min(
							xHeight - ( 80 + ( 25 / 90 ) * thickness ) * aperture * apertureTop,
							contours[0].nodes[4].y - ( Math.sin( (180 - 129 - 5 * width + 5) * (Math.PI / 180) ) * ( 32 / 90 ) * thickness )
						),
						contours[1].nodes[1].expandedTo[0].y + 15
					)
					dirIn: Math.min(
						79 * aperture * apertureTop,
						110
					) + 'deg'
					# tensionIn: 0.5
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[3].x
					# y: contours[1].nodes[1].expandedTo[0].y +
					# 	Math.tan( - 166 * (Math.PI / 180) * ( contours[0].nodes[3].expandedTo[1].x - contours[1].nodes[2].expandedTo[1].x ) ) -
					# 	( 20 / 90 ) * thickness + 20
					y: ( ( 240 + ( 25 / 90 ) * thickness ) / 500 ) * xHeight * crossbar
					typeOut: 'line'
					expand: Object({
						width: ( 20 / 90 ) * thickness
						angle: - 90 - 10 * width + 10 + 'deg'
						distr: 0
					})
				1:
					x: contours[1].nodes[2].expandedTo[1].x + ( contours[0].nodes[3].expandedTo[1].x - contours[1].nodes[2].expandedTo[1].x ) * 0.5
					y: ( ( 220 + ( 25 / 90 ) * thickness ) / 500 ) * xHeight
					dirOut: - 166 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 28 / 90 ) * thickness
						angle: - 90 - 10 * width + 10 + 'deg'
						distr: 0
					})
				2:
					x: spacingLeft + (93/90) * thickness * 0.25
					y: ( 105 / 500 ) * xHeight
					y: ( ( ( 220 + ( 25 / 90 ) * thickness ) / 500 ) * xHeight ) * 0.45
					dirOut: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 93 / 90 ) * thickness
						angle: 16 + 'deg'
						distr: 0.25
					})
				3:
					x: Math.max(
						contours[1].nodes[2].expandedTo[1].x + ( contours[0].nodes[4].expandedTo[1].x - contours[1].nodes[2].expandedTo[1].x ) * 0.4,
						contours[1].nodes[2].expandedTo[1].x + ( contours[0].nodes[5].expandedTo[1].x - contours[1].nodes[2].expandedTo[1].x ) * 0.15
					)
					x: contours[1].nodes[2].expandedTo[0].x + ( contours[0].nodes[3].expandedTo[1].x - contours[1].nodes[2].expandedTo[0].x ) * ( 0.35 + ( 0.1 / 90 ) * thickness )
					y: - overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 75 / 90 ) * thickness
						angle: 53 - 7 * width + 7 + 'deg'
						distr: 0
					})
				4:
					x: contours[1].nodes[0].x
					y: ( 75 / 500 ) * xHeight + (4)
					y: Math.max(
						90 + ( 5 / 90 ) * thickness + (4),
						contours[1].nodes[3].expandedTo[1].y + 30
					)
					dirIn: Math.min(
						- 90,
						Math.max(
							- 128,
							- 170 + ( 42 / 90 ) * thickness
						)
					) + 'deg'
					expand: Object({
						width: ( 15 / 90 ) * thickness
						angle: 90 + 'deg'
						distr: 0.25
					})
