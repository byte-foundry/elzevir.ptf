exports.glyphs['stroke'] =
	glyphName: "stroke"
	characterName: "stroke"
	anchors:
		0:
			left: parentAnchors[0].left
			right: parentAnchors[0].right
			top: if typeof parentAnchors[0].top != 'undefined' then parentAnchors[0].top else xHeight + overshoot
			bottom: if typeof parentAnchors[0].bottom != 'undefined' then parentAnchors[0].bottom else 0 - overshoot
			angle: if typeof parentAnchors[0].angle != 'undefined' then parentAnchors[0].angle else Utils.lineAngle({x: contours[0].nodes[0].x, y: contours[0].nodes[0].y}, {x: contours[0].nodes[1].x, y: contours[0].nodes[1].y}) + Math.PI / 2
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: anchors[0].left
					y: anchors[0].bottom
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand:
						width: thickness * ( 30 / 90 )
						angle: anchors[0].angle
						distr: 0.5
				1:
					x: anchors[0].right
					y: anchors[0].top
					dirOut: 0 + 'deg'
					typeIn: 'line'
					expand:
						width: thickness * ( 30 / 90 )
						angle: anchors[0].angle
						distr: 0.5
