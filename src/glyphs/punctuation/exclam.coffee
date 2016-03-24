exports.glyphs['exclam'] =
	unicode: '!'
	glyphName: 'exclam'
	characterName: 'EXCLAMATION MARK'
	ot:
		advanceWidth: contours[0].nodes[1].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 60 * spacing
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
					x: contours[1].nodes[2].x
					y: contours[1].nodes[2].y + 75
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 12 / 90 ) * thickness
						angle: 0 + 'deg'
						distr: 0.5
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x
					y: capHeight - Math.max( 40, ( 60 / 90 ) * thickness )
					dirOut: 0 + 'deg'
					expand: Object({
						width: Math.max( 40, ( 110 / 90 ) * thickness )
						angle: 0 + 'deg'
						distr: 0.5
					})
		1:
			skeleton: false
			closed: true
			nodes:
				0:
					x: spacingLeft + ( 65 / 90 ) * thickness
					y: - overshoot
					dirOut: 180 + 'deg'
					type: 'smooth'
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
					dirOut: 90 + 'deg'
					type: 'smooth'
				2:
					x: contours[1].nodes[0].x
					y: contours[1].nodes[0].y + Math.max(
						40,
						Math.min(
							160,
							thickness * ( 130 / 90 )
						)
					)
					dirOut: 0 + 'deg'
					type: 'smooth'
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
					dirOut: - 90 + 'deg'
					type: 'smooth'
		2:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[0].x
					y: contours[0].nodes[1].expandedTo[0].y
					dirOut: Utils.lineAngle( contours[0].nodes[0].expandedTo[0].point, contours[0].nodes[1].expandedTo[0].point )
				1:
					x: contours[0].nodes[1].x
					y: capHeight + overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
				2:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].expandedTo[1].y
					dirIn: Utils.lineAngle( contours[0].nodes[0].expandedTo[1].point, contours[0].nodes[1].expandedTo[1].point )
