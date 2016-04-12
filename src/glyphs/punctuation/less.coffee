exports.glyphs['less'] =
	unicode: '<'
	glyphName: 'less'
	characterName: 'LESS-THAN SIGN'
	ot:
		advanceWidth: contours[0].nodes[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 40 * spacing
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
					x: 290 + 200 * width
					y: xHeight
					typeOut: 'line'
					expand: Object({
						width: ( 45 / 90 ) * thickness
						angle: - 90 + 'deg'
						distr: 0
					})
				1:
					x: Math.min(
						spacingLeft + 10,
						spacingLeft + ( 10 / 90 ) * thickness
					)
					y: contours[1].nodes[1].expandedTo[1].y + ( contours[0].nodes[0].expandedTo[1].y - contours[1].nodes[1].expandedTo[1].y ) * 0.5
					expand: Object({
						width: ( 40 / 90 ) * thickness
						angle: - 90 + 'deg'
						distr: 0.66
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].x
					y: contours[0].nodes[1].y
					typeOut: 'line'
					expand: Object({
						width: ( 40 / 90 ) * thickness
						angle: 90 + 'deg'
						distr: 0.66
					})
				1:
					x: contours[0].nodes[0].x
					y: 50
					expand: Object({
						width: ( 45 / 90 ) * thickness
						angle: 90 + 'deg'
						distr: 0
					})
		2:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[0].x
					y: contours[0].nodes[1].expandedTo[0].y
					typeOut: 'line'
				1:
					x: contours[1].nodes[0].expandedTo[0].x
					y: contours[1].nodes[0].expandedTo[0].y
					typeOut: 'line'
				2:
					x: spacingLeft
					y: Math.min(
						contours[0].nodes[1].y,
						Utils.onLine({
							x: spacingLeft
							on: [ contours[1].nodes[1].expandedTo[0].point, contours[1].nodes[0].expandedTo[0].point ]
						})
					)
					typeOut: 'line'
				3:
					x: spacingLeft
					y: Math.max(
						contours[0].nodes[1].y,
						Utils.onLine({
							x: spacingLeft
							on: [ contours[0].nodes[0].expandedTo[0].point, contours[0].nodes[1].expandedTo[0].point ]
						})
					)
					typeOut: 'line'
