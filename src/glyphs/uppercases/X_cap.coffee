# TODO: width
exports.glyphs['X_cap'] =
	unicode: 'X'
	glyphName: 'X'
	characterName: 'LATIN CAPITAL LETTER X'
	ot:
		advanceWidth: contours[0].nodes[1].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 35 + ( 40 / 75 ) * serifWidth
		spacingRight: 50 * spacing + 25 + ( 40 / 75 ) * serifWidth
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + (28)
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand:
						width: ( 114 / 90 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
				1:
					x: Math.max(
						contours[0].nodes[0].expandedTo[1].x + 96 + 200 * width,
						283 + 200 * width
					) + (57)
					y: 0 + Math.max( 0, serifHeight * serifArc )
					typeIn: 'line'
					expand:
						width: ( 114 / 90 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.5
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x - Math.min( 85, ( (85) / 90 ) * thickness ) - (0)
					# x: Math.max(
					# 	contours[0].nodes[0].expandedTo[1].x + 124 + 200 * width,
					# 	311 + 200 * width
					# ) + (8)
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand:
						width: ( 39 / 90 ) * thickness * opticThickness * Math.sqrt( width )
						angle: 0 + 'deg'
						distr: 0.25
				1:
					x: Utils.onLine({
						# y: ( ( 320 + Math.min(45, ( 45 / 90 ) * thickness * opticThickness ) ) / 660 ) * capHeight
						y: Math.max(
							( 330 / 660 ) * capHeight + Math.min( 45, ( ( 90 - 45 * width ) / 90 ) * thickness ),
							capHeight / 2
						)
						on: [ contours[0].nodes[0].expandedTo[1], contours[0].nodes[1].expandedTo[1] ]
					})
					# y: ( ( 320 + Math.min(45, ( 45 / 90 ) * thickness * opticThickness ) ) / 660 ) * capHeight
					y: Math.max(
						( 330 / 660 ) * capHeight + Math.min( 45, ( ( 90 - 45 * width ) / 90 ) * thickness ),
						capHeight / 2
					)
					typeIn: 'line'
					expand:
						width: ( 30 / 90 ) * thickness * opticThickness * Math.sqrt( width )
						angle: 0 + 'deg'
						distr: 1
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Utils.onLine({
						# y: ( ( 320 + Math.min(45, ( 45 / 90 ) * thickness * opticThickness ) ) / 660 ) * capHeight
						y: Math.min(
							( 330 / 660 ) * capHeight - ( 15 / 90 ) * thickness,
							capHeight / 2
						)
						on: [ contours[0].nodes[0].expandedTo[0], contours[0].nodes[1].expandedTo[0] ]
					})
					# y: ( ( 320 + Math.min(45, ( 45 / 90 ) * thickness * opticThickness ) ) / 660 ) * capHeight
					y: Math.min(
						( 330 / 660 ) * capHeight - ( 15 / 90 ) * thickness,
						capHeight / 2
					)
					typeOut: 'line'
					expand:
						width: ( 30 / 90 ) * thickness * opticThickness * Math.sqrt( width )
						angle: 0 + 'deg'
						distr: 0
				1:
					# x: Utils.onLine({
					# 	y: 0 + Math.max( 0, serifHeight * serifArc )
					# 	on: [ contours[1].nodes[0].expandedTo[0], contours[1].nodes[1].expandedTo[0] ]
					# }) - ( 20 / 90 ) * thickness * opticThickness
					x: contours[0].nodes[0].expandedTo[0].x + 20 + (8)
					y: 0 + Math.max( 0, serifHeight * serifArc )
					typeIn: 'line'
					expand:
						width: ( 37 / 90 ) * thickness * opticThickness * Math.sqrt( width )
						angle: 0 + 'deg'
						distr: 0.25
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
				serifWidth: Math.max( ( 55 / 75 ) * serifWidth, serifWidth - 20 )
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
				serifWidth: Math.min( ( 100 / 75 ) * serifWidth, serifWidth + 25 )
		2:
			base: ['serif-oblique-acute', 'none']
			id: 'bottomleft2'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[0]
					noneAnchor: contours[0].nodes[1].expandedTo[0]
					opposite: contours[0].nodes[1].expandedTo[1]
					obliqueEndPoint: contours[0].nodes[0].expandedTo[0]
			parameters:
				serifWidth: Math.min( ( 100 / 75 ) * serifWidth, serifWidth + 25 )
		3:
			base: ['serif-oblique-obtuse', 'none']
			id: 'bottomright2'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[1]
					noneAnchor: contours[0].nodes[1].expandedTo[1]
					opposite: contours[0].nodes[1].expandedTo[0]
					obliqueEndPoint: contours[0].nodes[0].expandedTo[1]
					scaleX: -1
					reversed: true
			parameters:
				serifWidth: Math.max( ( 55 / 75 ) * serifWidth, serifWidth - 20 )
		4:
			base: ['serif-oblique-obtuse', 'none']
			id: 'bottomleft'
			parentAnchors:
				0:
					base: contours[2].nodes[1].expandedTo[0]
					noneAnchor: contours[2].nodes[1].expandedTo[0]
					opposite: contours[2].nodes[1].expandedTo[1]
					obliqueEndPoint: contours[2].nodes[0].expandedTo[0]
		5:
			base: ['serif-oblique-acute', 'none']
			id: 'bottomright'
			parentAnchors:
				0:
					base: contours[2].nodes[1].expandedTo[1]
					noneAnchor: contours[2].nodes[1].expandedTo[1]
					opposite: contours[2].nodes[1].expandedTo[0]
					obliqueEndPoint: contours[2].nodes[0].expandedTo[1]
					scaleX: -1
					reversed: true
			parameters:
				serifWidth: Math.min( ( 110 / 75 ) * serifWidth, serifWidth + 35 )
				serifCurve: Math.min( ( 80 / 65 ) * serifCurve, serifCurve + 15 )
		6:
			base: ['serif-oblique-acute', 'none']
			id: 'topleft2'
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
				serifWidth: Math.min( ( 110 / 75 ) * serifWidth, serifWidth + 35 )
		7:
			base: ['serif-oblique-obtuse', 'none']
			id: 'topright2'
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
