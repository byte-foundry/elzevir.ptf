# TODO: serifs
exports.glyphs['Z_cap'] =
	unicode: 'Z'
	glyphName: 'Z'
	characterName: 'LATIN CAPITAL LETTER Z'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 40
		spacingRight: 50 * spacing + 40 + ( 23 / 75 ) * serifWidth
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: contours[1].nodes[1].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[1].x - contours[1].nodes[1].expandedTo[0].x ) * 0.5
			y: capHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 315 + 200 * width - (29)
					x: Math.max(
						contours[0].nodes[1].expandedTo[0].x + 200 * width + 315 - (29),
						contours[0].nodes[1].expandedTo[1].x + 0.75 * ( 112 / 90 ) * thickness * opticThickness + 10
					)
					y: capHeight
					typeOut: 'line'
					expand: Object({
						width: ( 114 / 90 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.75
					})
				1:
					x: spacingLeft + (28)
					y: 0
					expand: Object({
						width: ( 112 / 90 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
					y: capHeight
					typeOut: 'line'
					expand: Object({
						width: ( 25 / 90 ) * thickness * opticThickness
						angle: - 103 + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[1].expandedTo[0].x + 50 # + ( contours[0].nodes[1].expandedTo[1].x - contours[0].nodes[1].expandedTo[0].x ) * 0.45 # 90 # + ( 23 / 75 ) * serifWidth
					y: capHeight
					typeOut: 'line'
					expand: Object({
						width: ( 25 / 90 ) * thickness * opticThickness
						angle: - 103 + (13) - serifRotate * (13) + 'deg'
						distr: 0
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[0].x + ( contours[0].nodes[1].expandedTo[1].x - contours[0].nodes[1].expandedTo[0].x ) * 0.5
					y: 0
					typeOut: 'line'
					expand: Object({
						width: ( 26 / 90 ) * thickness * opticThickness
						angle: 79 + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[0].x
					y: 0
					typeOut: 'line'
					expand: Object({
						width: ( 26 / 90 ) * thickness * opticThickness
						angle: 79 + (15) - serifRotate * 15 + 'deg'
						distr: 0
					})
	components:
		0:
			base: ['serif-horizontal', 'none']
			id: 'topleft'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[1].point
					noneAnchor: contours[1].nodes[1].expandedTo[1].point
					opposite: contours[1].nodes[1].expandedTo[0].point
					reversed: true
			transformOrigin: contours[1].nodes[1].expandedTo[1].point
			transforms: Array(
				[ 'scaleX', -1 ]
				[ 'skewX', - 15 * serifRotate + 'deg' ],
				[ 'translateX', ( Math.tan( (15 * serifRotate) / 180 * Math.PI ) * ( thickness * 0.5 ) ) ]
			)
		1:
			base: ['serif-horizontal', 'none']
			id: 'bottomright'
			parentAnchors:
				0:
					base: contours[2].nodes[1].expandedTo[1].point
					noneAnchor: contours[2].nodes[1].expandedTo[1].point
					opposite: contours[2].nodes[1].expandedTo[0].point
					reversed: true
			transformOrigin: contours[2].nodes[1].expandedTo[1].point
			transforms: Array(
				[ 'scaleY', -1 ],
				[ 'skewX', - 10 * serifRotate + 'deg' ],
				[ 'translateX', ( Math.tan( (10 * serifRotate) / 180 * Math.PI ) * ( thickness * 0.5 ) ) ]
			)
