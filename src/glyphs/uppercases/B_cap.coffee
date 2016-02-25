exports.glyphs['B_cap'] =
	unicode: 'B'
	glyphName: 'B'
	characterName: 'LATIN CAPITAL LETTER B'
	ot:
		advanceWidth: contours[2].nodes[2].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 40 * spacing + ( serifWidth - 75 )
		spacingRight: 20 * spacing
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
					x: spacingLeft + (100)
					y: 0 + serifHeight + serifCurve
					typeOut: 'line'
					expand: Object({
						width: ( 100 / 90 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: capHeight - serifHeight - serifCurve
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
					x: contours[0].nodes[1].expandedTo[1].x
					y: capHeight
					typeOut: 'line'
					expand: Object({
						width: ( 25 / 90 ) * thickness
						angle: - 90 + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[1].expandedTo[1].x + ( contours[1].nodes[2].expandedTo[1].x - contours[0].nodes[1].expandedTo[1].x ) * Math.min( 0.8, 0.5 * Math.sqrt( width ) )
					y: capHeight
					dirOut: 0 + 'deg'
					expand: Object({
						width: ( 25 / 90 ) * thickness
						angle: - 90 + 'deg'
						distr: 0
					})
				2:
					x: Math.max(
						contours[0].nodes[1].expandedTo[1].x + 140 + 200 * width,
						355 + 200 * width + ( serifWidth - 75 )
					) - (75)
					y: (( 350 / 660 ) * capHeight * crossbar + ( 15 / 90 ) * thickness * 0.25) + ( (capHeight - ( 25 / 90 ) * thickness) - (( 350 / 660 ) * capHeight * crossbar + ( 15 / 90 ) * thickness * 0.25) ) * 0.55 - (3)
					# y: contours[1].nodes[3].y
					dirIn: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 100 / 90 ) * thickness * opticThickness
						angle: 180 + 'deg'
						distr: 0.75
					})
				3:
					x: contours[0].nodes[1].expandedTo[1].x + ( contours[1].nodes[2].expandedTo[1].x - contours[0].nodes[1].expandedTo[1].x ) * Math.min( 0.7, 0.4 * Math.sqrt( width ) )
					y: ( 350 / 660 ) * capHeight * crossbar
					typeOut: 'line'
					expand: Object({
						width: ( 15 / 90 ) * thickness
						angle: 90 + 'deg'
						distr: 0.25
					})
				4:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[1].nodes[3].expandedTo[0].y
					expand: Object({
						width: ( 15 / 90 ) * thickness
						angle: 90 + 'deg'
						distr: 0
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: 0
					typeOut: 'line'
					expand: Object({
						width: ( 25 / 90 ) * thickness
						angle: 180 + 90 + 'deg'
						distr: 1
					})
				1:
					x: contours[0].nodes[1].expandedTo[1].x + ( contours[2].nodes[2].expandedTo[0].x - contours[0].nodes[1].expandedTo[1].x ) * Math.min( 0.8, 0.5 * Math.sqrt( width ) )
					y: 0
					type: 'smooth'
					expand: Object({
						width: ( 27 / 90 ) * thickness
						angle: 180 + 112 + 'deg'
						distr: 1
					})
				2:
					x: Math.max(
						contours[0].nodes[1].expandedTo[1].x + 195 + 200 * width,
						410 + 200 * width + ( serifWidth - 75 )
					) - (79)
					y: ( 180 / 660 ) * capHeight
					y: (( 25 / 90 ) * thickness) + ( contours[2].nodes[4].expandedTo[0].y - (( 25 / 90 ) * thickness) ) * 0.5
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 105 / 90 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[0].nodes[1].expandedTo[1].x + ( contours[2].nodes[2].expandedTo[0].x - contours[0].nodes[1].expandedTo[1].x ) * Math.min( 0.7, 0.3 * Math.sqrt( width ) )
					y: contours[2].nodes[4].expandedTo[0].y
					typeOut: 'line'
					dirIn: 0 + 'deg'
					expand: Object({
						width: ( 36 / 90 ) * thickness
						angle: 33 + 'deg'
						distr: 0
					})
				4:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[1].nodes[3].y + (5)
					expand: Object({
						width: ( 15 / 90 ) * thickness
						angle: 180 - 90 + 'deg'
						distr: 1
					})
		3:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[2].nodes[0].expandedTo[0].y
				1:
					x: contours[0].nodes[0].expandedTo[1].x
					y: Math.max(
						contours[0].nodes[0].expandedTo[1].y,
						contours[2].nodes[0].expandedTo[0].y
					)
					dirOut: - 90 + 'deg'
				2:
					x: contours[0].nodes[0].expandedTo[1].x + Math.min(
						contours[3].nodes[1].y - contours[3].nodes[0].y,
						25
					)
					y: contours[2].nodes[0].expandedTo[0].y
					typeOut: 'line'
	components:
		0:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].y
				1:
					x: contours[0].nodes[0].expandedTo[0].x
					y: contours[0].nodes[0].y
				2:
					anchorLine: 0
					right: false
		1:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].y
				1:
					x: contours[0].nodes[1].expandedTo[0].x
					y: contours[0].nodes[1].y
				2:
					anchorLine: capHeight
					directionY: -1
					right: false
