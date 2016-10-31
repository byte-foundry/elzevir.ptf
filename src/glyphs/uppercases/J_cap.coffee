exports.glyphs['J_cap'] =
	unicode: 'J'
	glyphName: 'J'
	characterName: 'LATIN CAPITAL LETTER J'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 0
		spacingRight: 50 * spacing + 40 + serifWidth
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
			y: capHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Math.max(
						contours[0].nodes[3].expandedTo[0].x + 100 * width,
						185 * width
					) + (25)
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand: Object({
						width: ( 100 / 90 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x
					y: ( 200 / 660 ) * capHeight
					dirOut: - 90 + 'deg'
					tensionOut: 1.2
					expand: Object({
						width: ( 131 / 90 ) * thickness * opticThickness
						angle: 40 + 'deg'
						distr: 0
					})
				2:
					x: contours[0].nodes[3].expandedTo[1].x + ( contours[0].nodes[1].expandedTo[1].x - contours[0].nodes[3].expandedTo[1].x ) * 0.4 - (4)
					y: - overshoot * 2
					dirOut: 180 + 'deg'
					tensionIn: 1.2
					type: 'smooth'
					expand: Object({
						width: ( 32 / 90 ) * thickness
						angle: 180 + 39 + 'deg'
						distr: 1
					})
				3:
					x: spacingLeft + (21/90) * thickness
					y: Math.max(
						50,
						( 50 / 90 ) * thickness
					)
					dirIn: Math.min(
						Utils.lineAngle( contours[0].nodes[3].expandedTo[0].point, contours[0].nodes[2].expandedTo[1].point ),
						- ( 76 / 180 * Math.PI )
					)
					expand: Object({
						width: ( 85 / 90 ) * thickness
						angle: 180 + 'deg'
						distr: 0.75
					})
		1:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[3].expandedTo[1].x
					y: contours[0].nodes[3].expandedTo[1].y
					dirOut: contours[0].nodes[3].dirIn
				1:
					x: contours[0].nodes[3].expandedTo[1].x + ( contours[0].nodes[3].expandedTo[0].x - contours[0].nodes[3].expandedTo[1].x ) * ( 40 / 85 )
					y: contours[0].nodes[3].expandedTo[1].y + ( contours[0].nodes[3].expandedTo[0].x - contours[0].nodes[3].expandedTo[1].x ) * ( 40 / 85 )
					dirOut: 0 + 'deg'
				2:
					x: contours[0].nodes[3].expandedTo[0].x
					y: contours[0].nodes[3].expandedTo[0].y
					dirIn: contours[0].nodes[3].dirIn
					typeOut: 'line'
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
