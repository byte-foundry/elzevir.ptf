exports.glyphs['v'] =
	unicode: 'v'
	glyphName: 'v'
	characterName: 'LATIN SMALL LETTER V'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 10 + ( serifWidth - 75 )
		spacingRight: 50 * spacing + 13 + ( serifWidth - 75 )
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
					x: spacingLeft + (76)
					y: xHeight - Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand: Object({
						width: ( 103 / 90 ) * thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[1].nodes[0].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5 - (5)
					y: - overshoot * 2
					expand: Object({
						width: ( ( ( ( 90 / 500 ) * xHeight ) + ( Math.max( -10, (60 - 30 * width) ) )) / 90 ) * thickness
						angle: Utils.lineAngle( contours[1].nodes[1].expandedTo[1].point, contours[1].nodes[0].expandedTo[1].point )
						distr: 0
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x + 137 + 200 * width - (8)
					y: xHeight - Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand: Object({
						width: ( 30 / 90 ) * thickness
						angle: 0 + 'deg'
						distr: 0.75
					})
				1:
					x: contours[0].nodes[1].x
					y: contours[0].nodes[1].y
					expand: Object({
						width: ( 15 / 90 ) * thickness
						angle: 0 + 'deg'
						distr: 0
					})
	components:
		0:
			base: 'serif'
			parentAnchors:
				0:
					x: Utils.onLine({
						y: xHeight - serifHeight - serifCurve - Math.sqrt( serifCurve * (85/65) )
						on: [ contours[0].nodes[1].expandedTo[1].point, contours[0].nodes[0].expandedTo[1].point ]
					})
					y: xHeight - serifHeight - serifCurve - Math.sqrt( serifCurve * (85/65) )
				1:
					x: Utils.onLine({
						y: xHeight - serifHeight - serifCurve - Math.sqrt( serifCurve * (150/65) )
						on: [ contours[0].nodes[1].expandedTo[0].point, contours[0].nodes[0].expandedTo[0].point ]
					})
					y: xHeight - serifHeight - serifCurve - Math.sqrt( serifCurve * (150/65) )
				2:
					anchorLine: xHeight
					leftWidth: - 15
					rightWidth: 12
					baseLeft: contours[0].nodes[0].expandedTo[0].point
					baseRight: contours[0].nodes[0].expandedTo[1].point
					angle: Utils.lineAngle( contours[0].nodes[1].expandedTo[0].point, contours[0].nodes[0].expandedTo[0].point )
					directionY: -1
		1:
			base: 'serif'
			parentAnchors:
				0:
					x: Utils.onLine({
						y: xHeight - serifHeight - serifCurve - Math.sqrt( serifCurve * (250/65) )
						on: [ contours[1].nodes[0].expandedTo[1].point, contours[1].nodes[1].expandedTo[1].point ]
					})
					y: xHeight - serifHeight - serifCurve - Math.sqrt( serifCurve * (250/65) )
				1:
					x: Utils.onLine({
						y: xHeight - serifHeight - serifCurve - Math.sqrt( serifCurve * (600/65) )
						on: [ contours[1].nodes[0].expandedTo[0].point, contours[0].nodes[1].expandedTo[0].point ]
					})
					y: xHeight - serifHeight - serifCurve - Math.sqrt( serifCurve * (600/65) )
				2:
					anchorLine: xHeight
					leftWidth: 15
					rightWidth: - 15
					baseLeft: contours[1].nodes[0].expandedTo[0].point
					baseRight: contours[1].nodes[0].expandedTo[1].point
					angle: Utils.lineAngle( contours[1].nodes[0].expandedTo[0].point, contours[1].nodes[1].expandedTo[0].point )
					directionY: -1
