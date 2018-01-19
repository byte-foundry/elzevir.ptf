exports.glyphs['bracketright'] =
	unicode: ']'
	glyphName: 'bracketright'
	characterName: 'RIGHT SQUARE BRACKET'
	ot:
		advanceWidth: contours[0].nodes[1].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 10
		spacingRight: 50 * spacing + 70
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
					x: 110 + (17/90) * thickness
					y: capHeight
					typeOut: 'line'
					expand:
						width: thickness * ( 70 / 90 )
						angle: 0
						distr: 0.25
				1:
					x: contours[0].nodes[0].x
					y: - 120
					typeOut: 'line'
					expand:
						width: thickness * ( 70 / 90 )
						angle: 0
						distr: 0.25
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[0].x
					y: capHeight
					typeOut: 'line'
					expand:
						width: thickness * ( 20 / 90 )
						angle:( - 90 ) / 180 * Math.PI
						distr: 0
				1:
					x: contours[1].nodes[0].x - 105
					y: contours[1].nodes[0].y
					typeOut: 'line'
					expand:
						width: thickness * ( 20 / 90 )
						angle:( - 90 ) / 180 * Math.PI
						distr: 0
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[0].x
					y: contours[0].nodes[1].expandedTo[0].y
					typeOut: 'line'
					expand:
						width: thickness * ( 20 / 90 )
						angle:( - 90 ) / 180 * Math.PI
						distr: 1
				1:
					x: contours[2].nodes[0].x - 105
					y: contours[2].nodes[0].y
					typeOut: 'line'
					expand:
						width: thickness * ( 20 / 90 )
						angle:( - 90 ) / 180 * Math.PI
						distr: 1
