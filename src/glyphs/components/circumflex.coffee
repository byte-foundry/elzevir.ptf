exports.glyphs['circumflex'] =
	glyphName: 'circumflex'
	characterName: 'MODIFIER LETTER CIRCUMFLEX ACCENT'
	anchors:
		0:
			x: parentAnchors[0].x
			y: parentAnchors[0].y
	tags: [
		'component',
		'diacritic'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: anchors[0].x
					y: anchors[0].y + 170 + 40 - ( 40 / 90 ) * thickness
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 64 / 90 )
						angle: 153 + 'deg'
						distr: 0.5
					})
				1:
					x: anchors[0].x - 75 - 40 * width
					y: anchors[0].y
					expand: Object({
						width: thickness * ( 12 / 90 )
						angle: 140 + 'deg'
						distr: 0.4
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: anchors[0].x + 75 + 40 * width
					y: anchors[0].y
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 12 / 90 )
						angle: 40 + 'deg'
						distr: 0.4
					})
				1:
					x: anchors[0].x
					y: contours[0].nodes[0].y
					expand: Object({
						width: thickness * ( 64 / 90 )
						angle: 26 + 'deg'
						distr: 0.5
					})
		2:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[1].nodes[1].expandedTo[0].x
					y: contours[1].nodes[1].expandedTo[0].y
					typeOut: 'line'
				1:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].expandedTo[1].y
					tensionOut: 0.5
					dirOut: Utils.lineAngle(
						contours[0].nodes[1].expandedTo[1].point,
						contours[0].nodes[0].expandedTo[1].point
					)
				2:
					x: anchors[0].x
					y: contours[0].nodes[0].expandedTo[1].y + ( 25 / 90 ) * thickness
					tensionIn: 1.5
					tensionOut: 1.5
					dirOut: 0 + 'deg'
					type: 'smooth'
				3:
					x: contours[1].nodes[1].expandedTo[1].x
					y: contours[1].nodes[1].expandedTo[1].y
					typeOut: 'line'
					tensionIn: 0.5
					dirIn: Utils.lineAngle(
						contours[1].nodes[0].expandedTo[1].point,
						contours[1].nodes[1].expandedTo[1].point
					)
				4:
					x: contours[0].nodes[0].expandedTo[0].x
					y: contours[0].nodes[0].expandedTo[0].y
					typeOut: 'line'
