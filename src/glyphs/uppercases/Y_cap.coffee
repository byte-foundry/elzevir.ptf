exports.glyphs['Y_cap'] =
	unicode: 'Y'
	glyphName: 'Y'
	characterName: 'LATIN CAPITAL LETTER Y'
	ot:
		advanceWidth: contours[2].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 10 * spacing + ( 45 / 75 ) * serifWidth
		spacingRight: 5 * spacing + ( 50 / 75 ) * serifWidth
	tags: [
		'all',
		'latin',
		'uppercase'
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
					y: Math.max(
						Utils.onLine({
							x: contours[0].nodes[1].expandedTo[1].x
							on: [ contours[2].nodes[0].expandedTo[1].point, contours[2].nodes[1].expandedTo[1].point ]
						}),
						contours[0].nodes[1].expandedTo[1].y
					)
					x: contours[0].nodes[1].expandedTo[1].x
					expand: Object({
						width: ( 100 / 90 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 1
					})
				1:
					x: contours[1].nodes[0].expandedTo[0].x + ( contours[2].nodes[0].expandedTo[1].x - contours[1].nodes[0].expandedTo[0].x ) * 0.5
					y: 0 + serifHeight + serifCurve
					typeOut: 'line'
					expand: Object({
						width: ( 100 / 90 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.5
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + (30)
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand: Object({
						width: ( 120 / 90 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[1].expandedTo[0].x + ( contours[0].nodes[1].expandedTo[1].x - contours[0].nodes[1].expandedTo[0].x ) * 0.25
					y: ( 235 / 660 ) * capHeight
					expand: Object({
						width: (( ( ( 90 / 660 ) * capHeight ) + ( Math.max( -10, (35 - ((10 * width) / 90 ) * thickness ) )) ) / 90 ) * thickness
						angle: Utils.lineAngle( contours[2].nodes[1].expandedTo[1].point, contours[2].nodes[0].expandedTo[1].point )
						distr: 0
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[0].expandedTo[1].x + 216 + 200 * width - (9)
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand: Object({
						width: ( 30 / 90 ) * thickness
						angle: 0 + 'deg'
						distr: 0.75
					})
				1:
					x: contours[1].nodes[1].x
					y: contours[1].nodes[1].y
					expand: Object({
						width: ( 25 / 90 ) * thickness
						angle: 0 + 'deg'
						distr: 0
					})
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
					x: Utils.onLine({
						y: capHeight - serifHeight - serifCurve - Math.sqrt( serifCurve * (85/65) )
						on: [ contours[1].nodes[1].expandedTo[1].point, contours[1].nodes[0].expandedTo[1].point ]
					})
					y: capHeight - serifHeight - serifCurve - Math.sqrt( serifCurve * (85/65) )
				1:
					x: Utils.onLine({
						y: capHeight - serifHeight - serifCurve - Math.sqrt( serifCurve * (150/65) )
						on: [ contours[1].nodes[1].expandedTo[0].point, contours[1].nodes[0].expandedTo[0].point ]
					})
					y: capHeight - serifHeight - serifCurve - Math.sqrt( serifCurve * (150/65) )
				2:
					anchorLine: capHeight
					leftWidth: - 15
					rightWidth: 12
					baseLeft: contours[1].nodes[0].expandedTo[0].point
					baseRight: contours[1].nodes[0].expandedTo[1].point
					angleLeft: Utils.lineAngle( contours[1].nodes[1].expandedTo[0].point, contours[1].nodes[0].expandedTo[0].point )
					angleRight: Utils.lineAngle( contours[1].nodes[1].expandedTo[1].point, contours[1].nodes[0].expandedTo[1].point )
					directionY: -1
		2:
			base: 'serif'
			parentAnchors:
				0:
					x: Utils.onLine({
						y: capHeight - serifHeight - serifCurve - Math.sqrt( serifCurve * (250/65) )
						on: [ contours[2].nodes[0].expandedTo[1].point, contours[2].nodes[1].expandedTo[1].point ]
					})
					y: capHeight - serifHeight - serifCurve - Math.sqrt( serifCurve * (250/65) )
				1:
					x: Utils.onLine({
						y: capHeight - serifHeight - serifCurve - Math.sqrt( serifCurve * (600/65) )
						on: [ contours[2].nodes[0].expandedTo[0].point, contours[2].nodes[1].expandedTo[0].point ]
					})
					y: capHeight - serifHeight - serifCurve - Math.sqrt( serifCurve * (600/65) )
				2:
					anchorLine: capHeight
					leftWidth: 15
					rightWidth: - 15
					baseLeft: contours[2].nodes[0].expandedTo[0].point
					baseRight: contours[2].nodes[0].expandedTo[1].point
					angle: Utils.lineAngle( contours[2].nodes[0].expandedTo[0].point, contours[2].nodes[1].expandedTo[0].point )
					directionY: -1
