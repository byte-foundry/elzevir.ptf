exports.glyphs['ampersand'] =
	unicode: '&'
	glyphName: 'ampersand'
	characterName: 'AMPERSAND'
	ot:
		advanceWidth: contours[1].nodes[5].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing
		spacingRight: 0 * spacing
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	anchors:
		0:
			junctionBottom: Utils.pointOnCurve( contours[1].nodes[4].expandedTo[1], contours[1].nodes[3].expandedTo[1], 200 - 20 + ( 20 / 90 ) * thickness, true, 10 )
			junctionTop: Utils.pointOnCurve( contours[1].nodes[3].expandedTo[0], contours[1].nodes[4].expandedTo[0], 200 - 40 + ( 40 / 90 ) * thickness, false, 10 )
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 234
					y: 377
					x: anchors[0].junctionBottom.x
					y: anchors[0].junctionBottom.y
					dirOut: - 163 + 'deg'
					expand: Object({
						width: ( 16 / 90 ) * thickness
						angle: 180 - 47 + 'deg'
						distr: 0.75
					})
				1:
					x: spacingLeft + (21/90) * thickness
					y: ( 165 / 660 ) * capHeight
					dirOut: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 92 / 90 ) * thickness
						angle: 180 + 22 + 'deg'
						distr: 0.75
					})
				2:
					x: contours[0].nodes[1].expandedTo[1].x + ( contours[0].nodes[4].expandedTo[0].x - contours[0].nodes[1].expandedTo[1].x ) * 0.425
					y: - overshoot
					dirIn: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 64 / 90 ) * thickness
						angle: 180 + 39 + 'deg'
						distr: 1
					})
				3:
					x: contours[0].nodes[4].x
					y: contours[0].nodes[4].y - ( 30 / 660 ) * capHeight
					dirIn: - 90 + 'deg'
					expand: Object({
						width: ( 20 / 90 ) * thickness
						angle: 0 + 'deg'
						distr: 0.75
					})
				4:
					x: 355 + 200 * width - (5)
					y: ( 300 / 660 ) * capHeight - serifHeight
					typeIn: 'line'
					expand: Object({
						width: ( 20 / 90 ) * thickness
						angle: 0 + 'deg'
						distr: 0.75
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 280
					y: ( 398 / 660 ) * capHeight
					x: anchors[0].junctionTop.x
					y: anchors[0].junctionTop.y
					dirOut: 19 + 'deg'
					expand: Object({
						width: ( 18 / 90 ) * thickness
						angle: - 56 + 'deg'
						distr: 0.75
					})
				1:
					x: 260 + 200 * width - (17)
					y: ( 550 / 660 ) * capHeight
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 70 / 90 ) * thickness
						angle: 180 - 176 + 'deg'
						distr: 0.75
					})
				2:
					x: contours[1].nodes[3].expandedTo[0].x + ( contours[1].nodes[1].expandedTo[0].x - contours[1].nodes[3].expandedTo[0].x ) * 0.5
					y: capHeight + overshoot
					dirOut: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 20 / 90 ) * thickness
						angle: 180 - 106 + 'deg'
						distr: 1
					})
				3:
					x: 160 + (17)
					y: 500 + (10)
					dirIn: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 80 / 90 ) * thickness
						angle: 180 + 30 + 'deg'
						distr: 0.75
					})
				4:
					x: contours[1].nodes[3].expandedTo[1].x + ( contours[1].nodes[5].expandedTo[0].x - contours[1].nodes[3].expandedTo[1].x ) * 0.4
					y: 125 + (17)
					y: contours[0].nodes[1].expandedTo[1].x + ( contours[0].nodes[2].expandedTo[1].x - contours[0].nodes[1].expandedTo[1].x ) * 0.5
					# dirOut: - 44 + 'deg'
					tensionOut: 1.5
					expand: Object({
						width: ( 90 / 90 ) * thickness
						# angle: 180 + Math.min( 80, ( 50 / 90 ) * thickness ) + 'deg'
						angle: 180 + 50 + 'deg'
						distr: 0.75
					})
				5:
					x: contours[0].nodes[4].expandedTo[0].x + 135 * width + ( 50 / 90 ) * thickness
					y: 0 - 15 + ( 15 / 90 ) * thickness
					dirIn: - 200 + ( 24 / 90 ) * thickness + 'deg'
					expand: Object({
						width: ( 15 / 90 ) * thickness
						angle: 180 + 90 + 'deg'
						distr: 1
					})
	components:
		0:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[0].nodes[4].expandedTo[1].x
					y: contours[0].nodes[4].y
				1:
					x: contours[0].nodes[4].expandedTo[0].x
					y: contours[0].nodes[4].y
				2:
					anchorLine: anchors[0].junctionBottom.y + ( anchors[0].junctionTop.y - anchors[0].junctionBottom.y ) / 2
					directionY: -1
