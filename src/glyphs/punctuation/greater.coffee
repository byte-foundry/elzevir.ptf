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
		spacingLeft: 50 * spacing + 75
		spacingRight: 50 * spacing + 40
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
					expand:
						width: ( 45 / 90 ) * thickness
						angle: - 90 + 'deg'
						distr: 0
				1:
					x: Math.min(
						contours[0].nodes[0].x + 200 * width + 215 - 10,
						contours[0].nodes[0].x + 200 * width + 215 - ( 10 / 90 ) * thickness
					)
					y: contours[1].nodes[1].expandedTo[1].y + ( contours[0].nodes[0].expandedTo[1].y - contours[1].nodes[1].expandedTo[1].y ) * 0.5
					typeIn: 'line'
					expand:
						width: ( 40 / 90 ) * thickness
						angle: - 90 + 'deg'
						distr: 0.66
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].x
					y: contours[0].nodes[1].y
					typeOut: 'line'
					expand:
						width: ( 40 / 90 ) * thickness
						angle: 90 + 'deg'
						distr: 0.66
				1:
					x: contours[0].nodes[0].x
					y: 50
					typeIn: 'line'
					expand:
						width: ( 45 / 90 ) * thickness
						angle: 90 + 'deg'
						distr: 0
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
					typeIn: 'line'
				2:
					x: contours[0].nodes[0].x + 200 * width + 215
					y: Math.min(
						contours[0].nodes[1].y,
						Utils.onLine({
							x: contours[0].nodes[0].x + 200 * width + 215
							on: [ contours[1].nodes[1].expandedTo[0], contours[1].nodes[0].expandedTo[0] ]
						})
					)
					typeOut: 'line'
					typeIn: 'line'
				3:
					x: contours[0].nodes[0].x + 200 * width + 215
					y: Math.max(
						contours[0].nodes[1].y,
						Utils.onLine({
							x: contours[0].nodes[0].x + 200 * width + 215
							on: [ contours[0].nodes[0].expandedTo[0], contours[0].nodes[1].expandedTo[0] ]
						})
					)
					typeIn: 'line'
