# TODO:
## SERIFS…
exports.glyphs['F_cap'] =
	unicode: 'F'
	glyphName: 'F'
	characterName: 'LATIN CAPITAL LETTER F'
	ot:
		advanceWidth: contours[1].nodes[1].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 115 * spacing + ( (25) / 90 ) * thickness + ( serifWidth - 75 )
		spacingRight: 10 * spacing
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
					y: capHeight
					typeOut: 'line'
					expand: Object({
						width: ( 25 / 90 ) * thickness * opticThickness
						angle: - 90 + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[0].expandedTo[1].x + 165 + 150 * width
					y: capHeight
					expand: Object({
						width: ( 25 / 90 ) * thickness * opticThickness
						angle: - 90 + 'deg'
						distr: 0
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: ( 347 / 660 ) * capHeight * crossbar
					typeOut: 'line'
					expand: Object({
						width: ( 25 / 90 ) * thickness * opticThickness
						angle: 90 + 'deg'
						distr: 0.5
					})
				1:
					x: contours[0].nodes[0].expandedTo[1].x + 70 + 150 * width
					y: ( 347 / 660 ) * capHeight * crossbar
					expand: Object({
						width: ( 25 / 90 ) * thickness * opticThickness
						angle: 90 + 'deg'
						distr: 0.5
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
					right: false
					directionY: -1
		2:
			base: 'serif-v'
			parentAnchors:
				0:
					x: contours[1].nodes[1].expandedTo[0].x - serifHeight - serifCurve
					y: contours[1].nodes[1].expandedTo[0].y
				1:
					x: contours[1].nodes[1].expandedTo[1].x - serifHeight - serifCurve
					y: contours[1].nodes[1].expandedTo[1].y
				2:
					anchorLine: contours[1].nodes[1].expandedTo[0].x
					right: false
					baseRight: contours[1].nodes[1].expandedTo[0].point
			# parentParameters:
			# 	serifMedian: serifMedian * 0.548
			# 	serifHeight: ( serifHeight + 20 * Math.exp(- ( Math.pow( serifHeight - 15, 2) ) / ( 2 * Math.pow( 8, 2)) ) ) / Math.cos(serifRotate * 12 / 180 * Math.PI)
			# 	midWidth: midWidth * 0.972
			transformOrigin: contours[1].nodes[1].expandedTo[0].point
			transforms: Array( [ 'skewX', serifRotate * (12) - 12  + 'deg' ] )
		3:
			base: 'serif-v'
			parentAnchors:
				0:
					x: Math.max(
						contours[2].nodes[1].expandedTo[1].x - serifHeight - serifCurve - Math.sqrt( serifCurve * 30 ),
						contours[2].nodes[0].x
					)
					y: contours[2].nodes[1].expandedTo[1].y
				1:
					x: Math.max(
						contours[2].nodes[1].expandedTo[0].x - serifHeight - serifCurve - Math.sqrt( serifCurve * 30 ),
						contours[2].nodes[0].x
					)
					y: contours[2].nodes[1].expandedTo[0].y
				2:
					anchorLine: contours[2].nodes[1].expandedTo[0].x
			# parentParameters:
			# 	serifMedian: serifMedian * 0.548
			# 	serifHeight: ( serifHeight + 20 * Math.exp(- ( Math.pow( serifHeight - 15, 2) ) / ( 2 * Math.pow( 8, 2)) ) ) / Math.cos(serifRotate * 12 / 180 * Math.PI)
			# 	midWidth: midWidth * 0.972
			transformOrigin: contours[2].nodes[1].point
			transforms: Array( [ 'skewX', serifRotate * (12) - 12  + 'deg' ] )
