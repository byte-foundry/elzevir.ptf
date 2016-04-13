exports.glyphs['question'] =
	unicode: '?'
	glyphName: 'question'
	characterName: 'QUESTION MARK'
	ot:
		advanceWidth: contours[0].nodes[4].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 60 * spacing
		spacingRight: 35 * spacing
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
					x: (contours[0].nodes[6].expandedTo[1].x + ( (138 + 200 * width - (18)) - contours[0].nodes[6].expandedTo[1].x ) * 0.3) + 11 + ( 6 / 90 ) * thickness
					y: Math.min(
						160,
						thickness * ( 130 / 90 )
					) + ( 75 / 660 ) * capHeight
					typeOut: 'line'
					expand: Object({
						width: ( 12 / 90 ) * thickness
						angle: 0 + 'deg'
						distr: 0.5
					})
				1:
					x: contours[0].nodes[0].x
					y: ( 360 / 660 ) * capHeight
					typeOut: 'line'
					expand: Object({
						width: ( 52 / 90 ) * thickness
						angle: 0 + 'deg'
						distr: 0.5
					})
				2:
					x: Utils.onLine({
						y: Math.max(
							contours[0].nodes[1].y - ( 55 / 90 ) * thickness,
							contours[0].nodes[0].y + 30
						)
						on: [ contours[0].nodes[0].expandedTo[1].point, contours[0].nodes[1].expandedTo[1].point ]
					})
					y: Math.max(
						contours[0].nodes[1].y - ( 55 / 90 ) * thickness,
						contours[0].nodes[0].y + 30
					)
					typeOut: 'line'
					expand: Object({
						width: ( 75 / 90 ) * thickness
						angle: - 66 + 'deg'
						distr: 1
					})
				3:
					x: contours[0].nodes[2].x + 35
					y: contours[0].nodes[2].y
					dirOut: 0 + 'deg'
					tensionOut: 1.4
					expand: Object({
						width: ( 75 / 90 ) * thickness
						angle: - 66 + 'deg'
						distr: 1
					})
				4:
					x: 138 + 200 * width - (18)
					y: contours[0].nodes[3].expandedTo[1].y + ( contours[0].nodes[5].expandedTo[1].y - contours[0].nodes[3].expandedTo[1].y ) * 0.35
					y: contours[0].nodes[3].expandedTo[1].y + ( ( contours[0].nodes[5].y - ( Math.sin( - 26 * Math.PI / 180 ) * ( 23 / 90 ) * thickness ) ) - contours[0].nodes[3].expandedTo[1].y ) * 0.35
					dirOut: 90 + 'deg'
					tensionIn: 0.6
					type: 'smooth'
					expand: Object({
						width: ( 23 / 90 ) * thickness
						angle: - 26 + 'deg'
						distr: 0.25
					})
				5:
					x: 128
					x: contours[0].nodes[6].expandedTo[1].x + ( contours[0].nodes[4].expandedTo[0].x - contours[0].nodes[6].expandedTo[1].x ) * 0.3
					y: capHeight + overshoot
					dirIn: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 76 / 90 ) * thickness
						angle: 180 - 68 + 'deg'
						distr: 1
					})
				6:
					x: spacingLeft - (12)
					y: capHeight - Math.max(
						( 55 / 90 ) * thickness,
						55
					) - (10)
					dirIn: Math.PI * Math.max(
						(90 - ( 45 / 90 ) * thickness),
						45
					) / 180
					expand: Object({
						width: ( 55 / 90 ) * thickness
						angle: Math.PI + contours[0].nodes[6].dirIn - Math.PI / 2
						distr: 0.75
					})
		1:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[6].expandedTo[1].x
					y: contours[0].nodes[6].expandedTo[1].y
					dirOut: 90 + 'deg'
					type: 'smooth'
				1:
					x: contours[0].nodes[5].expandedTo[1].x
					y: contours[0].nodes[5].expandedTo[1].y
					dirIn: 180 + 'deg'
					typeOut: 'line'
				2:
					x: contours[0].nodes[5].expandedTo[0].x
					y: contours[0].nodes[5].expandedTo[0].y
					dirOut: 180 + 'deg'
				3:
					x: contours[0].nodes[6].expandedTo[0].x
					y: contours[0].nodes[6].expandedTo[0].y
					dirIn: 0 + 'deg'
					dirOut: 180 + 'deg'
		2:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[0].x
					y: contours[0].nodes[1].expandedTo[0].y
					dirOut: Utils.lineAngle( contours[0].nodes[0].expandedTo[0].point, contours[0].nodes[1].expandedTo[0].point )
				1:
					x: contours[0].nodes[2].expandedTo[0].x
					y: contours[0].nodes[2].expandedTo[0].y
					dirIn: 180 + 'deg'
					typeOut: 'line'
	components:
		0:
			base: 'dot'
			copy: true
			parentAnchors:
				0:
					x: contours[0].nodes[0].x
					y: - overshoot
