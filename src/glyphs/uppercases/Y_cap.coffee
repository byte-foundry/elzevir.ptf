exports.glyphs['Y_cap'] =
	unicode: 'Y'
	glyphName: 'Y'
	characterName: 'LATIN CAPITAL LETTER Y'
	ot:
		advanceWidth: contours[2].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 10 + ( 45 / 75 ) * serifWidth
		spacingRight: 50 * spacing + 5 + ( 50 / 75 ) * serifWidth
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: contours[0].nodes[1].x # contours[1].nodes[0].expandedTo[0].x + ( contours[2].nodes[0].expandedTo[0].x - contours[1].nodes[0].expandedTo[0].x ) * 0.5
			y: capHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					y: Math.max(
						Utils.onLine({
							x: contours[0].nodes[1].expandedTo[1].x
							on: [ contours[2].nodes[0].expandedTo[1], contours[2].nodes[1].expandedTo[1] ]
						}),
						contours[0].nodes[1].expandedTo[1].y
					)
					x: contours[0].nodes[1].expandedTo[1].x
					typeOut: 'line'
					expand:
						width: ( 100 / 90 ) * thickness * opticThickness
						angle: 0
						distr: 1
				1:
					x: contours[1].nodes[0].expandedTo[0].x + ( contours[2].nodes[0].expandedTo[1].x - contours[1].nodes[0].expandedTo[0].x ) * 0.5
					y: Math.max( 0, serifHeight * serifArc )
					typeIn: 'line'
					expand:
						width: ( 100 / 90 ) * thickness * opticThickness
						angle: 0
						distr: 0.5
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + (30)
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand:
						width: ( 120 / 90 ) * thickness * opticThickness
						angle: 0
						distr: 0.25
				1:
					x: contours[0].nodes[1].expandedTo[0].x + ( contours[0].nodes[1].expandedTo[1].x - contours[0].nodes[1].expandedTo[0].x ) * 0.25
					y: ( 235 / 660 ) * capHeight
					typeIn: 'line'
					expand:
						width: (( ( ( 90 / 660 ) * capHeight ) + ( Math.max( -10, (35 - ((10 * width) / 90 ) * thickness ) )) ) / 90 ) * thickness
						angle: Utils.lineAngle({x: contours[2].nodes[1].expandedTo[1].x, y: contours[2].nodes[1].expandedTo[1].y}, {x: contours[2].nodes[0].expandedTo[1].x, y: contours[2].nodes[0].expandedTo[1].y})
						distr: 0
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[0].expandedTo[1].x + 216 + 200 * width - (9)
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand:
						width: ( 30 / 90 ) * thickness
						angle: 0
						distr: 0.75
				1:
					x: contours[1].nodes[1].x
					y: contours[1].nodes[1].y
					typeIn: 'line'
					expand:
						width: ( 25 / 90 ) * thickness
						angle: 0
						distr: 0
	components:
		0:
			base: ['serif-oblique-obtuse', 'none']
			id: 'topleft'
			class: 'obtuseLeftSerif'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[0]
					noneAnchor: contours[1].nodes[0].expandedTo[0]
					opposite: contours[1].nodes[0].expandedTo[1]
					obliqueEndPoint: contours[1].nodes[1].expandedTo[0]
					scaleX: -1
					reversed: true
			transformOrigin: contours[1].nodes[0].expandedTo[0]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
			parameters:
				serifWidth: Math.max( ( 55 / 75 ) * serifWidth, serifWidth - 20 )
		1:
			base: ['serif-oblique-acute', 'none']
			id: 'topright'
			class: 'acuteLeftSerif'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[1]
					noneAnchor: contours[1].nodes[0].expandedTo[1]
					opposite: contours[1].nodes[0].expandedTo[0]
					obliqueEndPoint: contours[1].nodes[1].expandedTo[1]
			transformOrigin: contours[1].nodes[0].expandedTo[1]
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
					base: contours[2].nodes[0].expandedTo[0]
					noneAnchor: contours[2].nodes[0].expandedTo[0]
					opposite: contours[2].nodes[0].expandedTo[1]
					obliqueEndPoint: contours[2].nodes[1].expandedTo[0]
					scaleX: -1
					reversed: true
			transformOrigin: contours[2].nodes[0].expandedTo[0]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
			parameters:
				serifWidth: Math.min( ( 110 / 75 ) * serifWidth, serifWidth + 35 )
				serifCurve: Math.min( ( 85 / 65 ) * serifCurve, serifCurve + 20 )
		3:
			base: ['serif-oblique-obtuse', 'none']
			id: 'topright2'
			class: 'obtuseRightSerif'
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
				serifWidth: Math.max( ( 65 / 75 ) * serifWidth, serifWidth - 10 )
		4:
			base: ['serif-vertical', 'none']
			id: 'bottomleft'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[0]
					noneAnchor: contours[0].nodes[1].expandedTo[0]
					opposite: contours[0].nodes[1].expandedTo[1]
		5:
			base: ['serif-vertical', 'none']
			id: 'bottomright'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[1]
					noneAnchor: contours[0].nodes[1].expandedTo[1]
					opposite: contours[0].nodes[1].expandedTo[0]
					reversed: true
			transformOrigin: contours[0].nodes[1].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ]
			)
