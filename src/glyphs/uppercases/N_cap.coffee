exports.glyphs['N_cap'] =
	unicode: 'N'
	glyphName: 'N'
	characterName: 'LATIN CAPITAL LETTER N'
	ot:
		advanceWidth: contours[2].nodes[1].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 40 * spacing + serifWidth
		spacingRight: 30 * spacing + serifWidth * ( 85 / 75 )
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: contours[0].nodes[0].expandedTo[0].x + ( contours[2].nodes[0].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
			y: capHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + (7)
					y: capHeight - serifHeight - serifCurve
					expand: Object({
						width: ( 30 / 90 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: 0 + serifHeight + serifCurve
					typeOut: 'line'
					expand: Object({
						width: ( 30 / 90 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].x
					y: capHeight - ( 57 / 90 ) * thickness
					typeOut: 'line'
					expand: Object({
						width: ( 100 / 90 ) * thickness * opticThickness
						angle: Math.asin( ( ( 57 / 90 ) * thickness ) / ( ( 100 / 90 ) * thickness * opticThickness ) )
						distr: 0
					})
				1:
					x: contours[2].nodes[1].x
					y: ( 113 / 90 ) * thickness
					dirOut: 0 + 'deg'
					expand: Object({
						width: ( 100 / 90 ) * thickness * opticThickness
						angle: 180 - 133 + 'deg' # Math.acos( ( ( 110 / 90 ) * thickness ) / ( ( 100 / 90 ) * thickness * opticThickness ) )
						distr: 1
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x + 255 + 200 * width - (7)
					y: capHeight - serifHeight - serifCurve
					typeOut: 'line'
					expand: Object({
						width: ( 30 / 90 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.75
					})
				1:
					x: contours[2].nodes[0].x
					y: contours[1].nodes[1].expandedTo[0].y + ( contours[1].nodes[1].expandedTo[1].y - contours[1].nodes[1].expandedTo[0].y ) * 0.5
					typeOut: 'line'
					expand: Object({
						width: ( 30 / 90 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.75
					})
		3:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[1].nodes[1].expandedTo[1].x
					y: contours[1].nodes[1].expandedTo[1].y
					typeOut: 'line'
				1:
					x: contours[1].nodes[1].expandedTo[0].x
					y: contours[1].nodes[1].expandedTo[0].y
					typeOut: 'line'
				2:
					x: Math.min(
						Utils.onLine({
							y: contours[3].nodes[3].y
							on: [ contours[1].nodes[0].expandedTo[0].point, contours[1].nodes[1].expandedTo[0].point ]
						}),
						contours[3].nodes[3].x
					)
					y: contours[3].nodes[3].y
					typeOut: 'line'
				3:
					x: contours[2].nodes[1].expandedTo[1].x
					y: Math.max(
						- 20,
						- ( 20 / 90 ) * thickness
					)
					typeOut: 'line'
				4:
					x: contours[2].nodes[1].expandedTo[1].x
					y: contours[2].nodes[1].expandedTo[1].y
					typeOut: 'line'
		4:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[1].nodes[0].expandedTo[1].x
					y: contours[1].nodes[0].expandedTo[1].y
					typeOut: 'line'
				1:
					y: Utils.onLine({
						x: contours[0].nodes[1].expandedTo[1].x
						on: [ contours[1].nodes[0].expandedTo[0].point, contours[1].nodes[0].expandedTo[1].point ]
					})
					x: contours[0].nodes[1].expandedTo[1].x
					typeOut: 'line'
				2:
					x: contours[0].nodes[1].expandedTo[1].x
					y: capHeight
					typeOut: 'line'
	components:
		0:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].y
				1:
					x: contours[0].nodes[1].expandedTo[0].x
					y: contours[0].nodes[1].y
				2:
					anchorLine: 0
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
					anchorLine: capHeight
					right: false
					directionY: -1
		2:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[2].nodes[0].expandedTo[1].x
					y: contours[2].nodes[0].y
				1:
					x: contours[2].nodes[0].expandedTo[0].x
					y: contours[2].nodes[0].y
				2:
					anchorLine: capHeight
					directionY: -1
