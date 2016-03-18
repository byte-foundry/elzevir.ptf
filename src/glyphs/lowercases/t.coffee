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
		spacingLeft: 25 * spacing + (0)
		spacingRight: 20 * spacing
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
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: Math.max(
						( 640 / 720 ) * ascenderHeight,
						xHeight + 50
					)
					typeOut: 'line'
					expand: Object({
						width: ( 15 / 90 ) * thickness
						angle: 0 + 'deg'
						distr: 1
					})
				1:
					x: contours[1].nodes[2].x + ( 20 + 50 * width ) + (22)
					y: xHeight - ( 35 / 90 ) * thickness
					typeOut: 'line'
					expand: Object({
						width: ( 90 / 90 ) * thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				2:
					x: contours[0].nodes[1].x
					y: Math.max(
						115,
						contours[0].nodes[4].expandedTo[1].y + 65
					) - (6)
					dirOut: - 90 + 'deg'
					type: 'smooth'
					tensionOut: 1.3
					expand: Object({
						width: ( 91 / 90 ) * thickness
						angle: - 10 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[0].nodes[2].expandedTo[0].x + ( contours[0].nodes[4].expandedTo[0].x - contours[0].nodes[2].expandedTo[0].x ) * 0.4 + (1)
					y: - overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					tensionIn: 1.3
					tensionOut: 1.3
					expand: Object({
						width: ( 60 / 90 ) * thickness
						angle: 42 + 'deg'
						distr: 0
					})
				4:
					x: Math.max(
						contours[0].nodes[1].expandedTo[1].x + 145,
						130 + 200 * width
					)
					y: Math.max(
						44,
						( ( ( 60 / 90 ) * thickness ) * Math.sin( 42 * (Math.PI / 180) ) ) + 5
					) + (1)
					dirIn: (- 150 + Math.max(
						30,
						( 30 / 90 ) * thickness
					) - 30 ) * Math.PI / 180 # + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 10 / 90 ) * thickness
						angle: contours[0].nodes[4].dirIn - Math.PI / 2 # 114 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[4].x - 10
					y: xHeight
					typeOut: 'line'
					expand: Object({
						width: ( 35 / 90 ) * thickness
						angle: - 90 + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[1].expandedTo[1].x
					y: xHeight
					typeOut: 'line'
					expand: Object({
						width: ( 35 / 90 ) * thickness
						angle: - 90 + 'deg'
						distr: 0
					})
				2:
					x: spacingLeft
					y: contours[1].nodes[1].expandedTo[1].y
					typeOut: 'line'
					expand: Object({
						width: ( 10 / 90 ) * thickness
						angle: 180 + 90 + 'deg'
						distr: 1
					})
		2:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[0].x
					y:
						if ( thickness < 50 )
						then contours[1].nodes[2].expandedTo[0].y
						else contours[0].nodes[0].expandedTo[0].y
					x: Utils.onLine({
						y: Math.min(
							contours[0].nodes[0].expandedTo[0].y,
							contours[1].nodes[1].expandedTo[0].y + ( 140 / 90 ) * thickness - 6
						),
						on: [ contours[0].nodes[0].expandedTo[0].point, contours[0].nodes[1].expandedTo[0].point ]
					})
					y: Math.min(
						contours[0].nodes[0].expandedTo[0].y,
						contours[1].nodes[1].expandedTo[0].y + ( 140 / 90 ) * thickness - 6
					)
					dirOut: Utils.lineAngle( contours[0].nodes[0].expandedTo[0].point, contours[0].nodes[1].expandedTo[0].point )
					# tensionOut:
					# 	if ( thickness < 40 )
					# 	then 1.6
					# 	else 1
				1:
					x: contours[1].nodes[2].expandedTo[0].x
					y: contours[1].nodes[2].expandedTo[0].y
					dirIn: Utils.lineAngle( contours[1].nodes[2].expandedTo[0].point, contours[1].nodes[1].expandedTo[0].point )
					# tensionIn:
					# 	if ( thickness < 40 )
					# 	then 1.6
					# 	else 1
					typeOut: 'line'
				2:
					x: contours[0].nodes[1].expandedTo[0].x
					y: contours[0].nodes[1].expandedTo[0].y
					typeOut: 'line'
