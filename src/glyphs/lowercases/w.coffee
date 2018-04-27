exports.glyphs['w'] =
	unicode: 'w'
	glyphName: 'w'
	characterName: 'LATIN SMALL LETTER W'
	ot:
		advanceWidth: contours[3].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 10
		spacingRight: 50 * spacing + 10
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + (25/90) * thickness
					y: xHeight - Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand:
						width: ( 103 / 90 ) * thickness
						angle: 0
						distr: 0.25
				1:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[2].nodes[1].expandedTo[0].x - contours[2].nodes[0].expandedTo[0].x )
					y: - overshoot * 2
					typeIn: 'line'
					expand:
						width: ( ( ( ( 90 / 500 ) * xHeight ) + ( Math.max( -10, (60 - 30 * width) ) )) / 90 ) * thickness
						angle: Utils.lineAngle({x: contours[1].nodes[1].expandedTo[1].x, y: contours[1].nodes[1].expandedTo[1].y}, {x: contours[1].nodes[0].expandedTo[1].x, y: contours[1].nodes[0].expandedTo[1].y})
						distr: 0
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Utils.onLine({
						y: ( ( 300 + ( 60 / 90 ) * thickness ) / 500 ) * xHeight
						on: [ contours[2].nodes[0], contours[2].nodes[1] ]
					})
					y: ( ( 300 + ( 60 / 90 ) * thickness ) / 500 ) * xHeight
					typeOut: 'line'
					expand:
						width: ( 20 / 90 ) * thickness
						angle: 0
						distr: 0
				1:
					x: contours[0].nodes[1].x
					y: contours[0].nodes[1].y
					typeIn: 'line'
					expand:
						width: ( 15 / 90 ) * thickness
						angle: 0
						distr: 0
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x + 196 * width
					y: xHeight - Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand:
						width: ( 103 / 90 ) * thickness
						angle: 0
						distr: 0
				1:
					x: contours[2].nodes[0].expandedTo[0].x + ( contours[3].nodes[0].expandedTo[1].x - contours[2].nodes[0].expandedTo[0].x ) * 0.5 - (5)
					y: - overshoot * 2
					typeIn: 'line'
					expand:
						width: ( ( ( ( 90 / 500 ) * xHeight ) + ( Math.max( -10, (60 - 30 * width) ) )) / 90 ) * thickness
						angle: Utils.lineAngle({x: contours[3].nodes[1].expandedTo[1].x, y: contours[3].nodes[1].expandedTo[1].y}, {x: contours[3].nodes[0].expandedTo[1].x, y: contours[3].nodes[0].expandedTo[1].y})
						distr: 0
		3:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[2].nodes[0].expandedTo[1].x + 137 + 200 * width - (8)
					y: xHeight - Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand:
						width: ( 30 / 90 ) * thickness
						angle: 0
						distr: 0.75
				1:
					x: contours[2].nodes[1].x
					y: contours[2].nodes[1].y
					typeIn: 'line'
					expand:
						width: ( 15 / 90 ) * thickness
						angle: 0
						distr: 0
	components:
		0:
			base: ['serif-oblique-obtuse', 'none']
			id: 'topleft'
			class: 'obtuseLeftSerif'
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
			class: 'acuteLeftSerif'
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
			class: 'acuteRightSerif'
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
			class: 'obtuseRightSerif'
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
		4:
			base: ['serif-oblique-obtuse', 'none']
			id: 'topleft3'
			parentAnchors:
				0:
					base: contours[2].nodes[0].expandedTo[0]
					noneAnchor: contours[2].nodes[0].expandedTo[0]
					opposite: contours[2].nodes[0].expandedTo[1]
					obliqueEndPoint: contours[2].nodes[1].expandedTo[0]
					scaleX: -1
					reversed: true
			parameters:
				serifWidth: serifWidth - 20
			transformOrigin: contours[2].nodes[0].expandedTo[0]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
		5:
			base: ['serif-oblique-acute', 'none']
			id: 'topright3'
			parentAnchors:
				0:
					base: contours[2].nodes[0].expandedTo[1]
					noneAnchor: contours[2].nodes[0].expandedTo[1]
					opposite: contours[2].nodes[0].expandedTo[0]
					obliqueEndPoint: contours[2].nodes[1].expandedTo[1]
			transformOrigin: contours[2].nodes[0].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
			parameters:
				serifWidth: serifWidth + 20
