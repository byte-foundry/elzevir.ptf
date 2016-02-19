exports.glyphs['A_cap'] =
	unicode: 'A'
	glyphName: 'A'
	characterName: 'LATIN CAPITAL LETTER A'
	ot:
		advanceWidth: contours[1].nodes[1].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 5 * spacing + (0)
		spacingRight: 15 * spacing + ( 50 / 75 ) * serifWidth
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
					x: spacingLeft + ( 64 / 75 ) * serifWidth + (8)
					y: 0 + Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand: Object({
						width: ( 33 / 90 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[1].nodes[1].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
					y: capHeight + ( 15 / 660 ) * capHeight
					expand: Object({
						width: ( 25 / 90 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.75
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].expandedTo[1].y
					typeOut: 'line'
					expand: Object({
						width: Math.min(
							( 123 / 90 ) * thickness * opticThickness,
							( (68 + ( 55 / 500 ) * xHeight) / 90 ) * thickness * opticThickness
						)
						angle: Math.min(
							( - 116 / 180 ) * Math.PI,
							Math.max(
								Utils.lineAngle( contours[0].nodes[1].expandedTo[1].point, contours[0].nodes[0].expandedTo[1].point ),
								Utils.lineAngle( contours[0].nodes[1].expandedTo[0].point, contours[0].nodes[0].expandedTo[0].point )
							)
						)
						distr: 0
					})
				1:
					x: contours[0].nodes[0].expandedTo[1].x + 313 + 200 * width - (83)
					y: 0 + Math.max( 0, serifHeight * serifArc )
					expand: Object({
						width: ( 109 / 90 ) * thickness * opticThickness
						angle: 180 + 'deg'
						distr: 0.75
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Utils.onLine({
						y: ( 240 / 660 ) * capHeight
						on: [ contours[1].nodes[0].point, contours[1].nodes[1].point ]
					})
					y: ( 240 / 660 ) * capHeight
					typeOut: 'line'
					expand: Object({
						width: ( 27 / 90 ) * thickness * opticThickness
						angle: Utils.lineAngle( contours[1].nodes[0].expandedTo[0].point, contours[1].nodes[1].expandedTo[0].point ) + Math.PI
						distr: 0.25
					})
				1:
					x: Utils.onLine({
						y: ( 240 / 660 ) * capHeight
						on: [ contours[0].nodes[0].point, contours[0].nodes[1].point ]
					})
					y: ( 240 / 660 ) * capHeight
					expand: Object({
						width: ( 27 / 90 ) * thickness * opticThickness
						angle: Utils.lineAngle( contours[0].nodes[0].expandedTo[0].point, contours[0].nodes[1].expandedTo[0].point )
						distr: 0.25
					})
	components:
		0:
			base: 'serif'
			parentAnchors:
				0:
					x: Utils.onLine({
						y: 0 + serifHeight + serifCurve + Math.sqrt( serifCurve * (85/65) )
						on: [ contours[0].nodes[0].expandedTo[1].point, contours[0].nodes[1].expandedTo[1].point ]
					})
					y: 0 + serifHeight + serifCurve + Math.sqrt( serifCurve * (85/65) )
				1:
					x: Utils.onLine({
						y: 0 + serifHeight + serifCurve + Math.sqrt( serifCurve * (150/65) )
						on: [ contours[0].nodes[0].expandedTo[0].point, contours[0].nodes[1].expandedTo[0].point ]
					})
					y: 0 + serifHeight + serifCurve + Math.sqrt( serifCurve * (150/65) )
				2:
					# leftWidth: - 15
					# rightWidth: 12
					baseLeft: contours[0].nodes[0].expandedTo[0].point
					baseRight: contours[0].nodes[0].expandedTo[1].point
					angle: Utils.lineAngle( contours[0].nodes[0].expandedTo[0].point, contours[0].nodes[1].expandedTo[0].point )
		1:
			base: 'serif'
			parentAnchors:
				0:
					x: Utils.onLine({
						y: 0 + serifHeight + serifCurve + Math.sqrt( serifCurve * (85/65) )
						on: [ contours[1].nodes[1].expandedTo[0].point, contours[1].nodes[0].expandedTo[0].point ]
					})
					y: 0 + serifHeight + serifCurve + Math.sqrt( serifCurve * (85/65) )
				1:
					x: Utils.onLine({
						y: 0 + serifHeight + serifCurve + Math.sqrt( serifCurve * (150/65) )
						on: [ contours[1].nodes[1].expandedTo[1].point, contours[1].nodes[0].expandedTo[1].point ]
					})
					y: 0 + serifHeight + serifCurve + Math.sqrt( serifCurve * (150/65) )
				2:
					# leftWidth: - 15
					# rightWidth: 12
					baseLeft: contours[1].nodes[1].expandedTo[1].point
					baseRight: contours[1].nodes[1].expandedTo[0].point
					angle: Utils.lineAngle( contours[1].nodes[1].expandedTo[0].point, contours[1].nodes[0].expandedTo[0].point )
