exports.glyphs['serif-c-left'] =
	parameters:
		# baseRight: if typeof baseRight != 'undefined' then baseRight else { x: parentAnchors[0].x, y: parentAnchors[0].y }
		# baseLeft: if typeof baseLeft != 'undefined' then baseLeft else { x: parentAnchors[1].x, y: parentAnchors[1].y }
		_tensionModifierLeft: if typeof tensionModifierLeft != 'undefined' then Math.min(1, tensionModifierLeft / serifCurve) else 1
		# pointFourSmallestWidth: if typeof pointFourSmallestWidth != 'undefined' then pointFourSmallestWidth else { x: parentAnchors[1].x, y: parentAnchors[1].y }
	tags: [
		'component'
	]
	contours:
		0:
			closed: true
			nodes:
				0:
					x: parentAnchors[0].x
					y: parentAnchors[0].y
					dirOut: parentAnchors[0].normal
					typeIn: 'line'
					transformOrigin: parentAnchors[1].baseRight
					transforms: Array(
						[ 'skewX', serifTransform + 'deg' ]
					)
				1:
					x: parentAnchors[1].baseRight.x
					y: parentAnchors[1].baseRight.y
					dirIn: parentAnchors[1].baseRight.normal - Math.PI
					typeOut: 'line'
				2:
					x: parentAnchors[1].baseRight.x
					y: contours[0].nodes[3].y + ( parentAnchors[1].baseRight.y - contours[0].nodes[3].y ) / 2
					typeOut: 'line'
				3:
					x: parentAnchors[2].baseLeft.x
					y: parentAnchors[2].baseLeft.y - serifWidth * midWidth
					typeOut: 'line'
				4:
					x: contours[0].nodes[5].x + ( contours[0].nodes[3].x - contours[0].nodes[5].x ) / 2
					# y: Math.min(
					# 	contours[0].nodes[5].y + ( contours[0].nodes[3].y - contours[0].nodes[5].y ) / 2,
					# 	pointFourSmallestWidth.y
					# )
					y: contours[0].nodes[5].y + ( contours[0].nodes[3].y - contours[0].nodes[5].y ) / 2
					typeOut: 'line'
				5:
					x: parentAnchors[2].baseLeft.x - serifHeight * serifMedian
					y: parentAnchors[2].baseLeft.y - serifWidth
					typeOut: 'line'
				6:
					x: parentAnchors[2].baseLeft.x - serifHeight
					y: contours[0].nodes[5].y + 15 ##
					type: 'smooth'
					tensionOut: serifRoundness
					typeIn: 'line'
				7:
					x: parentAnchors[3].x
					y: parentAnchors[3].y
					dirIn: parentAnchors[3].normal
					tensionIn: serifRoundness * _tensionModifierLeft
					transformOrigin: parentAnchors[1].baseRight
					transforms: Array(
						[ 'skewX', serifTransform + 'deg' ]
					)
