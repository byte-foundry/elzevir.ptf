exports.glyphs['M_cap'] =
	unicode: 'M'
	glyphName: 'M'
	characterName: 'LATIN CAPITAL LETTER M'
	ot:
		advanceWidth: contours[1].nodes[1].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 30 + serifWidth * ( 80 / 75 )
		spacingRight: 50 * spacing + 30 + serifWidth * ( 85 / 75 )
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			intersection: Utils.lineLineIntersection( contours[2].nodes[1].expandedTo[1], contours[2].nodes[0].expandedTo[1], contours[3].nodes[0].expandedTo[0], contours[3].nodes[1].expandedTo[0] )
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + (7)
					y: Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand:
						width: ( 30 / 90 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
				1:
					x: contours[0].nodes[0].x + 25 + (0)
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					typeIn: 'line'
					expand:
						width: ( 30 / 90 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x + 345 + 200 * width + (25)
					y: Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand:
						width: ( 100 / 90 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
				1:
					typeOut: 'line'
					typeIn: 'line'
					expandedTo:
						[
							{
								x: Math.max(
									contours[1].nodes[1].expandedTo[1].x - ( 120 / 90 ) * thickness * opticThickness,
									Utils.onLine({
										y: capHeight - Math.max( 0, serifHeight * serifArc )
										on: [ contours[3].nodes[0].expandedTo[0], contours[3].nodes[1].expandedTo[0] ]
									})
								)
								y: capHeight - Math.max( 0, serifHeight * serifArc )
							}
							{
								x: Utils.onLine({
									y: capHeight - Math.max( 0, serifHeight * serifArc )
									on: [ contours[1].nodes[0].expandedTo[1], contours[1].nodes[2].expandedTo[1] ]
								})
								y: capHeight - Math.max( 0, serifHeight * serifArc )
							}
						]
				2:
					x: contours[1].nodes[0].expandedTo[1].x - 30
					y: capHeight
					typeIn: 'line'
					expand:
						width: ( 90 / 90 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 1
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x + ( contours[1].nodes[0].x - contours[0].nodes[0].expandedTo[1].x ) * 0.5 + ( 25 / 90 ) * thickness * opticThickness # contours[3].nodes[0].expand.width
					y: ( 113 / 90 ) * thickness
					typeOut: 'line'
					expand:
						width: ( 100 / 90 ) * thickness * opticThickness
						angle: 180 - 133 + 'deg' # Math.acos( ( ( 110 / 90 ) * thickness ) / ( ( 100 / 90 ) * thickness * opticThickness ) )
						distr: 1
				1:
					x: contours[0].nodes[1].x
					y: capHeight - ( 85 / 90 ) * thickness
					typeIn: 'line'
					expand:
						width: ( 110 / 90 ) * thickness * opticThickness
						angle: Math.asin( ( ( 85 / 90 ) * thickness ) / ( ( 110 / 90 ) * thickness * opticThickness ) )
						distr: 0
		3:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Utils.onLine({
						y: - overshoot
						on: [ contours[2].nodes[1].expandedTo[0], contours[2].nodes[0].expandedTo[0] ]
					})
					y: - overshoot
					typeOut: 'line'
					expand:
						width: ( 25 / 90 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0
				1:
					x: contours[1].nodes[2].expandedTo[0].x
					y: contours[1].nodes[2].expandedTo[0].y
					typeIn: 'line'
					expand:
						width: ( 35 / 90 ) * thickness
						angle: 0 + 'deg'
						distr: 0
		4:
			skeleton: false
			closed: true
			nodes:
				0:
					x: Utils.onLine({
						y: capHeight
						on: [ contours[0].nodes[0].expandedTo[1], contours[0].nodes[1].expandedTo[1] ]
					})
					y: capHeight
					typeOut: 'line'
					typeIn: 'line'
				1:
					x: contours[2].nodes[1].expandedTo[1].x
					y: contours[2].nodes[1].expandedTo[1].y
					typeOut: 'line'
					typeIn: 'line'
				2:
					x: contours[2].nodes[1].expandedTo[0].x
					y: contours[2].nodes[1].expandedTo[0].y
					typeOut: 'line'
					typeIn: 'line'
		5:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[3].nodes[0].expandedTo[0].x
					y: contours[3].nodes[0].expandedTo[0].y
					typeOut: 'line'
					typeIn: 'line'
				1:
					x: anchors[0].intersection.x
					y: anchors[0].intersection.y
					typeOut: 'line'
					typeIn: 'line'
				2:
					x: contours[2].nodes[0].expandedTo[1].x
					y: contours[2].nodes[0].expandedTo[1].y
					typeOut: 'line'
					typeIn: 'line'
				3:
					x: contours[2].nodes[0].expandedTo[0].x
					y: contours[2].nodes[0].expandedTo[0].y
					typeOut: 'line'
					typeIn: 'line'
	components:
		0:
			base: ['serif-oblique-obtuse', 'none']
			id: 'bottomleft'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0]
					noneAnchor: contours[0].nodes[0].expandedTo[0]
					opposite: contours[0].nodes[0].expandedTo[1]
					obliqueEndPoint: contours[0].nodes[1].expandedTo[0]
		1:
			base: ['serif-oblique-acute', 'none']
			id: 'bottomright'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1]
					noneAnchor: contours[0].nodes[0].expandedTo[1]
					opposite: contours[0].nodes[0].expandedTo[0]
					obliqueEndPoint: contours[0].nodes[1].expandedTo[1]
					reversed: true
					scaleX: -1
			parameters:
				serifWidth: Math.min( ( 110 / 75 ) * serifWidth, serifWidth + 35 )
				serifCurve: Math.min( ( 80 / 65 ) * serifCurve, serifCurve + 15 )
		2:
			base: ['serif-oblique-acute', 'none']
			id: 'topleft'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[0]
					noneAnchor: contours[0].nodes[1].expandedTo[0]
					opposite: contours[0].nodes[1].expandedTo[1]
					obliqueEndPoint: contours[0].nodes[0].expandedTo[0]
					reversed: true
					scaleX: -1
			transformOrigin: contours[0].nodes[1].expandedTo[0]
			transforms: Array(
				[ 'scaleY', -1 ],
				[ 'scaleX', -1 ]
			)
		3:
			base: ['serif-oblique-acute', 'none']
			id: 'bottomleft2'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[0]
					noneAnchor: contours[1].nodes[0].expandedTo[0]
					opposite: contours[1].nodes[0].expandedTo[1]
					obliqueEndPoint: contours[1].nodes[1].expandedTo[0]
		4:
			base: ['serif-oblique-obtuse', 'none']
			id: 'bottomright2'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[1]
					noneAnchor: contours[1].nodes[0].expandedTo[1]
					opposite: contours[1].nodes[0].expandedTo[0]
					obliqueEndPoint: contours[1].nodes[1].expandedTo[1]
					reversed: true
					scaleX: -1
		5:
			base: ['serif-oblique-obtuse', 'none']
			id: 'topright'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[1]
					noneAnchor: contours[1].nodes[1].expandedTo[1]
					opposite: contours[1].nodes[1].expandedTo[0]
					obliqueEndPoint: contours[1].nodes[0].expandedTo[1]
			transformOrigin: contours[1].nodes[1].expandedTo[1]
			transforms: Array(
				[ 'scaleY', -1 ],
				[ 'scaleX', -1 ]
			)
		6:
			# TODO: serifHeight obtuse/acute?
			base: ['none', 'serif-oblique-obtuse']
			id: 'topleftright'
			parentAnchors:
				0:
					base: contours[2].nodes[1].expandedTo[1]
					noneAnchor: contours[2].nodes[1].expandedTo[1]
					opposite: contours[2].nodes[1].expandedTo[0]
					obliqueEndPoint: contours[2].nodes[0].expandedTo[1]
			transformOrigin: contours[2].nodes[1].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
		7:
			base: ['none', 'serif-oblique-acute']
			id: 'toprightleft'
			parentAnchors:
				0:
					base: contours[3].nodes[1].expandedTo[0]
					noneAnchor: contours[3].nodes[1].expandedTo[0]
					opposite: contours[3].nodes[1].expandedTo[1]
					obliqueEndPoint: contours[3].nodes[0].expandedTo[0]
					scaleX: -1
					reversed: true
			transformOrigin: contours[3].nodes[1].expandedTo[0]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
