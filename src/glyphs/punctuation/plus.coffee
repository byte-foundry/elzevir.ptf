exports.glyphs['plus'] =
	unicode: '+'
	glyphName: 'plus'
	characterName: 'PLUS SIGN'
	ot:
		advanceWidth: contours[0].nodes[1].expandedTo[1].x + 80 * spacing
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 75 * spacing
		spacingRight: 75 * spacing
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: xHeight * ( 230 / 500 ) + (20)
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 40 / 90 )
						angle: 90 + 'deg'
						distr: 0.5
					})
				1:
					x: Math.min(
						275 + 200 * width,
						xHeight
					)
					y: xHeight * ( 230 / 500 ) + (20)
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 40 / 90 )
						angle: 90 + 'deg'
						distr: 0.5
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].x + ( contours[0].nodes[1].x - contours[0].nodes[0].x ) / 2
					y: contours[0].nodes[0].y + ( ( contours[0].nodes[1].x - contours[0].nodes[0].x ) / 2 )
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 44 / 90 )
						angle: 0 + 'deg'
					})
				1:
					x: contours[1].nodes[0].x
					y: contours[0].nodes[0].y - ( ( contours[0].nodes[1].x - contours[0].nodes[0].x ) / 2 )
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 44 / 90 )
						angle: 0 + 'deg'
					})
