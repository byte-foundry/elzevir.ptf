# TODO:
## SERIFS… Rotation for example
exports.glyphs['E_cap'] =
	unicode: 'E'
	glyphName: 'E'
	characterName: 'LATIN CAPITAL LETTER E'
	ot:
		advanceWidth: contours[1].nodes[1].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 115 + ( (25) / 90 ) * thickness + ( serifWidth - 75 )
		spacingRight: 50 * spacing + 115 + ( serifWidth - 75 )
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: contours[0].nodes[0].expandedTo[0].x + ( contours[2].nodes[1].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
			y: capHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand: Object({
						width: ( 100 / 90 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					expand: Object({
						width: ( 100 / 90 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].expandedTo[1].y
					expand: Object({
						width: ( 25 / 90 ) * thickness * opticThickness
						angle: 90 + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[0].expandedTo[1].x + 145 + 150 * width
					y: 0
					expand: Object({
						width: ( 25 / 90 ) * thickness * opticThickness
						angle: 90 + 'deg'
						distr: 0
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].expandedTo[1].y
					expand: Object({
						width: ( 25 / 90 ) * thickness * opticThickness
						angle: - 90 + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[0].expandedTo[1].x + 135 + 150 * width
					y: capHeight
					expand: Object({
						width: ( 25 / 90 ) * thickness * opticThickness
						angle: - 90 + 'deg'
						distr: 0
					})
		3:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: ( 352 / 660 ) * capHeight * crossbar
					typeOut: 'line'
					expand: Object({
						width: ( 25 / 90 ) * thickness * opticThickness
						angle: 90 + 'deg'
						distr: 0.5
					})
				1:
					x: contours[0].nodes[0].expandedTo[1].x + 80 + 150 * width
					y: ( 352 / 660 ) * capHeight * crossbar
					expand: Object({
						width: ( 25 / 90 ) * thickness * opticThickness
						angle: 90 + 'deg'
						distr: 0.5
					})
		4:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[1].nodes[0].expandedTo[1].y
				1:
					x: contours[0].nodes[0].expandedTo[1].x
					y: Math.max(
						contours[0].nodes[0].expandedTo[1].y,
						contours[1].nodes[0].expandedTo[1].y
					)
					dirOut: - 90 + 'deg'
				2:
					x: contours[0].nodes[0].expandedTo[1].x + Math.min(
						contours[4].nodes[1].y - contours[4].nodes[0].y,
						25
					)
					y: contours[1].nodes[0].expandedTo[1].y
					typeOut: 'line'
	components:
		0:
			base: ['serif-vertical', 'none']
			id: 'bottomleft'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0].point
					noneAnchor: contours[0].nodes[0].expandedTo[0].point
					opposite: contours[0].nodes[0].expandedTo[1].point
		1:
			base: ['serif-vertical', 'none']
			id: 'topleft'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[0].point
					noneAnchor: contours[0].nodes[1].expandedTo[0].point
					opposite: contours[0].nodes[1].expandedTo[1].point
					reversed: true
			transformOrigin: contours[0].nodes[1].point
			transforms: Array(
				[ 'scaleY', -1 ]
			)
		2:
			base: ['serif-horizontal', 'none']
			id: 'topright'
			parentAnchors:
				0:
					base: contours[2].nodes[1].expandedTo[1].point
					noneAnchor: contours[2].nodes[1].expandedTo[1].point
					opposite: contours[2].nodes[1].expandedTo[0].point
			transformOrigin: contours[2].nodes[1].expandedTo[1].point
			transforms: Array(
				[ 'skewX', - 15 * serifRotate + 'deg' ],
				[ 'translateX', ( Math.tan( (15 * serifRotate) / 180 * Math.PI ) * ( thickness * 0.5 ) ) ]
			)
		3:
			base: ['serif-horizontal', 'none']
			id: 'middletop'
			parentAnchors:
				0:
					base: contours[3].nodes[1].expandedTo[1].point
					noneAnchor: contours[3].nodes[1].expandedTo[1].point
					opposite: contours[3].nodes[1].expandedTo[0].point
					reversed: true
			transformOrigin: contours[3].nodes[1].expandedTo[1].point
			transforms: Array(
				[ 'scaleY', -1 ]
			)
		4:
			base: ['serif-horizontal', 'none']
			id: 'middlebottom'
			parentAnchors:
				0:
					base: contours[3].nodes[1].expandedTo[0].point
					noneAnchor: contours[3].nodes[1].expandedTo[0].point
					opposite: contours[3].nodes[1].expandedTo[1].point
					scaleX: -1
		5:
			base: ['serif-horizontal', 'none']
			id: 'bottomright'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[1].point
					noneAnchor: contours[1].nodes[1].expandedTo[1].point
					opposite: contours[1].nodes[1].expandedTo[0].point
					reversed: true
			transformOrigin: contours[1].nodes[1].expandedTo[1].point
			transforms: Array(
				[ 'scaleY', -1 ],
				[ 'skewX', - 10 * serifRotate + 'deg' ],
				[ 'translateX', ( Math.tan( (10 * serifRotate) / 180 * Math.PI ) * ( thickness * 0.5 ) ) ]
			)
