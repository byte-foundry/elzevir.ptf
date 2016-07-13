# TODO: width
exports.glyphs['X_cap'] =
	unicode: 'X'
	glyphName: 'X'
	characterName: 'LATIN CAPITAL LETTER X'
	ot:
		advanceWidth: contours[0].nodes[1].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 35 + ( 40 / 75 ) * serifWidth
		spacingRight: 50 * spacing + 25 + ( 40 / 75 ) * serifWidth
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + (28)
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand: Object({
						width: ( 114 / 90 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x + 153 + 200 * width + (0)
					x: Math.max(
						contours[0].nodes[0].expandedTo[1].x + 96 + 200 * width,
						283 + 200 * width
					) + (57)
					y: 0 + Math.max( 0, serifHeight * serifArc )
					expand: Object({
						width: ( 114 / 90 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.5
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x - Math.min( 85, ( (85) / 90 ) * thickness ) - (0)
					# x: Math.max(
					# 	contours[0].nodes[0].expandedTo[1].x + 124 + 200 * width,
					# 	311 + 200 * width
					# ) + (8)
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand: Object({
						width: ( 39 / 90 ) * thickness * opticThickness * Math.sqrt( width )
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: Utils.onLine({
						# y: ( ( 320 + Math.min(45, ( 45 / 90 ) * thickness * opticThickness ) ) / 660 ) * capHeight
						y: Math.max(
							( 330 / 660 ) * capHeight + Math.min( 45, ( ( 90 - 45 * width ) / 90 ) * thickness ),
							capHeight / 2
						)
						on: [ contours[0].nodes[0].expandedTo[1].point, contours[0].nodes[1].expandedTo[1].point ]
					})
					# y: ( ( 320 + Math.min(45, ( 45 / 90 ) * thickness * opticThickness ) ) / 660 ) * capHeight
					y: Math.max(
						( 330 / 660 ) * capHeight + Math.min( 45, ( ( 90 - 45 * width ) / 90 ) * thickness ),
						capHeight / 2
					)
					expand: Object({
						width: ( 30 / 90 ) * thickness * opticThickness * Math.sqrt( width )
						angle: 0 + 'deg'
						distr: 1
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Utils.onLine({
						# y: ( ( 320 + Math.min(45, ( 45 / 90 ) * thickness * opticThickness ) ) / 660 ) * capHeight
						y: Math.min(
							( 330 / 660 ) * capHeight - ( 15 / 90 ) * thickness,
							capHeight / 2
						)
						on: [ contours[0].nodes[0].expandedTo[0].point, contours[0].nodes[1].expandedTo[0].point ]
					})
					# y: ( ( 320 + Math.min(45, ( 45 / 90 ) * thickness * opticThickness ) ) / 660 ) * capHeight
					y: Math.min(
						( 330 / 660 ) * capHeight - ( 15 / 90 ) * thickness,
						capHeight / 2
					)
					typeOut: 'line'
					expand: Object({
						width: ( 30 / 90 ) * thickness * opticThickness * Math.sqrt( width )
						angle: 0 + 'deg'
						distr: 0
					})
				1:
					# x: Utils.onLine({
					# 	y: 0 + Math.max( 0, serifHeight * serifArc )
					# 	on: [ contours[1].nodes[0].expandedTo[0].point, contours[1].nodes[1].expandedTo[0].point ]
					# }) - ( 20 / 90 ) * thickness * opticThickness
					x: contours[0].nodes[0].expandedTo[0].x + 20 + (8)
					y: 0 + Math.max( 0, serifHeight * serifArc )
					expand: Object({
						width: ( 37 / 90 ) * thickness * opticThickness * Math.sqrt( width )
						angle: 0 + 'deg'
						distr: 0.25
					})
	components:
		0:
			base: 'serif'
			parentAnchors:
				0:
					x: Utils.onLine({
						y: capHeight - serifHeight - serifCurve - Math.sqrt( serifCurve * (500/65) )
						on: [ contours[0].nodes[1].expandedTo[1].point, contours[0].nodes[0].expandedTo[1].point ]
					})
					y: capHeight - serifHeight - serifCurve - Math.sqrt( serifCurve * (500/65) )
				1:
					x: Utils.onLine({
						y: capHeight - serifHeight - serifCurve - Math.sqrt( serifCurve * (150/65) )
						on: [ contours[0].nodes[1].expandedTo[0].point, contours[0].nodes[0].expandedTo[0].point ]
					})
					y: capHeight - serifHeight - serifCurve - Math.sqrt( serifCurve * (150/65) )
				2:
					anchorLine: capHeight
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
						y: capHeight - serifHeight - serifCurve - Math.sqrt( serifCurve * (250/65) )
						on: [ contours[1].nodes[0].expandedTo[1].point, contours[1].nodes[1].expandedTo[1].point ]
					})
					y: capHeight - serifHeight - serifCurve - Math.sqrt( serifCurve * (250/65) )
				1:
					x: Utils.onLine({
						y: capHeight - serifHeight - serifCurve - Math.sqrt( serifCurve * (600/65) )
						on: [ contours[1].nodes[0].expandedTo[0].point, contours[1].nodes[1].expandedTo[0].point ]
					})
					y: capHeight - serifHeight - serifCurve - Math.sqrt( serifCurve * (600/65) )
				2:
					anchorLine: capHeight
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
