# TODO: width
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
	anchors:
		0:
			junctionBottom: Utils.pointOnCurve( contours[0].nodes[5].expandedTo[1], contours[0].nodes[4].expandedTo[1], ( 65 / 90 ) * thickness, 100 )
			junctionTop: Utils.pointOnCurve( contours[0].nodes[3].expandedTo[0], contours[0].nodes[4].expandedTo[0], ( 40 / 90 ) * thickness, true, 100 )
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: anchors[0].junctionBottom.x + ( contours[0].nodes[4].x - anchors[0].junctionBottom.x ) * Math.min( 1, ( 0.5 / 90 ) * thickness * width )
					y: anchors[0].junctionBottom.y
					dirOut: 0 + 'deg'
					expand: Object({
						width: ( 5 / 90 ) * thickness
						angle: - 45 + 'deg'
						distr: 1
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
					y: contours[0].nodes[5].expandedTo[1].y + ( contours[0].nodes[3].expandedTo[0].y - contours[0].nodes[5].expandedTo[1].y ) * 0.5
					dirOut: ( Math.max(
						180 - ( 20 / 90 ) * thickness,
						160
					) * Math.PI / 180 )
					type: 'smooth'
					expand: Object({
						width: ( 93 / 90 ) * thickness
						angle: contours[0].nodes[4].dirOut + Math.PI / 2
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
				8:
					# x: anchors[0].junctionTop.x
					# y: anchors[0].junctionTop.y
					x: anchors[0].junctionTop.x - ( anchors[0].junctionTop.x - contours[0].nodes[4].x ) * Math.min( 1, ( 0.5 / 90 ) * thickness * width )
					y: anchors[0].junctionTop.y - ( anchors[0].junctionTop.y - contours[0].nodes[4].y ) * Math.min( 1, ( 0.5 / 90 ) * thickness * width )
					dirIn: Math.min(
						10,
						(( 10 / 90 ) * thickness)
					) * Math.PI / 180
					expand: Object({
						width: ( 5 / 90 ) * thickness
						angle: contours[0].nodes[8].dirIn - Math.PI / 2
						distr: 0
					})
