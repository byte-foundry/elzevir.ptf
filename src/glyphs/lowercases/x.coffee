# TODO: thickness should not affect width as much
exports.glyphs['x'] =
	unicode: 'x'
	glyphName: 'x'
	characterName: 'LATIN SMALL LETTER X'
	ot:
		advanceWidth: contours[0].nodes[1].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 20 + ( serifWidth - 75 )
		spacingRight: 50 * spacing + 20 + ( serifWidth * (30 / 75) ) # TODO: apply this serif method everywhere
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
					x: spacingLeft + (73)
					y: xHeight - Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand: Object({
						width: ( 110 / 90 ) * thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x + 200 * width + 240 + (0)
					y: 0 + Math.max( 0, serifHeight * serifArc )
					expand: Object({
						width: ( 110 / 90 ) * thickness
						angle: 0 + 'deg'
						# distr: Math.max(
						# 	Math.abs(1.5 - ( 1 / 90 ) * thickness),
						# 	0
						# )
						distr: 1
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					# x: contours[0].nodes[1].expandedTo[1].x - 45 - (23)
					# x: Math.max(
					# 	contours[0].nodes[0].expandedTo[1].x + 84 + 200 * width,
					# 	230 + 200 * width
					# ) - (22)
					# x: contours[0].nodes[0].expandedTo[1].x + 200 * width + 84 - (22)
					x: contours[0].nodes[1].expandedTo[1].x - 75 + (62)
					y: xHeight - Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand: Object({
						width: ( 30 / 90 ) * thickness * Math.sqrt( width )
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: Utils.onLine({
						y: ( ( 250 + Math.min(44, ( 44 / 90 ) * thickness ) ) / 500 ) * xHeight
						on: [ contours[1].nodes[0].expandedTo[1].point, contours[2].nodes[1].expandedTo[0].point ]
					})
					y: ( ( 250 + Math.min(44, ( 44 / 90 ) * thickness ) ) / 500 ) * xHeight
					expand: Object({
						width: ( 20 / 90 ) * thickness * Math.sqrt( width )
						angle: 0 + 'deg'
						distr: 1
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Utils.onLine({
						y: ( ( 250 + Math.min(44, ( 44 / 90 ) * thickness ) ) / 500 ) * xHeight
						on: [ contours[1].nodes[0].expandedTo[1].point, contours[2].nodes[1].expandedTo[0].point ]
					}) - ( 20 / 90 ) * thickness
					y: ( ( 250 + Math.min(44, ( 44 / 90 ) * thickness ) ) / 500 ) * xHeight
					typeOut: 'line'
					expand: Object({
						width: ( 24 / 90 ) * thickness * Math.sqrt( width )
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					# x: Utils.onLine({
					# 	y: 0 + Math.max( 0, serifHeight * serifArc )
					# 	on: [ contours[1].nodes[0].expandedTo[0].point, contours[1].nodes[1].expandedTo[0].point ]
					# }) - ( 20 / 90 ) * thickness
					x: contours[0].nodes[0].expandedTo[0].x
					y: 0 + Math.max( 0, serifHeight * serifArc )
					expand: Object({
						width: ( 30 / 90 ) * thickness * Math.sqrt( width )
						angle: 0 + 'deg'
						distr: 0.25
					})
	components:
		0:
			base: ['serif-oblique-obtuse', 'none']
			id: 'topleft'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0].point
					noneAnchor: contours[0].nodes[0].expandedTo[0].point
					opposite: contours[0].nodes[0].expandedTo[1].point
					obliqueEndPoint: contours[0].nodes[1].expandedTo[0].point
					scaleX: -1
					reversed: true
			transformOrigin: contours[0].nodes[0].expandedTo[0].point
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
		1:
			base: ['serif-oblique-acute', 'none']
			id: 'topright'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1].point
					noneAnchor: contours[0].nodes[0].expandedTo[1].point
					opposite: contours[0].nodes[0].expandedTo[0].point
					obliqueEndPoint: contours[0].nodes[1].expandedTo[1].point
			transformOrigin: contours[0].nodes[0].expandedTo[1].point
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
		2:
			base: ['serif-oblique-acute', 'none']
			id: 'bottomleft2'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[0].point
					noneAnchor: contours[0].nodes[1].expandedTo[0].point
					opposite: contours[0].nodes[1].expandedTo[1].point
					obliqueEndPoint: contours[0].nodes[0].expandedTo[0].point
		3:
			base: ['serif-oblique-obtuse', 'none']
			id: 'bottomright2'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[1].point
					noneAnchor: contours[0].nodes[1].expandedTo[1].point
					opposite: contours[0].nodes[1].expandedTo[0].point
					obliqueEndPoint: contours[0].nodes[0].expandedTo[1].point
					scaleX: -1
					reversed: true
		4:
			base: ['serif-oblique-obtuse', 'none']
			id: 'bottomleft'
			parentAnchors:
				0:
					base: contours[2].nodes[1].expandedTo[0].point
					noneAnchor: contours[2].nodes[1].expandedTo[0].point
					opposite: contours[2].nodes[1].expandedTo[1].point
					obliqueEndPoint: contours[2].nodes[0].expandedTo[0].point
		5:
			base: ['serif-oblique-acute', 'none']
			id: 'bottomleft'
			parentAnchors:
				0:
					base: contours[2].nodes[1].expandedTo[1].point
					noneAnchor: contours[2].nodes[1].expandedTo[1].point
					opposite: contours[2].nodes[1].expandedTo[0].point
					obliqueEndPoint: contours[2].nodes[0].expandedTo[1].point
					scaleX: -1
					reversed: true
		6:
			base: ['serif-oblique-acute', 'none']
			id: 'topleft2'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[0].point
					noneAnchor: contours[1].nodes[0].expandedTo[0].point
					opposite: contours[1].nodes[0].expandedTo[1].point
					obliqueEndPoint: contours[1].nodes[1].expandedTo[0].point
					scaleX: -1
					reversed: true
			transformOrigin: contours[1].nodes[0].expandedTo[0].point
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
		7:
			base: ['serif-oblique-obtuse', 'none']
			id: 'topright2'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[1].point
					noneAnchor: contours[1].nodes[0].expandedTo[1].point
					opposite: contours[1].nodes[0].expandedTo[0].point
					obliqueEndPoint: contours[1].nodes[1].expandedTo[1].point
			transformOrigin: contours[1].nodes[0].expandedTo[1].point
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
