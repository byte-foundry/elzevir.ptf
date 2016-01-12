exports.glyphs['j'] =
	unicode: 'j'
	glyphName: 'j'
	characterName: 'LATIN SMALL LETTER J'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 120 * spacing + ( (45) / 90 ) * thickness + ( serifWidth - 75 )
		spacingRight: 120 * spacing + ( serifWidth - 75 )
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft - 40 + 40 * width
					y: xHeight - serifHeight - serifCurve * spurHeight
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.5
					})
				1:
					x: contours[0].nodes[0].x
					y: 0 + (15)
					dirOut: - 90 + 'deg'
					tensionOut: 1.4
					expand: Object({
						width: ( 94.5 / 90 ) * thickness
						angle: 15 + 'deg'
						distr: 0.5
					})
				2:
					x: 10 + (2)
					y: ( 225 / 250 ) * descender - (20)
					tensionIn: 1.25
					dirIn: Math.min(
						32,
						Math.max(
							10,
							74 - ( 32 / 90 ) * thickness * width
						)
					) + 'deg'
					expand: Object({
						width: ( 15 / 90 ) * thickness
						angle: - 55 + 'deg'
						distr: 0.25
					})
	components:
		0:
			base: 'dot_accent'
			parentAnchors:
				0:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) * ( 40 / 90 )
					y: xHeight + diacriticHeight
		1:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].y
				1:
					x: contours[0].nodes[0].expandedTo[0].x
					y: contours[0].nodes[0].y
				2:
					anchorLine: xHeight + overshoot
					right: false
					attaque: true
					attaqueAngle: 17
					directionY: -1
					leftWidth: - 12
			parentParameters:
				serifHeight: serifHeight + ( 22 * (- ( 1 / (15 + serifHeight) - 1 ) ) ) * spurHeight
				serifMedian: 0.266 * serifMedian
