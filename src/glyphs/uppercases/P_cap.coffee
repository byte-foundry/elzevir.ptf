exports.glyphs['P_cap'] =
	unicode: 'P'
	glyphName: 'P'
	characterName: 'LATIN CAPITAL LETTER P'
	ot:
		advanceWidth: contours[1].nodes[2].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 40 + ( serifWidth - 75 )
		spacingRight: 50 * spacing + 20 
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
					x: contours[0].nodes[1].expandedTo[1].x + 155 + 200 * width - (75)
					x: Math.max(
						contours[0].nodes[1].expandedTo[1].x + 155 + 200 * width,
						370 + 200 * width + ( serifWidth - 75 )
					) - (75)
					y: capHeight - ( capHeight - ( 295 / 660 ) * capHeight * crossbar ) * 0.5 - (0)
					dirIn: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 105 / 90 ) * thickness * opticThickness
						angle: 180 + 'deg'
						distr: 0.75
					})
				3:
					x: contours[0].nodes[1].expandedTo[1].x + ( contours[1].nodes[2].expandedTo[1].x - contours[0].nodes[1].expandedTo[1].x ) * Math.min( 0.7, 0.4 * Math.sqrt( width ) )
					y: ( 295 / 660 ) * capHeight * crossbar + (6)
					typeOut: 'line'
					expand: Object({
						width: ( 25 / 90 ) * thickness
						angle: 90 + 'deg'
						distr: 0.25
					})
				4:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[1].nodes[3].expandedTo[0].y
					expand: Object({
						width: ( 25 / 90 ) * thickness
						angle: 90 + 'deg'
						distr: 0
					})
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
