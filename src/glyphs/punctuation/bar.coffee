exports.glyphs['bar'] =
	unicode: '|'
	glyphName: 'bar'
	characterName: 'VERTICAL LINE'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	parameters:
		spacingLeft: 50 * spacing + 60 
		spacingRight: 50 * spacing + 60 
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + ( 70 / 90 ) * thickness / 2
					y: ascenderHeight + 50
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 70 / 90 ) * thickness
						angle: 0 + 'deg'
						distr: 0.5
					})
				1:
					x: contours[0].nodes[0].x
					y: ( 200 / 250 ) * descender - 50
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 70 / 90 ) * thickness
						angle: 0 + 'deg'
						distr: 0.5
					})
