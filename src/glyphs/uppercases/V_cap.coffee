exports.glyphs['V_cap'] =
	unicode: 'V'
	glyphName: 'V'
	characterName: 'LATIN CAPITAL LETTER V'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 5 * spacing + serifWidth * ( 50 / 75 )
		spacingRight: 5 * spacing + serifWidth * ( 65 / 75 )
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
					x: spacingLeft + (27)
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand: Object({
						width: ( 110 / 90 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[1].nodes[0].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5 + (20) - ( 5 / 90 ) * thickness
					y: - overshoot * 3
					expand: Object({
						# width: ( ( ( ( 90 / 500 ) * capHeight ) + ( Math.max( -10, (20 - 5 * width) ) )) / 90 ) * thickness
						width: (( ( ( 90 / 660 ) * capHeight ) + ( Math.max( -10, (60 - ((10 * width) / 90 ) * thickness ) )) ) / 90 ) * thickness
						angle: Utils.lineAngle( contours[1].nodes[1].expandedTo[1].point, contours[1].nodes[0].expandedTo[1].point )
						distr: 0
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x + 237 + 200 * width - (8)
					y: capHeight - Math.max( 0, serifHeight * serifArc )
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
						on: [ contours[1].nodes[0].expandedTo[1].point, contours[1].nodes[1].expandedTo[1].point ]
					})
					y: capHeight - serifHeight - serifCurve - Math.sqrt( serifCurve * (250/65) )
				1:
					x: Utils.onLine({
						y: capHeight - serifHeight - serifCurve - Math.sqrt( serifCurve * (600/65) )
						on: [ contours[1].nodes[0].expandedTo[0].point, contours[0].nodes[1].expandedTo[0].point ]
					})
					y: capHeight - serifHeight - serifCurve - Math.sqrt( serifCurve * (600/65) )
				2:
					anchorLine: capHeight
					leftWidth: 15
					rightWidth: - 15
					baseLeft: contours[1].nodes[0].expandedTo[0].point
					baseRight: contours[1].nodes[0].expandedTo[1].point
					angle: Utils.lineAngle( contours[1].nodes[0].expandedTo[0].point, contours[1].nodes[1].expandedTo[0].point )
					directionY: -1
