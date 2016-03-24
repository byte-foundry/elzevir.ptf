exports.glyphs['equal'] =
	unicode: '='
	glyphName: 'equal'
	characterName: 'EQUALS SIGN'
	ot:
		advanceWidth: contours[0].nodes[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	parameters:
		spacingLeft: 70 * spacing
		spacingRight: 70 * spacing
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + (14/90) * thickness
					y: ( 375 / 500 ) * xHeight - (20)
					y: xHeight / 2 + 50
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 40 / 90 ) * thickness
						angle: - 90 + 'deg'
						distr: 0.5
					})
				1:
					x: 250 + 200 * width
					y: contours[0].nodes[0].y
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 40 / 90 ) * thickness
						angle: - 90 + 'deg'
						distr: 0.5
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[0].x
					y: ( 225 / 500 ) * xHeight - (20)
					y: xHeight / 2 - 50
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 40 / 90 ) * thickness
						angle: - 90 + 'deg'
						distr: 0.5
					})
				1:
					x: contours[0].nodes[1].x
					y: contours[1].nodes[0].y
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 40 / 90 ) * thickness
						angle: - 90 + 'deg'
						distr: 0.5
					})
