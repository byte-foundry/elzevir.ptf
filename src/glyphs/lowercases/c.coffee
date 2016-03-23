exports.glyphs['c'] =
	unicode: 'c'
	glyphName: 'c'
	characterName: 'LATIN SMALL LETTER C'
	ot:
		advanceWidth: contours[0].nodes[4].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + (0)
		spacingRight: 50 * spacing
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: contours[0].nodes[2].expandedTo[0].x + ( contours[0].nodes[4].expandedTo[0].x - contours[0].nodes[2].expandedTo[0].x ) * 0.5
			y: xHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[4].expandedTo[0].x - 3
					y: Math.max(
						54,
						( ( ( 93 / 90 ) * thickness ) * Math.sin( 36 * (Math.PI / 180) ) ) + 5
					) + (7)
					dirOut: - 139 + Math.max(
						30,
						( 30 / 90 ) * thickness
					) - 30 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 13 / 90 ) * thickness
						angle: 122 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[2].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[0].x - contours[0].nodes[2].expandedTo[0].x ) * 0.50
					y: - overshoot
					dirOut: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 93 / 90 ) * thickness
						angle: 36 + 'deg'
						distr: 0
					})
				2:
					x: spacingLeft + ( 24 / 90 ) * thickness
					y: ( 240 / 500 ) * xHeight
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 101 / 90 ) * thickness
						angle: 20 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[0].nodes[2].expandedTo[1].x + ( contours[0].nodes[4].expandedTo[1].x - contours[0].nodes[2].expandedTo[1].x ) * 0.7
					y: xHeight + overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 27 / 90 ) * thickness
						angle: - 112 + 'deg'
						distr: 0
					})
				4:
					x: Math.min(
						contours[0].nodes[2].expandedTo[0].x + 160 + 200 * width,
						255 + 200 * width
					) - (20)
					x: contours[0].nodes[2].expandedTo[0].x + 160 + 200 * width - (20)
					y: xHeight - 20 - ( 80 / 500 ) * xHeight + (3)
					dirIn: 95 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 85 / 90 ) * thickness
						angle: 177 + 'deg'
						distr: 0.75
					})
		1:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[4].expandedTo[1].x
					y: contours[0].nodes[4].expandedTo[1].y
					dirOut: - 85 + 'deg'
				1:
					x: contours[0].nodes[4].expandedTo[1].x + ( contours[0].nodes[4].expandedTo[0].x - contours[0].nodes[4].expandedTo[1].x ) * ( 45 / 85 )
					y: contours[0].nodes[4].expandedTo[0].y - ( contours[0].nodes[4].expandedTo[0].x - contours[1].nodes[1].x )
					type: 'smooth'
					dirOut: 0 + 'deg'
				2:
					x: contours[0].nodes[4].expandedTo[0].x
					y: contours[0].nodes[4].expandedTo[0].y
					dirIn: - 90 + 'deg'
					typeOut: 'line'
