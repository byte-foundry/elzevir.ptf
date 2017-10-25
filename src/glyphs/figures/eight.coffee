# TODO: width
exports.glyphs['eight'] =
	unicode: '8'
	glyphName: 'eight'
	characterName: 'DIGIT EIGHT'
	ot:
		advanceWidth: contours[1].nodes[2].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 55 + (21)
		spacingRight: 50 * spacing + 50
	tags: [
		'all',
		'latin',
		'figures'
	]
	anchors:
		0:
			junctionBottom: Utils.pointOnCurve( contours[1].nodes[4].expandedTo[1], contours[1].nodes[4].expandedTo[1].handleIn, contours[1].nodes[3].expandedTo[1], contours[1].nodes[3].expandedTo[1].handleOut, ( 65 / 90 ) * thickness, 100 )
			junctionTop: Utils.pointOnCurve( contours[1].nodes[2].expandedTo[0], contours[1].nodes[2].expandedTo[0].handleOut, contours[1].nodes[3].expandedTo[0], contours[1].nodes[3].expandedTo[0].handleIn, ( 40 / 90 ) * thickness, true, 100 )
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: anchors[0].junctionBottom.x + ( contours[1].nodes[3].x - anchors[0].junctionBottom.x ) * Math.min( 1, ( 0.5 / 90 ) * thickness * width )
					y: anchors[0].junctionBottom.y
					dirOut: 0 + 'deg'
					expand:
						width: ( 5 / 90 ) * thickness
						angle: - 45 + 'deg'
						distr: 1
				1:
					x: spacingLeft
					y: ( 165 / 660 ) * capHeight
					dirIn: - 90 + 'deg'
					expand:
						width: ( 86 / 90 ) * thickness
						angle: 10 + 'deg'
						distr: 0.25
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: ( 165 / 660 ) * capHeight
					dirOut: - 90 + 'deg'
					expand:
						width: ( 86 / 90 ) * thickness
						angle: 10 + 'deg'
						distr: 0.25
				1:
					x: contours[0].nodes[1].expandedTo[0].x + ( contours[1].nodes[2].expandedTo[0].x - contours[0].nodes[1].expandedTo[0].x ) * 0.5
					y: - overshoot
					dirOut: 0 + 'deg'
					typeIn: 'smooth'
					expand:
						width: ( 20 / 90 ) * thickness
						angle: 76 + 'deg'
						distr: 0
				2:
					x: contours[0].nodes[1].expandedTo[0].x + 200 * width + 235 - (21)
					y: ( 170 / 660 ) * capHeight
					dirIn: - 90 + 'deg'
					typeOut: 'smooth'
					expand:
						width: ( 90 / 90 ) * thickness
						angle: - 160 + 'deg'
						distr: 0.25
				3:
					x: contours[1].nodes[4].expandedTo[1].x + ( contours[1].nodes[2].expandedTo[0].x - contours[1].nodes[4].expandedTo[1].x ) * 0.45
					y: contours[1].nodes[4].expandedTo[1].y + ( contours[1].nodes[2].expandedTo[0].y - contours[1].nodes[4].expandedTo[1].y ) * 0.5
					dirOut: ( Math.max(
						180 - ( 20 / 90 ) * thickness,
						160
					) * Math.PI / 180 )
					typeIn: 'smooth'
					expand:
						width: ( 93 / 90 ) * thickness
						angle: contours[1].nodes[3].dirOut + Math.PI / 2
						distr: 0.5
				4:
					x: contours[0].nodes[1].x + 25
					y: ( 500 / 660 ) * capHeight
					dirOut: 90 + 'deg'
					typeIn: 'smooth'
					expand:
						width: ( 83 / 90 ) * thickness
						angle: 180 + 25 + 'deg'
						distr: 0.75
				5:
					x: contours[1].nodes[4].expandedTo[0].x + ( contours[1].nodes[6].expandedTo[0].x - contours[1].nodes[4].expandedTo[0].x ) * 0.5
					y: capHeight + overshoot
					dirOut: 0 + 'deg'
					typeIn: 'smooth'
					expand:
						width: ( 20 / 90 ) * thickness
						angle: 180 - 104 + 'deg'
						distr: 1
				6:
					x: contours[1].nodes[2].x - 30
					y: ( 515 / 660 ) * capHeight
					dirIn: - 90 + 'deg'
					expand:
						width: ( 76 / 90 ) * thickness
						angle: 180 - 169 + 'deg'
						distr: 0.75
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[2].x - 30
					y: ( 515 / 660 ) * capHeight
					dirOut: - 90 + 'deg'
					expand:
						width: ( 76 / 90 ) * thickness
						angle: 180 - 169 + 'deg'
						distr: 0.75
				1:
					x: anchors[0].junctionTop.x - ( anchors[0].junctionTop.x - contours[1].nodes[3].x ) * Math.min( 1, ( 0.5 / 90 ) * thickness * width )
					y: anchors[0].junctionTop.y - ( anchors[0].junctionTop.y - contours[1].nodes[3].y ) * Math.min( 1, ( 0.5 / 90 ) * thickness * width )
					dirIn: Math.min(
						10,
						(( 10 / 90 ) * thickness)
					) * Math.PI / 180
					expand:
						width: ( 5 / 90 ) * thickness
						angle: contours[2].nodes[1].dirIn - Math.PI / 2
						distr: 0
