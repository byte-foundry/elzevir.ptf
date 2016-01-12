exports.glyphs['u'] =
	unicode: 'u'
	glyphName: 'u'
	characterName: 'LATIN SMALL LETTER U'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 90 * spacing + ( (22) / 90 ) * thickness + ( serifWidth - 75 )
		spacingRight: 110 * spacing + ( serifWidth - 75 )
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: 0
			y: 0
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: xHeight - serifHeight - serifCurve * spurHeight
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: 155 + (2)
					dirOut: - 90 + 'deg'
					expand: Object({
						width: ( 90 / 90 ) * thickness
						angle: 6 + 'deg'
						distr: 0.25
					})
				2:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[3].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) * 0.3
					y: - overshoot
					dirOut: 0 + 'deg'
					tensionIn: 1.1
					tensionOut: 1.2
					type: 'smooth'
					expand: Object({
						width: ( 92 / 90 ) * thickness
						angle: 40 + 'deg'
						distr: 0
					})
				3:
					x: contours[1].nodes[0].expandedTo[0].x + ( 10 / 90 ) * thickness
					y: 20 + 10 * width + Math.max(35, ( 35 / 90 ) * thickness )
					dirIn: - 180 + Math.max(
						28,
						Math.min(
							110,
							( 80 / 90 ) * thickness
						) - 51 * width
					) + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 10 / 90 ) * thickness
						angle: 90 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Math.max(
						contours[0].nodes[1].expandedTo[1].x + thickness * 0.25 + serifWidth - 75,
						200 * width + 195 + serifWidth - 75
					) + (22)
					y: xHeight - serifHeight - serifCurve * spurHeight
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[1].nodes[0].x
					y: 0 + serifHeight + serifCurve
					dirOut: - 90 + 'deg'
					expand: Object({
						width: ( 90 / 90 ) * thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
	components:
		0:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].y
				1:
					x: contours[0].nodes[0].expandedTo[0].x
					y: contours[0].nodes[0].y
				2:
					anchorLine: xHeight
					leftWidth: - 12
					right: false
					directionY: -1
		1:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[1].nodes[0].expandedTo[1].x
					y: contours[1].nodes[0].y
				1:
					x: contours[1].nodes[0].expandedTo[0].x
					y: contours[1].nodes[0].y
				2:
					anchorLine: xHeight
					leftWidth: - 12
					right: false
					directionY: -1
		2:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[1].nodes[1].expandedTo[1].x
					y: contours[1].nodes[1].y
				1:
					x: contours[1].nodes[1].expandedTo[0].x
					y: contours[1].nodes[1].y
				2:
					anchorLine: - overshoot
					rightWidth: - 12
					left: false
					attaque: true
					serifAperture: true
					attaqueAngle: 6
			parentParameters:
				serifMedian: 0.77 * serifMedian
