exports.glyphs['N_cap'] =
	unicode: 'N'
	glyphName: 'N'
	characterName: 'LATIN CAPITAL LETTER N'
	ot:
		advanceWidth: contours[2].nodes[1].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 40 + serifWidth
		spacingRight: 50 * spacing + 30 + serifWidth * ( 85 / 75 )
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: contours[0].nodes[0].expandedTo[0].x + ( contours[2].nodes[0].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
			y: capHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + (7)
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand:
						width: ( 30 / 90 ) * thickness * opticThickness
						angle: 0
						distr: 0.25
				1:
					x: contours[0].nodes[0].x
					y: Math.max( 0, serifHeight * serifArc )
					typeIn: 'line'
					expand:
						width: ( 30 / 90 ) * thickness * opticThickness
						angle: 0
						distr: 0.25
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].x
					y: contours[0].nodes[0].expandedTo[1].y - ( 57 / 90 ) * thickness
					typeOut: 'line'
					expand:
						width: ( 100 / 90 ) * thickness * opticThickness
						angle: Math.asin( ( ( 57 / 90 ) * thickness ) / ( ( 100 / 90 ) * thickness * opticThickness ) )
						distr: 0
				1:
					x: contours[2].nodes[1].x
					y: ( 113 / 90 ) * thickness
					typeIn: 'line'
					expand:
						width: ( 100 / 90 ) * thickness * opticThickness
						angle:( 180 - 133 ) / 180 * Math.PI # Math.acos( ( ( 110 / 90 ) * thickness ) / ( ( 100 / 90 ) * thickness * opticThickness ) )
						distr: 1
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x + 255 + 200 * width - (7)
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand:
						width: ( 30 / 90 ) * thickness * opticThickness
						angle: 0
						distr: 0.75
				1:
					x: contours[2].nodes[0].x
					y: contours[1].nodes[1].expandedTo[0].y + ( contours[1].nodes[1].expandedTo[1].y - contours[1].nodes[1].expandedTo[0].y ) * 0.5
					typeIn: 'line'
					expand:
						width: ( 30 / 90 ) * thickness * opticThickness
						angle: 0
						distr: 0.75
		3:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[1].nodes[1].expandedTo[1].x
					y: contours[1].nodes[1].expandedTo[1].y
					typeOut: 'line'
					typeIn: 'line'
				1:
					x: contours[1].nodes[1].expandedTo[0].x
					y: contours[1].nodes[1].expandedTo[0].y
					typeOut: 'line'
					typeIn: 'line'
				2:
					x: Math.min(
						Utils.onLine({
							y: contours[3].nodes[3].y
							on: [ contours[1].nodes[0].expandedTo[0], contours[1].nodes[1].expandedTo[0] ]
						}),
						contours[3].nodes[3].x
					)
					y: contours[3].nodes[3].y
					typeOut: 'line'
					typeIn: 'line'
				3:
					x: contours[2].nodes[1].expandedTo[1].x
					y: Math.max(
						- 20,
						- ( 20 / 90 ) * thickness
					)
					typeOut: 'line'
					typeIn: 'line'
				4:
					x: contours[2].nodes[1].expandedTo[1].x
					y: contours[2].nodes[1].expandedTo[1].y
					typeOut: 'line'
					typeIn: 'line'
		4:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[1].nodes[0].expandedTo[1].x
					y: contours[1].nodes[0].expandedTo[1].y
					typeOut: 'line'
				1:
					y: Utils.onLine({
						x: contours[0].nodes[1].expandedTo[1].x
						on: [ contours[1].nodes[0].expandedTo[0], contours[1].nodes[0].expandedTo[1] ]
					})
					x: contours[0].nodes[1].expandedTo[1].x
					typeOut: 'line'
				2:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[0].expandedTo[1].y
					typeOut: 'line'
	components:
		0:
			base: ['serif-oblique-obtuse', 'none']
			id: 'bottomleft'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[0]
					noneAnchor: contours[0].nodes[1].expandedTo[0]
					opposite: contours[0].nodes[1].expandedTo[1]
					obliqueEndPoint: contours[0].nodes[0].expandedTo[0]
		1:
			base: ['serif-oblique-acute', 'none']
			id: 'bottomright'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[1]
					noneAnchor: contours[0].nodes[1].expandedTo[1]
					opposite: contours[0].nodes[1].expandedTo[0]
					obliqueEndPoint: contours[0].nodes[0].expandedTo[1]
					reversed: true
					scaleX: -1
		2:
			base: ['serif-oblique-acute', 'none']
			id: 'topleft'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0]
					noneAnchor: contours[0].nodes[0].expandedTo[0]
					opposite: contours[0].nodes[0].expandedTo[1]
					obliqueEndPoint: contours[0].nodes[1].expandedTo[0]
					reversed: true
			transformOrigin: contours[0].nodes[0].expandedTo[0]
			transforms: Array(
				[ 'scaleY', -1 ]
			)
		3:
			base: ['serif-vertical', 'none']
			id: 'topleft2'
			parentAnchors:
				0:
					base: contours[2].nodes[0].expandedTo[0]
					noneAnchor: contours[2].nodes[0].expandedTo[0]
					opposite: contours[2].nodes[0].expandedTo[1]
					reversed: true
			transformOrigin: contours[2].nodes[0]
			transforms: Array(
				[ 'scaleY', -1 ]
			)
		4:
			base: ['serif-vertical', 'none']
			id: 'topright'
			parentAnchors:
				0:
					base: contours[2].nodes[0].expandedTo[1]
					noneAnchor: contours[2].nodes[0].expandedTo[1]
					opposite: contours[2].nodes[0].expandedTo[0]
			transformOrigin: contours[2].nodes[0].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
