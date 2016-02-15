exports.glyphs['b'] =
	unicode: 'b'
	glyphName: 'b'
	characterName: 'LATIN SMALL LETTER B'
	ot:
		advanceWidth: contours[1].nodes[2].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 95 * spacing + (22) + ( serifWidth - 75 )
		spacingRight: 55 * spacing
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			junction: Utils.pointOnCurve( contours[1].nodes[3].expandedTo[0], contours[1].nodes[4].expandedTo[0], 135, false, 10 )
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				2:
					x: spacingLeft
					y: ascenderHeight - serifHeight - serifCurve * spurHeight
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[2].x
					y: ( ( 100 + ( 60 / 90 ) * thickness ) / 500 ) * xHeight
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				0:
					x: contours[0].nodes[1].expandedTo[0].x
					y: 0
					typeOut: 'line'
					expand: Object({
						width: ( 10 / 90 ) * thickness
						angle: 0 + 'deg'
						distr: 0
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: xHeight - 10 * width - Math.max(25, ( 25 / 90 ) * thickness ) - (4)
					dirOut: Math.max(
						28,
						Math.min(
							110,
							( 80 / 90 ) * thickness
						) - 51 * width
					) + 'deg'
					expand: Object({
						width: ( 15 / 90 ) * thickness
						angle: - 90 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[1].nodes[0].expandedTo[0].x + ( contours[1].nodes[2].expandedTo[0].x - contours[1].nodes[0].expandedTo[0].x ) * 0.45
					y: xHeight + overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 80 / 90 ) * thickness
						angle: - 150 + 'deg'
						distr: 0
					})
				2:
					x: Math.max(
						contours[0].nodes[1].expandedTo[1].x + ( ( 103 / 90 ) * thickness ) * 0.25 + serifWidth - 75,
						200 * width + 345 + serifWidth - 75
					) - (71)
					y: ( ( 275 - ( 5 / 90 ) * thickness ) / 500 ) * xHeight - (30)
					dirOut: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 103 / 90 ) * thickness
						angle: Math.min(
							- 157,
							- 142 - ( 15 / 90 ) * thickness
						) + 'deg'
						distr: 0.75
					})
				3:
					x: contours[1].nodes[0].expandedTo[1].x + ( contours[1].nodes[2].expandedTo[1].x - contours[1].nodes[0].expandedTo[1].x ) * 0.45
					y: - overshoot
					dirOut: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 25 / 90 ) * thickness
						angle: 90 + 'deg'
						distr: 0
					})
				4:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].y
					dirIn: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 20 / 90 ) * thickness
						angle: 180 + 173.7 + 'deg'
						distr: 1
					})
		2:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[1].nodes[3].expandedTo[0].x
					y: contours[1].nodes[3].expandedTo[0].y
					# tensionOut: Math.min(
					# 	1.35,
					# 	0.984 + ( 0.35 / 90 ) * thickness
					# )
					tensionOut: 1.35
					dirOut: 180 + 'deg'
				1:
					x: Math.max(
						contours[0].nodes[0].expandedTo[1].x + ( contours[1].nodes[3].expandedTo[0].x - contours[0].nodes[0].expandedTo[1].x ) * Math.min( 0.3, ( 0.3 / 90 ) * thickness ),
						contours[0].nodes[0].expandedTo[1].x
					)
					# y: contours[0].nodes[1].y * Math.max(
					# 	0.18,
					# 	( 1 - ( 0.82 / 90 ) * thickness )
					# )
					y: contours[0].nodes[1].y * 0.18
					type: 'smooth'
					# dirIn: Math.min( 0, - 94 + thickness ) + 'deg'
					dirIn: 0 + 'deg'
				2:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].expandedTo[1].y
					dirIn: Utils.lineAngle( contours[0].nodes[0].expandedTo[1].point, contours[0].nodes[1].expandedTo[1].point )
					typeOut: 'line'
				3:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].expandedTo[1].y
					typeOut: 'line'
				4:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].expandedTo[1].y
					dirOut: - 90 + 'deg'
				5:
					x: contours[1].nodes[3].expandedTo[1].x
					y: contours[1].nodes[3].expandedTo[1].y
					typeOut: 'line'
	components:
		0:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[0].nodes[2].expandedTo[1].x
					y: contours[0].nodes[2].y
				1:
					x: contours[0].nodes[2].expandedTo[0].x
					y: contours[0].nodes[2].y
				2:
					anchorLine: ascenderHeight
					right: false
					attaque: true
					attaqueAngle: 17
					directionY: -1
					leftWidth: - 12
			parentParameters:
				serifHeight: serifHeight + ( 22 * (- ( 1 / (15 + serifHeight) - 1 ) ) ) * spurHeight
				serifMedian: 0.266 * serifMedian
