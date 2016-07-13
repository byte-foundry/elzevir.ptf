exports.glyphs['K_cap'] =
	unicode: 'K'
	glyphName: 'K'
	characterName: 'LATIN CAPITAL LETTER K'
	ot:
		advanceWidth: contours[2].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 40 + ( serifWidth - 75 )
		spacingRight: 50 * spacing + 10 
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
					x: spacingLeft + (100)
					y: 0 + serifHeight + serifCurve
					typeOut: 'line'
					expand: Object({
						width: ( 100 / 90 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: capHeight - serifHeight - serifCurve
					expand: Object({
						width: ( 100 / 90 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: ( 355 / 660 ) * capHeight
					typeOut: 'line'
					expand: Object({
						width: ( 26 / 90 ) * thickness * opticThickness
						angle: - 52 + 'deg'
						distr: 0
					})
				1:
					x: Math.max(
						contours[0].nodes[1].expandedTo[1].x + 95 + 200 * width,
						345 + 200 * width + ( serifWidth - 75 )
					) - (27)
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand: Object({
						width: ( 36 / 90 ) * thickness * opticThickness * Math.sqrt( width )
						angle: 0 + 'deg'
						distr: 0.25
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					expandedTo:
						[
							{
								x: contours[2].nodes[1].expandedTo[1].x + 5
								y: - overshoot
							}
							{
								x: contours[2].nodes[0].expandedTo[0].x
								y: contours[2].nodes[1].expandedTo[1].y
							}
						]
				1:
					x: contours[1].nodes[1].expandedTo[1].x + 80
					y: - overshoot
					dirOut: 180 + 'deg'
					tensionOut: 1.2
					typeIn: 'line'
					type: 'smooth'
					expand: Object({
						width: ( 36 / 90 ) * thickness
						angle: 33 + 'deg'
						distr: 0
					})
				#### TODO thickness / angle
				2:
					x: Utils.onLine({
						y: 210
						on: [ contours[2].nodes[3].expandedTo[1].point, contours[2].nodes[1].expandedTo[0].point ]
					}) - (6)
					y: 210
					dirOut: Utils.lineAngle( contours[2].nodes[3].expandedTo[0].point, contours[2].nodes[2].expandedTo[0].point )
					tensionIn: 1.2
					type: 'smooth'
					expand: Object({
						# width: ( 153 / 90 ) * thickness
						# angle: - 12 + 'deg'
						width: ( 100 / 90 ) * thickness
						angle: Utils.lineAngle( contours[1].nodes[0].expandedTo[1].point, contours[1].nodes[1].expandedTo[1].point )
						distr: 1
					})
				3:
					x: contours[1].nodes[0].expandedTo[0].x
					y: contours[1].nodes[0].expandedTo[0].y
					typeIn: 'line'
					expand: Object({
						width: ( 100 / 90 ) * thickness
						angle: Utils.lineAngle( contours[1].nodes[0].expandedTo[1].point, contours[1].nodes[1].expandedTo[1].point )
						distr: 0
					})
	components:
		0:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].y
				1:
					x: contours[0].nodes[0].expandedTo[0].x
					y: contours[0].nodes[0].y
				2:
					anchorLine: 0
		1:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].y
				1:
					x: contours[0].nodes[1].expandedTo[0].x
					y: contours[0].nodes[1].y
				2:
					anchorLine: capHeight
					directionY: -1
		2:
			base: 'serif'
			parentAnchors:
				0:
					x: Utils.onLine({
						y: capHeight - serifHeight - serifCurve
						on: [ contours[1].nodes[0].expandedTo[1].point, contours[1].nodes[1].expandedTo[1].point ]
					})
					y: capHeight - serifHeight - serifCurve
				1:
					x: Utils.onLine({
						y: capHeight - serifHeight - serifCurve - Math.sqrt( serifCurve * 10 )
						on: [ contours[1].nodes[0].expandedTo[0].point, contours[1].nodes[1].expandedTo[0].point ]
					})
					y: capHeight - serifHeight - serifCurve - Math.sqrt( serifCurve * 10 )
				2:
					anchorLine: capHeight
					leftWidth: 40
					# rightWidth: 5
					baseLeft: contours[1].nodes[1].expandedTo[0].point
					baseRight: contours[1].nodes[1].expandedTo[1].point
					angle: Utils.lineAngle( contours[1].nodes[1].expandedTo[1].point, contours[1].nodes[0].expandedTo[1].point )
					directionY: -1
