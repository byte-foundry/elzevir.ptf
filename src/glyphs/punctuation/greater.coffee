exports.glyphs['greater'] =
	unicode: '>'
	glyphName: 'greater'
	characterName: 'GREATER-THAN SIGN'
	ot:
		advanceWidth: contours[2].nodes[2].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 75 * spacing
		spacingRight: 40 * spacing
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
					y: xHeight
					typeOut: 'line'
					expand: Object({
						width: ( 45 / 90 ) * thickness
						angle: - 90 + 'deg'
						distr: 0
					})
				1:
					x: Math.min(
						290 + 200 * width - 10,
						290 + 200 * width - ( 10 / 90 ) * thickness
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
					x: 290 + 200 * width
					y: Math.min(
						contours[0].nodes[1].y,
						Utils.onLine({
							x: 290 + 200 * width
							on: [ contours[1].nodes[1].expandedTo[0].point, contours[1].nodes[0].expandedTo[0].point ]
						})
					)
					typeOut: 'line'
				3:
					x: 290 + 200 * width
					y: Math.max(
						contours[0].nodes[1].y,
						Utils.onLine({
							x: 290 + 200 * width
							on: [ contours[0].nodes[0].expandedTo[0].point, contours[0].nodes[1].expandedTo[0].point ]
						})
					)
					typeOut: 'line'
