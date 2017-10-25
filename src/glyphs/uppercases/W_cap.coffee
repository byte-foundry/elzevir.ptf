# TODO: cont2 verif stem
exports.glyphs['W_cap'] =
	unicode: 'W'
	glyphName: 'W'
	characterName: 'LATIN CAPITAL LETTER W'
	ot:
		advanceWidth: contours[3].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 5 + ( 50 / 75 ) * serifWidth
		spacingRight: 50 * spacing + 5 + ( 70 / 75 ) * serifWidth
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: contours[1].nodes[0].expandedTo[0].x + ( contours[1].nodes[0].expandedTo[1].x - contours[1].nodes[0].expandedTo[0].x ) * 0.5 # contours[0].nodes[0].expandedTo[0].x + ( contours[3].nodes[0].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
			y: capHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + (27/90) * thickness # TODO: apply this behavior everywhere
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand:
						width: ( 110 / 90 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
				1:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[1].nodes[0].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5 + (10) - ( 5 / 90 ) * thickness
					y: - overshoot * 3
					typeIn: 'line'
					expand:
						width: (( ( ( 90 / 660 ) * capHeight ) + ( Math.max( -10, (70 - ((10 * width) / 90 ) * thickness ) )) ) / 90 ) * thickness
						angle: Utils.lineAngle({x: contours[1].nodes[1].expandedTo[1].x, y: contours[1].nodes[1].expandedTo[1].y}, {x: contours[1].nodes[0].expandedTo[1].x, y: contours[1].nodes[0].expandedTo[1].y})
						distr: 0
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x + 165 + 200 * width - (7)
					y: capHeight + overshoot * 2
					typeOut: 'line'
					expand:
						width: ( 25 / 90 ) * thickness
						angle: 0 + 'deg'
						distr: 0.75
				1:
					x: contours[0].nodes[1].x
					y: contours[0].nodes[1].y
					typeIn: 'line'
					expand:
						width: ( 25 / 90 ) * thickness
						angle: 0 + 'deg'
						distr: 0
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[0].expandedTo[1].x
					y: contours[1].nodes[0].expandedTo[1].y
					typeOut: 'line'
					expand:
						width: (( ( ( 100 / 660 ) * capHeight ) + ( Math.max( -10, (80 - ((10 * width) / 90 ) * thickness ) )) ) / 90 ) * thickness
						angle: Utils.lineAngle({x: contours[1].nodes[0].expandedTo[1].x, y: contours[1].nodes[0].expandedTo[1].y}, {x: contours[1].nodes[1].expandedTo[1].x, y: contours[1].nodes[1].expandedTo[1].y})
						distr: 0
				1:
					x: contours[3].nodes[1].expandedTo[0].x
					y: contours[3].nodes[1].expandedTo[0].y
					typeIn: 'line'
					expand:
						width: (( ( ( 100 / 660 ) * capHeight ) + ( Math.max( -10, (70 - ((10 * width) / 90 ) * thickness ) )) ) / 90 ) * thickness
						angle: Utils.lineAngle({x: contours[3].nodes[0].expandedTo[0].x, y: contours[3].nodes[0].expandedTo[0].y}, {x: contours[3].nodes[1].expandedTo[0].x, y: contours[3].nodes[1].expandedTo[0].y})
						distr: 1
		3:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[0].expandedTo[1].x + 175 + 200 * width - (7)
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand:
						width: ( 30 / 90 ) * thickness
						angle: 0 + 'deg'
						distr: 0.75
				1:
					x: contours[1].nodes[0].expandedTo[1].x + ( contours[3].nodes[0].expandedTo[0].x - contours[1].nodes[0].expandedTo[1].x ) * 0.5 - ( 25 / 90 ) * thickness
					y: contours[0].nodes[1].y
					typeIn: 'line'
					expand:
						width: ( 25 / 90 ) * thickness
						angle: 0 + 'deg'
						distr: 0
	components:
		0:
			base: ['serif-oblique-obtuse', 'none']
			id: 'topleft'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0]
					noneAnchor: contours[0].nodes[0].expandedTo[0]
					opposite: contours[0].nodes[0].expandedTo[1]
					obliqueEndPoint: contours[0].nodes[1].expandedTo[0]
					scaleX: -1
					reversed: true
			transformOrigin: contours[0].nodes[0].expandedTo[0]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
			parameters:
				serifWidth: Math.max( ( 60 / 75 ) * serifWidth, serifWidth - 15 )
		1:
			base: ['serif-oblique-acute', 'none']
			id: 'topright'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1]
					noneAnchor: contours[0].nodes[0].expandedTo[1]
					opposite: contours[0].nodes[0].expandedTo[0]
					obliqueEndPoint: contours[0].nodes[1].expandedTo[1]
			transformOrigin: contours[0].nodes[0].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
			parameters:
				serifWidth: Math.min( ( 90 / 75 ) * serifWidth, serifWidth + 15 )
		2:
			base: ['serif-oblique-acute', 'none']
			id: 'topleft2'
			parentAnchors:
				0:
					base: contours[3].nodes[0].expandedTo[0]
					noneAnchor: contours[3].nodes[0].expandedTo[0]
					opposite: contours[3].nodes[0].expandedTo[1]
					obliqueEndPoint: contours[3].nodes[1].expandedTo[0]
					scaleX: -1
					reversed: true
			transformOrigin: contours[3].nodes[0].expandedTo[0]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
			parameters:
				serifWidth: Math.min( ( 105 / 75 ) * serifWidth, serifWidth + 30 )
		3:
			base: ['serif-oblique-obtuse', 'none']
			id: 'topright2'
			parentAnchors:
				0:
					base: contours[3].nodes[0].expandedTo[1]
					noneAnchor: contours[3].nodes[0].expandedTo[1]
					opposite: contours[3].nodes[0].expandedTo[0]
					obliqueEndPoint: contours[3].nodes[1].expandedTo[1]
			transformOrigin: contours[3].nodes[0].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
