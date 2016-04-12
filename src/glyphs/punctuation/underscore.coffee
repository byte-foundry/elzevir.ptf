exports.glyphs['underscore'] =
	unicode: '_'
	glyphName: 'underscore'
	characterName: 'LOW LINE'
	ot:
		advanceWidth: contours[0].nodes[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
<<<<<<< HEAD
=======
	parameters:
		spacingLeft: 5 * spacing
		spacingRight: 5 * spacing
>>>>>>> 2c4e9f4... more punctuation signs
	tags: [
		'all',
		'latin',
		'punctuation'
	]
<<<<<<< HEAD
	parameters:
		spacingLeft: 50 * spacing + (0)
		spacingRight: 50 * spacing
=======
>>>>>>> 2c4e9f4... more punctuation signs
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
<<<<<<< HEAD
					y: - 100
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 70 / 90 ) * thickness
						angle: 90 + 'deg'
						distr: 0.5
					})
				1:
					x: 400 + 200 * width
					y: contours[0].nodes[0].y
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 70 / 90 ) * thickness
						angle: 90 + 'deg'
						distr: 0.5
=======
					y: - 50
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 50 / 90 ) * thickness
						angle: - 90 + 'deg'
						distr: 0
					})
				1:
					x: 450 * width
					y: - 50
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 50 / 90 ) * thickness
						angle: - 90 + 'deg'
						distr: 0
>>>>>>> 2c4e9f4... more punctuation signs
					})
