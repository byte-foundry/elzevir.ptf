exports.glyphs['eight'] =
	unicode: '8'
	glyphName: 'eight'
	characterName: 'DIGIT EIGHT'
	ot:
		advanceWidth: contours[0].nodes[3].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 55 * spacing + (21)
		spacingRight: 50 * spacing
	tags: [
		'all',
		'latin',
		'figures'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 0
					y: 0
					dirOut: 0 + 'deg'
					expand: Object({
						width: 0
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: spacingLeft
					y: ( 165 / 660 ) * capHeight
					dirOut: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 86 / 90 ) * thickness
						angle: 10 + 'deg'
						distr: 0.25
					})
				2:
					x: contours[0].nodes[1].expandedTo[0].x + ( contours[0].nodes[3].expandedTo[0].x - contours[0].nodes[1].expandedTo[0].x ) * 0.5
					y: - overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 20 / 90 ) * thickness
						angle: 76 + 'deg'
						distr: 0
					})
				3:
					x: 290 + 200 * width - (21)
					y: ( 170 / 660 ) * capHeight
					dirIn: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 90 / 90 ) * thickness
						angle: - 160 + 'deg'
						distr: 0.25
					})
				4:
					x: contours[0].nodes[5].expandedTo[1].x + ( contours[0].nodes[3].expandedTo[0].x - contours[0].nodes[5].expandedTo[1].x ) * 0.45
					y: contours[0].nodes[5].expandedTo[1].y + ( contours[0].nodes[3].expandedTo[0].y - contours[0].nodes[5].expandedTo[1].y ) * 0.45
					dirOut: 155 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 93 / 90 ) * thickness
						angle: - 117 + 'deg'
						distr: 0.5
					})
				5:
					x: contours[0].nodes[1].x + 25
					y: ( 500 / 660 ) * capHeight
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 83 / 90 ) * thickness
						angle: 180 + 25 + 'deg'
						distr: 0.75
					})
				6:
					x: contours[0].nodes[5].expandedTo[0].x + ( contours[0].nodes[7].expandedTo[0].x - contours[0].nodes[5].expandedTo[0].x ) * 0.5
					y: capHeight + overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 20 / 90 ) * thickness
						angle: 180 - 104 + 'deg'
						distr: 1
					})
				7:
					x: contours[0].nodes[3].x - 30
					y: ( 515 / 660 ) * capHeight
					dirOut: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 76 / 90 ) * thickness
						angle: 180 - 169 + 'deg'
						distr: 0.75
					})
