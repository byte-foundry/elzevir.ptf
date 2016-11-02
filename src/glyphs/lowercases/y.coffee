exports.glyphs['y'] =
	unicode: 'y'
	glyphName: 'y'
	characterName: 'LATIN SMALL LETTER Y'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 10 + ( serifWidth - 75 )
		spacingRight: 50 * spacing + 13 + ( serifWidth - 75 )
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: contours[0].nodes[0].expandedTo[0].x + ( contours[1].nodes[0].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
			y: xHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + (76)
					y: xHeight - Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand: Object({
						width: ( 103 / 90 ) * thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[1].nodes[0].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5 - (5)
					y: - overshoot * 2
					expand: Object({
						width: ( ( ( ( 90 / 500 ) * xHeight ) + ( Math.max( -10, (60 - 30 * width) ) )) / 90 ) * thickness
						angle: Utils.lineAngle( contours[1].nodes[1].expandedTo[1].point, contours[1].nodes[0].expandedTo[1].point )
						distr: 0
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x + 137 + 200 * width - (8)
					y: xHeight - Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand: Object({
						width: ( 30 / 90 ) * thickness
						angle: 0 + 'deg'
						distr: 0.75
					})
				1:
					x: contours[0].nodes[1].x
					y: contours[0].nodes[1].y
					expand: Object({
						width: ( 15 / 90 ) * thickness
						angle: 0 + 'deg'
						distr: 0
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[0].x - 35 + (22)
					y: descender + 5 + ( 42 / 90 ) * thickness + (18)
					expand: Object({
						width: ( 59 / 90 ) * thickness
						angle: 40 + 'deg'
						distr: 0.5
					})
				1:
					x: contours[2].nodes[0].expandedTo[0].x + ( contours[2].nodes[2].expandedTo[1].x - contours[2].nodes[0].expandedTo[0].x ) * ( 77 / 240 )
					y: descender
					dirOut: 0 + 'deg'
					type: 'smooth'
					tensionOut: 1.2
					expand: Object({
						width: ( 81 / 90 ) * thickness
						angle: 47 + 'deg'
						distr: 0
					})
				2:
					x: Utils.onLine({
						y: - 72
						on: [ contours[1].nodes[0].expandedTo[1].point, contours[1].nodes[1].expandedTo[1].point ]
					})
					y: - 72
					dirIn: Utils.lineAngle( contours[1].nodes[0].expandedTo[1].point, contours[1].nodes[1].expandedTo[1].point )
					tensionIn: 1.2
					expand: Object({
						width: ( 25 / 90 ) * thickness
						angle: 161 + 'deg'
						distr: 0
					})
				3:
					x: contours[1].nodes[1].expandedTo[1].x
					y: contours[1].nodes[1].expandedTo[1].y
					typeIn: 'line'
					expand: Object({
						width: ( 29 / 90 ) * thickness
						angle: 121 + 'deg'
						distr: 0
					})
		3:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[2].nodes[1].expandedTo[1].x
					y: contours[2].nodes[1].expandedTo[1].y
					typeIn: 'line'
				1:
					x: contours[2].nodes[0].expandedTo[1].x
					y: contours[2].nodes[0].expandedTo[1].y
					dirIn: 0 + 'deg'
					type: 'smooth'
				2:
					x: contours[2].nodes[0].expandedTo[0].x
					y: contours[2].nodes[0].expandedTo[0].y
					dirIn: 90 + 'deg'
					type: 'smooth'
				3:
					x: contours[2].nodes[1].expandedTo[0].x
					y: contours[2].nodes[1].expandedTo[0].y
					dirIn: 180 + 'deg'
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
		3:
			base: ['serif-oblique-obtuse', 'none']
			id: 'topright2'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[1].point
					noneAnchor: contours[1].nodes[0].expandedTo[1].point
					opposite: contours[1].nodes[0].expandedTo[0].point
					obliqueEndPoint: contours[1].nodes[1].expandedTo[1].point
					# scaleX: -1
			transformOrigin: contours[1].nodes[0].expandedTo[1].point
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
