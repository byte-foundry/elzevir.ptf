exports.glyphs['parenright'] =
	unicode: ')'
	glyphName: 'parenright'
	characterName: 'RIGHT PARENTHESIS'
	ot:
		advanceWidth: contours[0].nodes[1].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 10 * spacing + (0)
		spacingRight: 60 * spacing
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
					y: capHeight + 25
					dirOut: Math.max(
						Math.min(
							- 100 + ( 50 / 90 ) * thickness,
							- 30
						),
						- 50
					) + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 15 / 90 ) * thickness
						angle: contours[0].nodes[0].dirOut + Math.PI / 2
						distr: 0
					})
				1:
					x: 62 + ( 30 / 90 ) * thickness + 100 * width - (18/90) * thickness
					y: ( contours[0].nodes[0].y + contours[0].nodes[2].y ) / 2
					dirOut: - 90 + 'deg'
					type: 'smooth'
					tensionIn: 1.3
					tensionOut: 1.3
					expand: Object({
						width: ( 70 / 90 ) * thickness
						angle: 0 + 'deg'
						distr: 0.75
					})
				2:
					x: contours[0].nodes[0].x
					y: ( 150 / 230 ) * descender
					dirIn: Math.min(
						Math.max(
							100 - ( 50 / 90 ) * thickness,
							30
						),
						50
					) + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 15 / 90 ) * thickness
						angle: contours[0].nodes[2].dirIn - Math.PI / 2
						distr: 0
					})
