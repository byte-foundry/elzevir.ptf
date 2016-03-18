# TODO: serif
exports.glyphs['five'] =
	unicode: '5'
	glyphName: 'five'
	characterName: 'DIGIT FIVE'
	ot:
		advanceWidth: contours[0].nodes[1].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 31 * spacing
		spacingRight: 50 * spacing
	tags: [
		'all',
		'latin',
		'figures'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: ( 182 / 230 ) * descender
					dirOut: Math.max( - 10, 5 - 3 * width ) * Math.PI / 180
					expand: Object({
						width: ( 17 / 90 ) * thickness * Math.sqrt( width )
						angle: contours[0].nodes[0].dirOut + Math.PI / 2
						distr: 0
					})
				1:
					x: 200 + 200 * width - (23)
					y: contours[0].nodes[0].expandedTo[0].y + ( contours[0].nodes[2].expandedTo[0].y - contours[0].nodes[0].expandedTo[0].y ) * 0.55
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 95 / 90 ) * thickness
						angle: - 162 + 'deg'
						distr: 0.25
					})
				2:
					x: contours[1].nodes[0].x + ( ( 23 / 90 ) * thickness * 0.75 ) + 57 * width - (12)
					x: Math.max(
						contours[1].nodes[0].x + 80 * width,
						contours[0].nodes[1].x - 255
					)
					y: ( 280 / 500 ) * xHeight - (22)
					dirIn: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 100 / 90 ) * thickness
						angle: - 117 + 'deg'
						distr: 0.25
					})
				3:
					expandedTo:
						[
							{
								x: Utils.onLine({
									y: contours[0].nodes[2].expandedTo[0].y
									on: [ contours[1].nodes[0].expandedTo[1].point, contours[1].nodes[1].expandedTo[1].point ]
								})
								y: contours[0].nodes[2].expandedTo[0].y
							}
							{
								x: contours[1].nodes[0].expandedTo[1].x
								y: contours[1].nodes[0].expandedTo[1].y
							}
						]
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + 34 + (6)
					y: contours[0].nodes[2].expandedTo[1].y
					typeOut: 'line'
					expand: Object({
						width: ( 23 / 90 ) * thickness
						angle: 0
						distr: 0.25
					})
				1:
					x: contours[1].nodes[0].expandedTo[0].x + 20 * width
					y: xHeight
					typeOut: 'line'
					expand: Object({
						width: ( 27 / 90 ) * thickness
						angle: 0
						distr: 0
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[0].x - ( 10 / 90 ) * thickness # - Math.max( 0, serifHeight * serifArc )
					y: xHeight
					typeOut: 'line'
					expand: Object({
						width: Math.max(
							( 95 / 90 ) * thickness,
							thickness / Math.cos( serifRotate * 18 * Math.PI / 180 )
						)
						angle: - 90 - serifRotate * (18) + 'deg'
						distr: 0
					})
				1:
					expandedTo:
						[
							{
								x: contours[1].nodes[1].expandedTo[1].x
								y: contours[1].nodes[1].expandedTo[1].y
							}
							{
								x: Utils.onLine({
									y: contours[2].nodes[0].expandedTo[1].y
									on: [ contours[1].nodes[0].expandedTo[1].point, contours[1].nodes[1].expandedTo[1].point ]
								})
								y: contours[2].nodes[0].expandedTo[1].y
							}
						]
	components:
		0:
			base: 'serif-v'
			parentAnchors:
				0:
					x: Math.max(
						contours[2].nodes[0].expandedTo[0].x - serifHeight - serifCurve,
						contours[2].nodes[1].expandedTo[0].x
					)
					y: contours[2].nodes[0].expandedTo[0].y
				1:
					x: contours[2].nodes[0].expandedTo[1].x
					y: contours[2].nodes[0].expandedTo[1].y
				2:
					anchorLine: contours[2].nodes[0].expandedTo[0].x
					baseLeft: contours[2].nodes[0].expandedTo[1].point
					left: false
			# parentParameters:
			# 	serifMedian: serifMedian * 0.548
			# 	serifHeight: ( serifHeight + 20 * Math.exp(- ( Math.pow( serifHeight - 15, 2) ) / ( 2 * Math.pow( 8, 2)) ) ) / Math.cos(serifRotate * 12 / 180 * Math.PI)
			# 	midWidth: midWidth * 0.972
			transformOrigin: contours[2].nodes[0].point
			transforms: Array( [ 'skewX', serifRotate * (18)  + 'deg' ] )
