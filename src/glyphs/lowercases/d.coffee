# TODO: winding rules
exports.glyphs['d'] =
	unicode: 'd'
	glyphName: 'd'
	characterName: 'LATIN SMALL LETTER D'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 55 * spacing + ( (23) / 90 ) * thickness
		spacingRight: 110 * spacing
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: contours[1].nodes[0].expandedTo[1].x + 50
			y: ascenderHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 240 + 200 * width - (5)
					y: xHeight - 80 - (25)
					dirOut: 110 + 'deg'
					tensionOut: 0.9
					expand: Object({
						width: ( 35 / 90 ) * thickness
						angle: - 135 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[2].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[0].x - contours[0].nodes[2].expandedTo[0].x ) *
						Math.max(
							0.55,
							Math.min(
								0.65,
								( 0.8 - 0.15 * width )
							)
						)
					y: xHeight + overshoot
					dirOut: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 25 / 90 ) * thickness
						angle: - 100 + 'deg'
						distr: 0
					})
				2:
					x: spacingLeft
					y: ( 230 / 500 ) * xHeight
					dirOut: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 100 / 90 ) * thickness
						angle: 20 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[0].nodes[2].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[0].x - contours[0].nodes[2].expandedTo[0].x ) * 0.5
					y: - overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 74 / 90 ) * thickness
						angle: 48 + 'deg'
						distr: 0
					})
				4:
					x: contours[0].nodes[0].expandedTo[1].x
					y: 69 + (0)
					dirIn: - 134 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 12 / 90 ) * thickness
						angle: 75 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].x - ( 11 / 90 ) * thickness
					y: 0 + serifHeight + serifCurve
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[1].nodes[0].x
					y: ascenderHeight - serifHeight - serifCurve * spurHeight
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
	components:
		0:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[1].nodes[0].expandedTo[1].x
					y: contours[1].nodes[0].y
				1:
					x: contours[1].nodes[0].expandedTo[0].x
					y: contours[1].nodes[0].y
				2:
					anchorLine: - overshoot
					rightWidth: - 12
					left: false
					attaque: true
					serifAperture: true
					attaqueAngle: 6
			parentParameters:
				serifMedian: 0.77 * serifMedian
		1:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[1].nodes[1].expandedTo[1].x
					y: contours[1].nodes[1].y
				1:
					x: contours[1].nodes[1].expandedTo[0].x
					y: contours[1].nodes[1].y
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
