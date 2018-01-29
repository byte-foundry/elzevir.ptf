exports.glyphs['serif-horizontal-fake'] =
	componentLabel: 'Serif stub'
	parameters:
		serifWidth: 0
	anchors:
		0:
			y: parentAnchors[0].base.y
			x: parentAnchors[0].base.x + Math.max( 0, serifArc * serifHeight )
		1:
			x: parentAnchors[0].base.y + Math.abs( parentAnchors[0].opposite.y - parentAnchors[0].base.y ) * 0.5
		2:
			rotate: parentAnchors[0].rotate || 0
	tags: [
		'component'
	]
	contours:
		0:
			exportReversed: parentAnchors[0].reversed == true
			closed: true
			nodes:
				0:
					y: anchors[0].y
					x: anchors[0].x - ( serifHeight + serifCurve )
					typeOut: 'line'
					typeIn: 'line'
				1:
					y: anchors[0].y - serifWidth * midWidth
					x: anchors[0].x
					typeOut: 'line'
					typeIn: 'line'
				2:
					y: anchors[1].x
					x: anchors[0].x - serifArc * serifHeight
					typeOut: 'line'
					typeIn: 'line'
				3:
					y: contours[0].nodes[2].y
					x: contours[0].nodes[0].x
					typeOut: 'line'
					typeIn: 'line'
