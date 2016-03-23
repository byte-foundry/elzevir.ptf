# TODO: cont2 verif stem
exports.glyphs['W_cap'] =
	unicode: 'W'
	glyphName: 'W'
	characterName: 'LATIN CAPITAL LETTER W'
	ot:
		advanceWidth: contours[3].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 5 * spacing + ( 50 / 75 ) * serifWidth
		spacingRight: 5 * spacing + ( 70 / 75 ) * serifWidth
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: contours[0].nodes[0].expandedTo[0].x + ( contours[3].nodes[0].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
			y: capHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + (27/90) * thickness # TODO: apply this behavior everywhere
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand: Object({
						width: ( 110 / 90 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[1].nodes[0].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5 + (10) - ( 5 / 90 ) * thickness
					y: - overshoot * 3
					expand: Object({
						width: (( ( ( 90 / 660 ) * capHeight ) + ( Math.max( -10, (70 - ((10 * width) / 90 ) * thickness ) )) ) / 90 ) * thickness
						angle: Utils.lineAngle( contours[1].nodes[1].expandedTo[1].point, contours[1].nodes[0].expandedTo[1].point )
						distr: 0
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x + 165 + 200 * width - (7)
					y: capHeight + overshoot * 2
					typeOut: 'line'
					expand: Object({
						width: ( 25 / 90 ) * thickness
						angle: 0 + 'deg'
						distr: 0.75
					})
				1:
					x: contours[0].nodes[1].x
					y: contours[0].nodes[1].y
					expand: Object({
						width: ( 25 / 90 ) * thickness
						angle: 0 + 'deg'
						distr: 0
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[0].expandedTo[1].x
					y: contours[1].nodes[0].expandedTo[1].y
					typeOut: 'line'
					expand: Object({
						width: (( ( ( 100 / 660 ) * capHeight ) + ( Math.max( -10, (80 - ((10 * width) / 90 ) * thickness ) )) ) / 90 ) * thickness
						angle: Utils.lineAngle( contours[1].nodes[0].expandedTo[1].point, contours[1].nodes[1].expandedTo[1].point )
						distr: 0
					})
				1:
					x: contours[3].nodes[1].expandedTo[0].x
					y: contours[3].nodes[1].expandedTo[0].y
					typeOut: 'line'
					expand: Object({
						width: (( ( ( 100 / 660 ) * capHeight ) + ( Math.max( -10, (70 - ((10 * width) / 90 ) * thickness ) )) ) / 90 ) * thickness
						angle: Utils.lineAngle( contours[3].nodes[0].expandedTo[0].point, contours[3].nodes[1].expandedTo[0].point )
						distr: 1
					})
		3:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[0].expandedTo[1].x + 175 + 200 * width - (7)
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand: Object({
						width: ( 30 / 90 ) * thickness
						angle: 0 + 'deg'
						distr: 0.75
					})
				1:
					x: contours[1].nodes[0].expandedTo[1].x + ( contours[3].nodes[0].expandedTo[0].x - contours[1].nodes[0].expandedTo[1].x ) * 0.5 - ( 25 / 90 ) * thickness
					y: contours[0].nodes[1].y
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
					x: Utils.onLine({
						y: capHeight - serifHeight - serifCurve - Math.sqrt( serifCurve * (85/65) )
						on: [ contours[0].nodes[1].expandedTo[1].point, contours[0].nodes[0].expandedTo[1].point ]
					})
					y: capHeight - serifHeight - serifCurve - Math.sqrt( serifCurve * (85/65) )
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
					angleLeft: Utils.lineAngle( contours[0].nodes[1].expandedTo[0].point, contours[0].nodes[0].expandedTo[0].point )
					angleRight: Utils.lineAngle( contours[0].nodes[1].expandedTo[1].point, contours[0].nodes[0].expandedTo[1].point )
					directionY: -1
		1:
			base: 'serif'
			parentAnchors:
				0:
					x: Utils.onLine({
						y: capHeight - serifHeight - serifCurve - Math.sqrt( serifCurve * (250/65) )
						on: [ contours[3].nodes[0].expandedTo[1].point, contours[3].nodes[1].expandedTo[1].point ]
					})
					y: capHeight - serifHeight - serifCurve - Math.sqrt( serifCurve * (250/65) )
				1:
					x: Utils.onLine({
						y: capHeight - serifHeight - serifCurve - Math.sqrt( serifCurve * (600/65) )
						on: [ contours[3].nodes[0].expandedTo[0].point, contours[3].nodes[1].expandedTo[0].point ]
					})
					y: capHeight - serifHeight - serifCurve - Math.sqrt( serifCurve * (600/65) )
				2:
					anchorLine: capHeight
					leftWidth: 15
					rightWidth: - 15
					baseLeft: contours[3].nodes[0].expandedTo[0].point
					baseRight: contours[3].nodes[0].expandedTo[1].point
					angle: Utils.lineAngle( contours[3].nodes[0].expandedTo[0].point, contours[3].nodes[1].expandedTo[0].point )
					directionY: -1
