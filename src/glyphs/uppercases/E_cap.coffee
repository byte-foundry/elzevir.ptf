# TODO:
## SERIFS… Rotation for example
exports.glyphs['E_cap'] =
	unicode: 'E'
	glyphName: 'E'
	characterName: 'LATIN CAPITAL LETTER E'
	ot:
		advanceWidth: contours[1].nodes[1].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 115 * spacing + ( (25) / 90 ) * thickness + ( serifWidth - 75 )
		spacingRight: 115 * spacing + ( serifWidth - 75 )
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: contours[0].nodes[0].expandedTo[0].x + ( contours[3].nodes[1].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
			y: capHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
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
					x: contours[0].nodes[0].expandedTo[1].x
					y: 0
					typeOut: 'line'
					expand: Object({
						width: ( 25 / 90 ) * thickness * opticThickness
						angle: 90 + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[0].expandedTo[1].x + 145 + 150 * width
					y: 0
					expand: Object({
						width: ( 25 / 90 ) * thickness * opticThickness
						angle: 90 + 'deg'
						distr: 0
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: capHeight
					typeOut: 'line'
					expand: Object({
						width: ( 25 / 90 ) * thickness * opticThickness
						angle: - 90 + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[0].expandedTo[1].x + 135 + 150 * width
					y: capHeight
					expand: Object({
						width: ( 25 / 90 ) * thickness * opticThickness
						angle: - 90 + 'deg'
						distr: 0
					})
		3:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: ( 352 / 660 ) * capHeight * crossbar
					typeOut: 'line'
					expand: Object({
						width: ( 25 / 90 ) * thickness * opticThickness
						angle: 90 + 'deg'
						distr: 0.5
					})
				1:
					x: contours[0].nodes[0].expandedTo[1].x + 80 + 150 * width
					y: ( 352 / 660 ) * capHeight * crossbar
					expand: Object({
						width: ( 25 / 90 ) * thickness * opticThickness
						angle: 90 + 'deg'
						distr: 0.5
					})
		4:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[1].nodes[0].expandedTo[1].y
				1:
					x: contours[0].nodes[0].expandedTo[1].x
					y: Math.max(
						contours[0].nodes[0].expandedTo[1].y,
						contours[1].nodes[0].expandedTo[1].y
					)
					dirOut: - 90 + 'deg'
				2:
					x: contours[0].nodes[0].expandedTo[1].x + Math.min(
						contours[4].nodes[1].y - contours[4].nodes[0].y,
						25
					)
					y: contours[1].nodes[0].expandedTo[1].y
					typeOut: 'line'
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
					right: false
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
					right: false
					directionY: -1
		# 2:
		# 	base: 'serif-v'
		# 	parentAnchors:
		# 		0:
		# 			x: contours[1].nodes[1].expandedTo[0].x - serifHeight - serifCurve
		# 			y: contours[1].nodes[1].expandedTo[1].y
		# 		1:
		# 			x: contours[1].nodes[1].expandedTo[1].x - serifHeight - serifCurve
		# 			y: contours[1].nodes[1].expandedTo[0].y
		# 		2:
		# 			anchorLine: contours[1].nodes[1].expandedTo[0].x
		# 			left: false
		# 			baseLeft: contours[1].nodes[1].expandedTo[0].point
		# 	transformOrigin: contours[1].nodes[1].expandedTo[0].point
		# 	transforms: Array( [ 'skewX', serifRotate * (12) + 'deg' ] )
		2:
			base: 'serif-v'
			parentAnchors:
				############### TODO
				0:
					x: Math.max(
						contours[1].nodes[0].expandedTo[1].x,
						############### TODO
						contours[1].nodes[1].expandedTo[1].x - serifHeight - ( serifCurve - ( 70 * ( ( 1 / (35 + serifCurve) - 1 ) ) ) )
					)
					y: contours[1].nodes[1].expandedTo[1].y
				1:
					x: Math.max(
						contours[1].nodes[0].expandedTo[0].x,
						############### TODO
						contours[1].nodes[1].expandedTo[0].x - serifHeight - ( serifCurve - ( 70 * ( ( 1 / (35 + serifCurve) - 1 ) ) ) )
					)
					y: contours[1].nodes[1].expandedTo[0].y
				2:
					anchorLine: contours[1].nodes[1].expandedTo[1].x
					rightWidth: 60
					left: false
					baseLeft: contours[1].nodes[1].expandedTo[0].point
			# parentParameters:
			# 	serifMedian: serifMedian * 0.548
			# 	serifHeight: ( serifHeight + 20 * Math.exp(- ( Math.pow( serifHeight - 15, 2) ) / ( 2 * Math.pow( 8, 2)) ) ) / Math.cos(serifRotate * 12 / 180 * Math.PI)
			# 	midWidth: midWidth * 0.972
			transformOrigin: contours[1].nodes[1].expandedTo[0].point
			transforms: Array( [ 'skewX', serifRotate * (12) + 'deg' ] )
		3:
			base: 'serif-v'
			parentAnchors:
				0:
					x: Math.max(
						contours[2].nodes[0].expandedTo[1].x,
						contours[2].nodes[1].expandedTo[0].x - serifHeight - serifCurve
					)
					y: contours[2].nodes[1].expandedTo[0].y
				1:
					x: Math.max(
						contours[2].nodes[0].expandedTo[1].x,
						contours[2].nodes[1].expandedTo[1].x - serifHeight - serifCurve
					)
					y: contours[2].nodes[1].expandedTo[1].y
				2:
					anchorLine: contours[2].nodes[1].expandedTo[0].x
					right: false
					baseRight: contours[2].nodes[1].expandedTo[0].point
			# parentParameters:
			# 	serifMedian: serifMedian * 0.548
			# 	serifHeight: ( serifHeight + 20 * Math.exp(- ( Math.pow( serifHeight - 15, 2) ) / ( 2 * Math.pow( 8, 2)) ) ) / Math.cos(serifRotate * 12 / 180 * Math.PI)
			# 	midWidth: midWidth * 0.972
			transformOrigin: contours[2].nodes[1].expandedTo[0].point
			transforms: Array( [ 'skewX', serifRotate * (12) - 12  + 'deg' ] )
		4:
			base: 'serif-v'
			parentAnchors:
				0:
					x: Math.max(
						contours[3].nodes[1].expandedTo[1].x - serifHeight - serifCurve - Math.sqrt( serifCurve * 30 ),
						contours[3].nodes[0].x
					)
					y: contours[3].nodes[1].expandedTo[1].y
				1:
					x: Math.max(
						contours[3].nodes[1].expandedTo[0].x - serifHeight - serifCurve - Math.sqrt( serifCurve * 30 ),
						contours[3].nodes[0].x
					)
					y: contours[3].nodes[1].expandedTo[0].y
				2:
					anchorLine: contours[3].nodes[1].expandedTo[0].x
			# parentParameters:
			# 	serifMedian: serifMedian * 0.548
			# 	serifHeight: ( serifHeight + 20 * Math.exp(- ( Math.pow( serifHeight - 15, 2) ) / ( 2 * Math.pow( 8, 2)) ) ) / Math.cos(serifRotate * 12 / 180 * Math.PI)
			# 	midWidth: midWidth * 0.972
			transformOrigin: contours[3].nodes[1].point
			transforms: Array( [ 'skewX', serifRotate * (12) - 12  + 'deg' ] )
