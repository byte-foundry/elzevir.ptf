exports.glyphs['x'] =
	unicode: 'x'
	glyphName: 'x'
	characterName: 'LATIN SMALL LETTER X'
	ot:
		advanceWidth: contours[0].nodes[1].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 20 * spacing + ( serifWidth - 75 )
		spacingRight: 20 * spacing + ( serifWidth * (30 / 75) ) # TODO: apply this serif method everywhere
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
					x: spacingLeft + (73)
					y: xHeight - Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand: Object({
						width: ( 110 / 90 ) * thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x + 130 + 200 * width + (0)
					y: 0 + Math.max( 0, serifHeight * serifArc )
					expand: Object({
						width: ( 110 / 90 ) * thickness
						angle: 0 + 'deg'
						distr: 0
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x - 45 - (23)
					x: Math.max(
						contours[0].nodes[0].expandedTo[1].x + 84 + 200 * width,
						230 + 200 * width
					) - (22)
					y: xHeight - Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand: Object({
						width: ( 30 / 90 ) * thickness * Math.sqrt( width )
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: Utils.onLine({
						y: ( ( 250 + Math.min(44, ( 44 / 90 ) * thickness ) ) / 500 ) * xHeight
						on: [ contours[1].nodes[0].expandedTo[1].point, contours[2].nodes[1].expandedTo[0].point ]
					})
					y: ( ( 250 + Math.min(44, ( 44 / 90 ) * thickness ) ) / 500 ) * xHeight
					expand: Object({
						width: ( 20 / 90 ) * thickness * Math.sqrt( width )
						angle: 0 + 'deg'
						distr: 1
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Utils.onLine({
						y: ( ( 250 + Math.min(44, ( 44 / 90 ) * thickness ) ) / 500 ) * xHeight
						on: [ contours[1].nodes[0].expandedTo[1].point, contours[2].nodes[1].expandedTo[0].point ]
					}) - ( 20 / 90 ) * thickness
					y: ( ( 250 + Math.min(44, ( 44 / 90 ) * thickness ) ) / 500 ) * xHeight
					typeOut: 'line'
					expand: Object({
						width: ( 24 / 90 ) * thickness * Math.sqrt( width )
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: Utils.onLine({
						y: 0 + Math.max( 0, serifHeight * serifArc )
						on: [ contours[1].nodes[0].expandedTo[0].point, contours[1].nodes[1].expandedTo[0].point ]
					}) - ( 20 / 90 ) * thickness
					x: 66
					y: 0 + Math.max( 0, serifHeight * serifArc )
					expand: Object({
						width: ( 30 / 90 ) * thickness * Math.sqrt( width )
						angle: 0 + 'deg'
						distr: 0.25
					})
	components:
		0:
			base: 'serif'
			parentAnchors:
				0:
					x: Utils.onLine({
						y: xHeight - serifHeight - serifCurve - Math.sqrt( serifCurve * (500/65) )
						on: [ contours[0].nodes[1].expandedTo[1].point, contours[0].nodes[0].expandedTo[1].point ]
					})
					y: xHeight - serifHeight - serifCurve - Math.sqrt( serifCurve * (500/65) )
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
						y: serifHeight + serifCurve + Math.sqrt( serifCurve * (500/65) )
						on: [ contours[0].nodes[1].expandedTo[1].point, contours[0].nodes[0].expandedTo[1].point ]
					})
					y: serifHeight + serifCurve + Math.sqrt( serifCurve * (500/65) )
				1:
					x: Utils.onLine({
						y: serifHeight + serifCurve + Math.sqrt( serifCurve * (400/65) )
						on: [ contours[0].nodes[1].expandedTo[0].point, contours[0].nodes[0].expandedTo[0].point ]
					})
					y: serifHeight + serifCurve + Math.sqrt( serifCurve * (400/65) )
				2:
					leftWidth: 15
					rightWidth: - 35
					baseLeft: contours[0].nodes[1].expandedTo[0].point
					baseRight: contours[0].nodes[1].expandedTo[1].point
					angle: Utils.lineAngle( contours[0].nodes[1].expandedTo[0].point, contours[0].nodes[0].expandedTo[0].point )
		2:
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
						on: [ contours[1].nodes[0].expandedTo[0].point, contours[1].nodes[1].expandedTo[0].point ]
					})
					y: xHeight - serifHeight - serifCurve - Math.sqrt( serifCurve * (600/65) )
				2:
					anchorLine: xHeight
					leftWidth: 20
					rightWidth: - 10
					baseLeft: contours[1].nodes[0].expandedTo[0].point
					baseRight: contours[1].nodes[0].expandedTo[1].point
					angle: Utils.lineAngle( contours[1].nodes[0].expandedTo[1].point, contours[1].nodes[1].expandedTo[1].point )
					directionY: -1
		3:
			base: 'serif'
			parentAnchors:
				0:
					x: Utils.onLine({
						y: serifHeight + serifCurve + Math.sqrt( serifCurve * (500/65) )
						on: [ contours[2].nodes[1].expandedTo[1].point, contours[2].nodes[0].expandedTo[1].point ]
					})
					y: serifHeight + serifCurve + Math.sqrt( serifCurve * (500/65) )
				1:
					x: Utils.onLine({
						y: serifHeight + serifCurve + Math.sqrt( serifCurve * (400/65) )
						on: [ contours[2].nodes[1].expandedTo[0].point, contours[2].nodes[0].expandedTo[0].point ]
					})
					y: serifHeight + serifCurve + Math.sqrt( serifCurve * (400/65) )
				2:
					rightWidth: 30
					baseLeft: contours[2].nodes[1].expandedTo[0].point
					baseRight: contours[2].nodes[1].expandedTo[1].point
					angle: Utils.lineAngle( contours[2].nodes[1].expandedTo[0].point, contours[2].nodes[0].expandedTo[0].point )
