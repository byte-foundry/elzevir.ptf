exports.glyphs['nine'] =
	unicode: '9'
	glyphName: 'nine'
	characterName: 'DIGIT NINE'
	ot:
		advanceWidth: contours[0].nodes[4].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 60 + (0)
		spacingRight: 50 * spacing + 50
	tags: [
		'all',
		'latin',
		'figures'
	]
	anchors:
		0:
			junction: Utils.pointOnCurve( contours[0].nodes[3].expandedTo[1], contours[0].nodes[2].expandedTo[1], 120 - ( 120 / 90 ) * thickness, true, 10 )
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[4].x + (0)
					y: ( 715 / 720 ) * ascenderHeight
					dirOut: - 178 * Math.PI / 180
					expand: Object({
						width: ( 15 / 90 ) * thickness
						angle: contours[0].nodes[0].dirOut + Math.PI / 2
						distr: 0
					})
				1:
					x: spacingLeft + (26)
					y: ( 295 / 500 ) * xHeight + (8)
					dirOut: contours[0].nodes[6].expandedTo[1].dirIn # - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 109 / 90 ) * thickness
						angle: 16 + 'deg'
						distr: 0.25
					})
				2:
					x: contours[0].nodes[1].expandedTo[0].x
					y: contours[0].nodes[1].expandedTo[0].y
					dirOut: contours[0].nodes[6].expandedTo[1].dirIn # - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( ( (133 - 5) + (( 5 / 90 ) * thickness)) / 90 ) * thickness
						angle: - 40 + 'deg' # 8 + 'deg'
						distr: 0
					})
				3:
					x: contours[0].nodes[2].expandedTo[1].x + ( contours[0].nodes[4].expandedTo[1].x - contours[0].nodes[2].expandedTo[1].x ) * Math.min( 0.49, ( ( 0.49 + 0.2 ) - ( 0.2 / 90 ) * thickness ))
					y: - overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 27 / 90 ) * thickness
						angle: 68 + 'deg'
						distr: 0
					})
				4:
					x: 320 + 200 * width - (24)
					x: contours[0].nodes[1].expandedTo[0].x + 200 * width + 260 - (24)
					y: ( 215 / 500 ) * xHeight
					dirOut: 90 + 'deg'
					expand: Object({
						width: ( 95 / 90 ) * thickness
						angle: - 177 + 'deg'
						distr: 0.25
					})
				5:
					x: contours[0].nodes[2].expandedTo[1].x + ( contours[0].nodes[4].expandedTo[1].x - contours[0].nodes[2].expandedTo[1].x ) * 0.5 + (22)
					y: xHeight - ( 70 / 500 ) * xHeight - (6)
					dirOut: 180 + 'deg'
					type: 'smooth'
					tensionOut: Math.max( 1, ( 1 / 90 ) * thickness )
					expand: Object({
						width: ( 29 / 90 ) * thickness
						angle: - 121 + 'deg'
						distr: 0.25
					})
				6:
					x: anchors[0].junction.x
					y: anchors[0].junction.y
					dirIn: Utils.lineAngle( contours[0].nodes[6].expandedTo[1].point, contours[0].nodes[1].expandedTo[1].point )
					expand: Object({
						width: ( 20 / 90 ) * thickness
						angle: 0 + 'deg'
						distr: 1
					})
			transformOrigin: Array( (contours[0].nodes[4].expandedTo[0].x + spacingRight) / 2, 0 )
			transforms: Array(
				['translateY', ( xHeight ) ],
				['rotate', 180 + 'deg']
			)
