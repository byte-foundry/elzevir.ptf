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
		spacingLeft: 35 * spacing
		spacingRight: 22 * spacing
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: 0
			y: 0
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				5:
					x: Math.min(
						contours[1].nodes[2].expandedTo[1].x + 10,
						contours[1].nodes[2].expandedTo[0].x + 20 + (22)
					)
					y: xHeight - 80 - ( 25 / 90 ) * thickness
					dirIn: 79 + 'deg'
					# tensionIn: 0.5
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
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
				3:
					# x: 200 * width + 195 - (24)
					x: Math.max(
						contours[1].nodes[2].expandedTo[1].x + ( ( 97 / 90 ) * thickness ) * 0.25,
						200 * width + 100
					) + (24)
					y: xHeight - 135
					dirOut: 90 + 'deg'
					typeIn: 'line'
					expand: Object({
						width: ( 97 / 90 ) * thickness
						angle: 168 + 'deg'
						distr: 0.75
					})
				2:
					x: contours[0].nodes[3].x
					y: 40 + ( 50 / 90 ) * thickness + (2)
					dirIn: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 95.5 / 90 ) * thickness
						angle: - 174 + 'deg'
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
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[3].x
					# y: contours[1].nodes[1].expandedTo[0].y +
					# 	Math.tan( - 166 * (Math.PI / 180) * ( contours[0].nodes[3].expandedTo[1].x - contours[1].nodes[2].expandedTo[1].x ) ) -
					# 	( 20 / 90 ) * thickness + 20
					y: ( ( 240 + ( 25 / 90 ) * thickness ) / 500 ) * xHeight
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
					x: contours[0].nodes[3].x
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
