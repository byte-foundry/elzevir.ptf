exports.glyphs['U_cap'] =
	unicode: 'U'
	glyphName: 'U'
	characterName: 'LATIN CAPITAL LETTER U'
	ot:
		advanceWidth: contours[0].nodes[4].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 30 + serifWidth
		spacingRight: 50 * spacing + 20 + ( 85 / 75 ) * serifWidth
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[4].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
			y: capHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + (25)
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand: Object({
						width: ( 100 / 90 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x
					y: ( (200 + ( 15 / 90 ) * thickness * width) / 660 ) * capHeight
					dirOut: - 90 + 'deg'
					expand: Object({
						width: ( 102 / 90 ) * thickness * opticThickness
						angle: - 11 + 'deg'
						distr: 0
					})
				2:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[4].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * 0.51
					y: - overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					tensionIn: 1.2
					tensionOut: 1.2
					expand: Object({
						width: ( 38 / 90 ) * thickness * opticThickness
						angle: 67 + 'deg'
						distr: 0
					})
				3:
					x: contours[0].nodes[4].expandedTo[0].x
					y: ( (170 + ( 15 / 90 ) * thickness * width) / 660 ) * capHeight
					dirIn: - 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 32 / 90 ) * thickness
						angle: 162 + 'deg'
						distr: 0
					})
				4:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 270 + 200 * width,
						contours[0].nodes[0].expandedTo[1].x + 170 + 200 * width
					) - (8)
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					dirOut: 0 + 'deg'
					expand: Object({
						width: ( 30 / 90 ) * thickness
						angle: 180 + 'deg'
						distr: 0.25
					})
	components:
		0:
			base: ['serif-vertical', 'none']
			id: 'topleft'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0].point
					noneAnchor: contours[0].nodes[0].expandedTo[0].point
					opposite: contours[0].nodes[0].expandedTo[1].point
					reversed: true
			transformOrigin: contours[0].nodes[0].point
			transforms: Array(
				[ 'scaleY', -1 ]
			)
		1:
			base: ['serif-vertical', 'none']
			id: 'topright'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1].point
					noneAnchor: contours[0].nodes[0].expandedTo[1].point
					opposite: contours[0].nodes[0].expandedTo[0].point
			transformOrigin: contours[0].nodes[0].expandedTo[1].point
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
		2:
			base: ['serif-vertical', 'none']
			id: 'topleft2'
			parentAnchors:
				0:
					base: contours[0].nodes[4].expandedTo[1].point
					noneAnchor: contours[0].nodes[4].expandedTo[1].point
					opposite: contours[0].nodes[4].expandedTo[0].point
					reversed: true
			transformOrigin: contours[0].nodes[4].point
			transforms: Array(
				[ 'scaleY', -1 ]
			)
			parentParameters:
				serifWidth: Math.min( ( 90 / 75 ) * serifWidth, serifWidth + 15 )
				serifCurve: Math.min( ( 75 / 65 ) * serifCurve, serifCurve + 10 )
		3:
			base: ['serif-vertical', 'none']
			id: 'topright2'
			parentAnchors:
				0:
					base: contours[0].nodes[4].expandedTo[0].point
					noneAnchor: contours[0].nodes[4].expandedTo[0].point
					opposite: contours[0].nodes[4].expandedTo[1].point
			transformOrigin: contours[0].nodes[4].expandedTo[0].point
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
			parentParameters:
				serifWidth: Math.min( ( 85 / 75 ) * serifWidth, serifWidth + 10 )
				serifCurve: Math.min( ( 75 / 65 ) * serifCurve, serifCurve + 10 )
