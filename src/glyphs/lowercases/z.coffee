############
# TODO : serifs missing
############
exports.glyphs['z'] =
	unicode: 'z'
	glyphName: 'z'
	characterName: 'LATIN SMALL LETTER Z'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 45 + (0)
		spacingRight: 50 * spacing + 50
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: contours[1].nodes[1].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[1].x - contours[1].nodes[1].expandedTo[0].x ) * 0.5
			y: xHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					# x: 234 + 200 * width - (26)
					x: contours[0].nodes[1].expandedTo[0].x + 200 * width + 190 - (27)
					y: xHeight
					typeOut: 'line'
					expand: Object({
						width: ( 104 / 90 ) * thickness
						angle: 0 + 'deg'
						distr: 0.75
					})
				1:
					x: spacingLeft + (26)
					y: 0
					expand: Object({
						width: ( 106 / 90 ) * thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
					y: xHeight
					typeOut: 'line'
					expand: Object({
						width: ( 21 / 90 ) * thickness
						angle: - 106 + 'deg'
						distr: 0
					})
				1:
					x: 95
					x: contours[0].nodes[1].x
					y: xHeight
					typeOut: 'line'
					expand: Object({
						width: ( 21 / 90 ) * thickness / Math.cos( - serifRotate * (15) / 180 * Math.PI )
						angle: - 90 - serifRotate * (15) + 'deg'
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
						width: ( 20 / 90 ) * thickness
						angle: 79 + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[0].x
					y: 0
					typeOut: 'line'
					expand: Object({
						# width: ( 20 / 90 ) * thickness
						width: ( 20 / 90 ) * thickness / Math.cos( - serifRotate * (10) / 180 * Math.PI )
						# angle: 79 + 'deg'
						angle: 90 - serifRotate * (10) + 'deg'
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
				# [ 'translateX', ( Math.tan( (15 * serifRotate) / 180 * Math.PI ) * ( thickness * 0.5 ) ) ]
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
				# [ 'translateX', ( Math.tan( (10 * serifRotate) / 180 * Math.PI ) * ( thickness * 0.5 ) ) ]
			)
