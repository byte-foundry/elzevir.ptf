# TODO: contours[1].nodes[1].y + width + remove first node
exports.glyphs['two'] =
	unicode: '2'
	glyphName: 'two'
	characterName: 'DIGIT TWO'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 25 * spacing
		spacingRight: 32 * spacing
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
					y: 0
					dirOut: Utils.lineAngle( contours[1].nodes[1].expandedTo[0].point, contours[1].nodes[1].expandedTo[1].point ) - Math.PI / 24
					dirOut: Math.min(
						33,
						Math.max(
							25,
							40 - ( 7 / 90 ) * thickness * width
						)
					) + 'deg'
					# typeOut: 'line'
					expand: Object({
						width: ( 15 / 90 ) * thickness
						angle: 90 + 'deg'
						distr: 0
					})
				1:
					x: 235 + 200 * width - (25)
					# y: contours[0].nodes[0].y + ( ( contours[0].nodes[2].y - ( 80 / 90 ) * thickness * Math.cos( 34 * Math.PI / 180 ) ) ) - contours[0].nodes[0].y ) * 0.5
					# y: contours[0].nodes[0].expandedTo[0].y + ( contours[0].nodes[2].y - contours[0].nodes[0].expandedTo[0].y ) * 0.6
					y: ( contours[0].nodes[2].y - ( 80 / 90 ) * thickness * Math.cos( 34 * Math.PI / 180 ) ) - 93
					y: ( 345 / 500 ) * xHeight
					dirOut: 90 + 'deg'
					type: 'smooth'
					tensionIn: 2
					expand: Object({
						width: ( 105 / 90 ) * thickness
						angle: - 163 + 'deg'
						distr: 0.25
					})
				2:
					x: contours[0].nodes[3].expandedTo[0].x + ( contours[0].nodes[1].expandedTo[0].x - contours[0].nodes[3].expandedTo[0].x ) * 0.55
					y: xHeight + overshoot
					dirOut: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 80 / 90 ) * thickness
						angle: - 124 + 'deg'
						distr: 0
					})
				3:
					x: 70 + (0)
					# y: xHeight - 143 # xHeight - ( 143 / 500 ) * xHeight
					y: Math.min(
						xHeight - 143,
						( contours[0].nodes[2].y - ( 80 / 90 ) * thickness * Math.cos( 34 * Math.PI / 180 ) ) - 50
					)
					dirIn: 68 + 'deg'
					expand: Object({
						width: ( 13 / 90 ) * thickness
						angle: - 32 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 245 + 200 * width
					y: 0
					typeOut: 'line'
					expand: Object({
						width: ( 90 / 90 ) * thickness
						angle: 85 + 'deg'
						distr: 0
					})
				1:
					expandedTo:
						[
							{
								x: contours[0].nodes[0].expandedTo[0].x
								y: contours[0].nodes[0].expandedTo[0].y
							}
							{
								x: Utils.onLine({
									y: contours[1].nodes[0].expandedTo[1].y
									on: [ contours[0].nodes[0].expandedTo[0].point, contours[0].nodes[1].expandedTo[0].point ]
								})
								y: contours[1].nodes[0].expandedTo[1].y
							}
						]
		# 2:
		# 	skeleton: true
		# 	closed: false
		# 	nodes:
		# 		0:
		# 			x: 235 + 200 * width - (25)
		# 			# y: contours[0].nodes[0].y + ( ( contours[0].nodes[2].y - ( 80 / 90 ) * thickness * Math.cos( - 124 * Math.PI / 180 ) ) - contours[0].nodes[0].y ) * 0.5
		# 			# y: contours[0].nodes[0].expandedTo[0].y + ( contours[0].nodes[2].y - contours[0].nodes[0].expandedTo[0].y ) * 0.6
		# 			y: ( contours[0].nodes[2].y - ( 80 / 90 ) * thickness * Math.cos( 34 * Math.PI / 180 ) ) - 93
		# 			expand: Object({
		# 				width: ( 0 / 90 ) * thickness
		# 				angle: 90 + 'deg'
		# 				distr: 0
		# 			})
		# 3:
		# 	skeleton: true
		# 	closed: false
		# 	nodes:
		# 		0:
		# 			x: contours[0].nodes[3].expandedTo[0].x + ( contours[0].nodes[1].expandedTo[0].x - contours[0].nodes[3].expandedTo[0].x ) * 0.55
		# 			y: ( contours[0].nodes[2].y - ( 80 / 90 ) * thickness * Math.cos( 34 * Math.PI / 180 ) )
		# 			expand: Object({
		# 				width: ( 0 / 90 ) * thickness
		# 				angle: 90 + 'deg'
		# 				distr: 0
		# 			})
	components:
		0:
			base: 'serif-v'
			parentAnchors:
				0:
					x: contours[1].nodes[0].expandedTo[0].x - serifHeight - serifCurve
					y: contours[1].nodes[0].expandedTo[1].y
				1:
					x: contours[1].nodes[0].expandedTo[1].x - serifHeight - serifCurve
					y: contours[1].nodes[0].expandedTo[0].y
				2:
					anchorLine: contours[1].nodes[0].expandedTo[0].x
					left: false
					baseLeft: contours[1].nodes[0].expandedTo[0].point
			transformOrigin: contours[1].nodes[0].expandedTo[0].point
			transforms: Array( [ 'skewX', serifRotate * (12) + 'deg' ] )
