exports.glyphs['parenright'] =
	unicode: ')'
	glyphName: 'parenright'
	characterName: 'RIGHT PARENTHESIS'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 60
		spacingRight: 50 * spacing + 10
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
					x: contours[0].nodes[1].expandedTo[1].x + ( 30 / 90 ) * thickness + 70 * width
					y: capHeight + 30
					dirOut: - 130 + 'deg'
					dirOut: Math.min(
						Math.max(
							- 80 - ( 50 / 90 ) * thickness,
							- 150
						),
						- 130
					) + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 15 / 90 ) * thickness
						angle: contours[0].nodes[0].dirOut + Math.PI / 2
						distr: 0
					})
				1:
					x: spacingLeft + (17/90) * thickness
					y: ( contours[0].nodes[0].y + contours[0].nodes[2].y ) / 2
					dirOut: - 90 + 'deg'
					type: 'smooth'
					tensionIn: 1.3
					tensionOut: 1.3
					expand: Object({
						width: ( 70 / 90 ) * thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				2:
					x: contours[0].nodes[0].x
					y: ( 150 / 230 ) * descender
					dirIn: 130 + 'deg'
					dirIn: Math.max(
						Math.min(
							80 + ( 50 / 90 ) * thickness,
							150
						),
						130
					) + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 15 / 90 ) * thickness
						angle: contours[0].nodes[2].dirIn - Math.PI / 2
						distr: 0
					})
			transformOrigin: Array( (contours[0].nodes[2].expandedTo[0].x + spacingRight) / 2, 0 )
			transforms: Array(
				['translateY', ( (capHeight + 30) + (( 150 / 230 ) * descender) ) ],
				['rotate', 180 + 'deg']
			)
