exports.glyphs['circumflex'] =
	global: true
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
					expand:
						width: thickness * ( 64 / 90 )
						angle:( 153 ) / 180 * Math.PI
						distr: 0.5
				1:
					x: anchors[0].x - 75 - 40 * width
					y: anchors[0].y
					expand:
						width: thickness * ( 12 / 90 )
						angle:( 140 ) / 180 * Math.PI
						distr: 0.4
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: anchors[0].x + 75 + 40 * width
					y: anchors[0].y
					typeOut: 'line'
					expand:
						width: thickness * ( 12 / 90 )
						angle:( 40 ) / 180 * Math.PI
						distr: 0.4
				1:
					x: anchors[0].x
					y: contours[0].nodes[0].y
					expand:
						width: thickness * ( 64 / 90 )
						angle:( 26 ) / 180 * Math.PI
						distr: 0.5
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
						contours[0].nodes[1].expandedTo[1],
						contours[0].nodes[0].expandedTo[1]
					)
				2:
					x: anchors[0].x
					y: contours[0].nodes[0].expandedTo[1].y + ( 25 / 90 ) * thickness
					tensionIn: 1.5
					tensionOut: 1.5
					dirOut: 0
					type: 'smooth'
				3:
					x: contours[1].nodes[1].expandedTo[1].x
					y: contours[1].nodes[1].expandedTo[1].y
					typeOut: 'line'
					tensionIn: 0.5
					dirIn: Utils.lineAngle(
						contours[1].nodes[0].expandedTo[1],
						contours[1].nodes[1].expandedTo[1]
					)
				4:
					x: contours[0].nodes[0].expandedTo[0].x
					y: contours[0].nodes[0].expandedTo[0].y
					typeOut: 'line'
