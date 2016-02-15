exports.glyphs['s'] =
	unicode: 's'
	glyphName: 's'
	characterName: 'LATIN SMALL LETTER S'
	ot:
		advanceWidth: contours[0].nodes[2].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + (0)
		spacingRight: 50 * spacing
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
					x: spacingLeft
					y: 30 + (8)
					dirOut: Utils.lineAngle( contours[0].nodes[0].expandedTo[1].point, contours[0].nodes[1].expandedTo[0].point )
					expand: Object({
						width: ( 32 / 90 ) * thickness
						angle: 90 + 'deg'
						distr: 0.25
					})
				1:
					x: 200
					y: - overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 21 / 90 ) * thickness
						angle: 76 + 'deg'
						distr: 0
					})
				2:
					x: 175 + 200 * width - (19)
					y: ( 145 / 500 ) * xHeight
					y: contours[0].nodes[1].expandedTo[0].y + ( contours[0].nodes[3].expandedTo[0].y - contours[0].nodes[1].expandedTo[0].y ) * 0.5
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 82 / 90 ) * thickness
						angle: - 156 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[0].nodes[0].x + ( contours[0].nodes[6].x - contours[0].nodes[0].x ) * 0.6
					y: contours[0].nodes[0].y + ( contours[0].nodes[6].y - contours[0].nodes[0].y ) * 0.5
					dirOut: Utils.lineAngle( contours[0].nodes[2].expandedTo[1].point, contours[0].nodes[4].expandedTo[1].point ) + Math.PI / 10
					type: 'smooth'
					expand: Object({
						width: ( 90 / 90 ) * thickness
						angle: Utils.lineAngle( contours[0].nodes[6].expandedTo[1].point, contours[0].nodes[0].expandedTo[0].point )
						distr: 0.5
					})
				4:
					x: 60 + (17)
					y: ( 380 / 500 ) * xHeight
					y: contours[0].nodes[3].expandedTo[1].y + ( contours[0].nodes[5].expandedTo[1].y - contours[0].nodes[3].expandedTo[1].y ) * 0.5
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 76 / 90 ) * thickness
						angle: - 156 + 'deg'
						distr: 0.75
					})
				5:
					x: 210
					y: xHeight + overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 20 / 90 ) * thickness
						angle: 180 - 90 + 'deg'
						distr: 1
					})
				6:
					x: 345
					y: xHeight - 35 - (8)
					dirIn: Utils.lineAngle( contours[0].nodes[5].expandedTo[1].point, contours[0].nodes[6].expandedTo[0].point )
					expand: Object({
						width: ( 32 / 90 ) * thickness
						angle: 180 - 90 + 'deg'
						distr: 0.75
					})
