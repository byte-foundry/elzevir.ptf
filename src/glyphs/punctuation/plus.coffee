exports.glyphs['plus'] =
	unicode: '+'
	glyphName: 'plus'
	characterName: 'PLUS SIGN'
	ot:
		advanceWidth: contours[0].nodes[1].expandedTo[1].x + 80
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 75
		spacingRight: 50 * spacing + 75
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
					y: xHeight * ( 230 / 500 ) + (20)
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand:
						width: thickness * ( 40 / 90 )
						angle: 90 + 'deg'
						distr: 0.5
				1:
					x: contours[0].nodes[0].x + Math.min(
						200 * width + 200,
						xHeight * ( 400 / 500 )
					)
					y: xHeight * ( 230 / 500 ) + (20)
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand:
						width: thickness * ( 40 / 90 )
						angle: 90 + 'deg'
						distr: 0.5
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].x + ( contours[0].nodes[1].x - contours[0].nodes[0].x ) / 2
					y: contours[0].nodes[0].y + ( ( contours[0].nodes[1].x - contours[0].nodes[0].x ) / 2 )
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand:
						width: thickness * ( 44 / 90 )
						angle: 0 + 'deg'
						distr: 0.5
				1:
					x: contours[1].nodes[0].x
					y: contours[0].nodes[0].y - ( ( contours[0].nodes[1].x - contours[0].nodes[0].x ) / 2 )
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand:
						width: thickness * ( 44 / 90 )
						angle: 0 + 'deg'
						distr: 0.5
