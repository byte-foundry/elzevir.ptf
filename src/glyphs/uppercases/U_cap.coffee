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
		spacingLeft: 30 * spacing + serifWidth
		spacingRight: 20 * spacing + ( 85 / 75 ) * serifWidth
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[4].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
			y: capHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + (25)
					y: capHeight - serifHeight - serifCurve
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
					y: capHeight - serifHeight - serifCurve - Math.sqrt( serifCurve * 20 )
					dirOut: 0 + 'deg'
					expand: Object({
						width: ( 30 / 90 ) * thickness
						angle: 180 + 'deg'
						distr: 0.25
					})
	components:
		0:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: Math.max(
						contours[0].nodes[1].expandedTo[1].y,
						contours[0].nodes[0].y
					)
				1:
					x: contours[0].nodes[0].expandedTo[0].x
					y: Math.max(
						contours[0].nodes[1].expandedTo[0].y,
						contours[0].nodes[0].y
					)
				2:
					anchorLine: capHeight
					directionY: -1
		1:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[0].nodes[4].expandedTo[0].x
					y: Math.max(
						contours[0].nodes[3].expandedTo[0].y,
						contours[0].nodes[4].y - Math.sqrt( serifCurve * 20 )
					)
				1:
					x: contours[0].nodes[4].expandedTo[1].x
					y: Math.max(
						contours[0].nodes[4].expandedTo[1].y,
						contours[0].nodes[4].y - Math.sqrt( serifCurve * 20 )
					)
				2:
					anchorLine: capHeight
					directionY: -1
					leftWidth: 20
					rightWidth: 10
