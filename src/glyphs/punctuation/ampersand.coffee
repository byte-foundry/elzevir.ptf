# TODO: xHeight + width
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
			junctionTop: Utils.pointOnCurve( contours[1].nodes[4].expandedTo[1], contours[1].nodes[3].expandedTo[1], 180 * Math.pow( capHeight / 660, 2.5 ), false, 3 )
			junctionBottom: Utils.pointOnCurve( contours[1].nodes[3].expandedTo[0], contours[1].nodes[4].expandedTo[0], 160, true, 3 )
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					# x: anchors[0].junctionBottom.x
					# y: anchors[0].junctionBottom.y
					x: anchors[0].junctionBottom.x + ( anchors[0].junctionTop.x - anchors[0].junctionBottom.x ) / 2
					y: anchors[0].junctionBottom.y + ( anchors[0].junctionTop.y - anchors[0].junctionBottom.y ) / 2
					dirOut: - 163 + 'deg'
					expand: Object({
						width: ( 16 / 90 ) * thickness
						angle: 180 - 60 + 'deg'
						distr: 0.75
					})
				1:
					x: spacingLeft + (21/90) * thickness
					y: ( 165 / 660 ) * capHeight
					y: contours[0].nodes[2].y + ( contours[0].nodes[0].y - contours[0].nodes[2].y ) * 0.45
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
					y: Math.max(
						( 300 / 660 ) * capHeight - serifHeight - serifCurve,
						( 270 / 660 ) * capHeight
					)
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
					# x: anchors[0].junctionTop.x
					# y: anchors[0].junctionTop.y
					x: anchors[0].junctionBottom.x + ( anchors[0].junctionTop.x - anchors[0].junctionBottom.x ) / 2
					y: anchors[0].junctionBottom.y + ( anchors[0].junctionTop.y - anchors[0].junctionBottom.y ) / 2
					dirOut: 10 + 'deg'
					expand: Object({
						width: ( 15 / 90 ) * thickness
						angle: - 56 + 'deg'
						distr: 0.75
					})
				1:
					x: 260 + 200 * width - (17)
					y: contours[1].nodes[0].expandedTo[1].y + ( contours[1].nodes[2].y - contours[1].nodes[0].expandedTo[1].y ) * 0.6
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
					y: ( 500 / 660 ) * capHeight + (10)
					dirIn: 90 + 'deg'
					type: 'smooth'
					tensionOut: ( 1.2 / 660 ) * capHeight
					expand: Object({
						width: ( 80 / 90 ) * thickness
						angle: 180 + 30 + 'deg'
						distr: 0.75
					})
				4:
					x: contours[1].nodes[3].expandedTo[1].x + ( contours[1].nodes[5].expandedTo[0].x - contours[1].nodes[3].expandedTo[1].x ) * ( 0.35 / 660 ) * capHeight
					# y: contours[0].nodes[1].expandedTo[1].x + ( contours[0].nodes[2].expandedTo[1].x - contours[0].nodes[1].expandedTo[1].x ) * 0.6
					# y: contours[0].nodes[2].expandedTo[1].y + ( contours[0].nodes[4].expandedTo[1].y - contours[0].nodes[2].expandedTo[1].y ) * 0.75
					y: 180 + ( 20 / 660 ) * capHeight
					tensionIn: Math.max( 0, 3 - ( 2 / 660 ) * capHeight )
					tensionOut: Math.max( 0, 3 - ( 1.5 / 660 ) * capHeight )
					expand: Object({
						width: ( 85 / 90 ) * thickness
						angle: 180 + 40 + 'deg'
						distr: 0.75
					})
				5:
					x: contours[0].nodes[4].expandedTo[0].x + ( 135 / 660 ) * capHeight * width + ( 50 / 90 ) * thickness
					y: 0
					dirIn: - 170 - 5 * width + 5 + 'deg'
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
					anchorLine: ( 300 / 660 ) * capHeight + 80 # anchors[0].junctionBottom.y + ( anchors[0].junctionTop.y - anchors[0].junctionBottom.y ) / 2
					directionY: -1
					leftWidth: 15
					rightWidth: 25
