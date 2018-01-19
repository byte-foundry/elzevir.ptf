exports.glyphs['exclamdown'] =
	unicode: '¡'
	glyphName: 'exclamdown'
	characterName: 'INVERTED EXCLAMATION MARK'
	ot:
		advanceWidth: contours[0].nodes[1].expandedTo[1].x + spacingRight
	transformOrigin: Object({x: 0, y: 0})
	transforms: Array(
		['translateX', - (contours[0].nodes[1].expandedTo[1].x + spacingRight) ]
		['translateY', - xHeight],
		['scaleX', -1],
		['scaleY', -1],
		['skewX',( slant ) / 180 * Math.PI],
	)
	parameters:
		spacingLeft: 50 * spacing + 60
		spacingRight: 50 * spacing + 60
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
					x: contours[1].nodes[2].x
					y: contours[1].nodes[2].y + 75
					dirOut: 0
					typeOut: 'line'
					expand:
						width: ( 12 / 90 ) * thickness
						angle: 0
						distr: 0.5
				1:
					x: contours[0].nodes[0].expandedTo[0].x
					y: capHeight - Math.max( 40, ( 60 / 90 ) * thickness )
					dirOut: 0
					expand:
						width: Math.max( 40, ( 110 / 90 ) * thickness )
						angle: 0
						distr: 0.5
		1:
			skeleton: false
			closed: true
			nodes:
				0:
					x: spacingLeft + ( 65 / 90 ) * thickness
					y: - overshoot
					dirOut: Math.PI
					typeIn: 'smooth'
				1:
					x: contours[1].nodes[0].x - Math.max(
						40,
						Math.min(
							160,
							thickness * ( 130 / 90 )
						)
					) / 2
					y: contours[1].nodes[0].y + Math.max(
						40,
						Math.min(
							160,
							thickness * ( 130 / 90 )
						)
					) / 2
					dirOut: Math.PI / 2
					typeIn: 'smooth'
				2:
					x: contours[1].nodes[0].x
					y: contours[1].nodes[0].y + Math.max(
						40,
						Math.min(
							160,
							thickness * ( 130 / 90 )
						)
					)
					dirOut: 0
					typeIn: 'smooth'
				3:
					x: contours[1].nodes[0].x + Math.max(
						40,
						Math.min(
							160,
							thickness * ( 130 / 90 )
						)
					) / 2
					y: contours[1].nodes[0].y + Math.max(
						40,
						Math.min(
							160,
							thickness * ( 130 / 90 )
						)
					) / 2
					dirOut:( - 90 ) / 180 * Math.PI
					typeIn: 'smooth'
		2:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[0].x
					y: contours[0].nodes[1].expandedTo[0].y
					dirOut: Utils.lineAngle({x: contours[0].nodes[0].expandedTo[0].x, y: contours[0].nodes[0].expandedTo[0].y}, {x: contours[0].nodes[1].expandedTo[0].x, y: contours[0].nodes[1].expandedTo[0].y})
				1:
					x: contours[0].nodes[1].x
					y: capHeight + overshoot
					dirOut: 0
					type: 'smooth'
				2:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].expandedTo[1].y
					dirIn: Utils.lineAngle({x: contours[0].nodes[0].expandedTo[1].x, y: contours[0].nodes[0].expandedTo[1].y}, {x: contours[0].nodes[1].expandedTo[1].x, y: contours[0].nodes[1].expandedTo[1].y})
