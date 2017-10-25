exports.glyphs['zero'] =
	unicode: '0'
	glyphName: 'zero'
	characterName: 'DIGIT ZERO'
	ot:
		advanceWidth: contours[0].nodes[2].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 50
		spacingRight: 50 * spacing + 50
	tags: [
		'all',
		'latin',
		'figures'
	]
	contours:
		0:
			skeleton: true
			closed: true
			nodes:
				0:
					x: spacingLeft + (25/90) * thickness
					y: xHeight / 2
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand:
						width: ( 100 / 90 ) * thickness
						angle: 0 + 'deg'
						distr: 0.25
				1:
					x: contours[0].nodes[0].expandedTo[1].x + ( contours[0].nodes[2].expandedTo[1].x - contours[0].nodes[0].expandedTo[1].x ) * 0.5
					y: xHeight + overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand:
						width: ( 20 / 90 ) * thickness
						angle: - 90 + 'deg'
						distr: 0
				2:
					x: contours[0].nodes[0].expandedTo[0].x + ( xHeight + overshoot * 2 ) + ( 200 * width - 200 ) - (25)
					y: contours[0].nodes[0].y
					dirOut: - 90 + 'deg'
					type: 'smooth'
					expand:
						width: ( 100 / 90 ) * thickness
						angle: 180 + 'deg'
						distr: 0.25
				3:
					x: contours[0].nodes[1].x
					y: - overshoot
					dirOut: 180 + 'deg'
					expand:
						width: ( 20 / 90 ) * thickness
						angle: 90 + 'deg'
						distr: 0
