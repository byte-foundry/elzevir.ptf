exports.glyphs['T_cap'] =
	unicode: 'T'
	glyphName: 'T'
	characterName: 'LATIN CAPITAL LETTER T'
	ot:
		advanceWidth: contours[0].nodes[1].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 20 * spacing
		spacingRight: 20 * spacing
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
					x: spacingLeft
					y: capHeight
					typeOut: 'line'
					expand: Object({
						width: ( 25 / 90 ) * thickness * opticThickness
						angle: - 90 - serifRotate * (5) + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x + 365 + ( 25 / 90 ) * thickness + 200 * width
					y: capHeight
					expand: Object({
						width: ( 25 / 90 ) * thickness * opticThickness
						angle: - 90 + serifRotate * (5) + 'deg'
						distr: 0
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[0].x - contours[0].nodes[1].expandedTo[0].x ) * 0.5
					y: contours[0].nodes[1].expandedTo[1].y
					typeOut: 'line'
					expand: Object({
						width: ( 100 / 90 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.5
					})
				1:
					x: contours[1].nodes[0].x
					y: 0 + serifHeight + serifCurve
					expand: Object({
						width: ( 100 / 90 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.5
					})
	components:
		0:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[1].nodes[1].expandedTo[1].x
					y: contours[1].nodes[1].y
				1:
					x: contours[1].nodes[1].expandedTo[0].x
					y: contours[1].nodes[1].y
				2:
					anchorLine: 0
		1:
			base: 'serif-v'
			parentAnchors:
				0:
					x: Math.min(
						contours[1].nodes[0].x,
						contours[0].nodes[0].expandedTo[0].x + serifHeight + serifCurve
					)
					y: contours[0].nodes[0].expandedTo[0].y
				1:
					x: Math.min(
						contours[1].nodes[0].x,
						contours[0].nodes[0].expandedTo[1].x + serifHeight + serifCurve + Math.sqrt( serifCurve * 30 )
					)
					y: contours[0].nodes[0].expandedTo[1].y
				2:
					anchorLine: contours[0].nodes[0].expandedTo[0].x
					directionX: - 1
					right: false
					leftWidth: 70
					baseRight: contours[0].nodes[0].expandedTo[0].point
			parentParameters:
				serifMedian: serifMedian * 0.548
				# TODO serifHeigh: default and more
				serifHeight: ( serifHeight + 20 * Math.exp(- ( Math.pow( serifHeight - 15, 2) ) / ( 2 * Math.pow( 8, 2)) ) ) / Math.cos(serifRotate * 5 / 180 * Math.PI)
				midWidth: midWidth * 0.972
			transformOrigin: contours[0].nodes[0].expandedTo[0].point
			transforms: Array( [ 'skewX', serifRotate * (5) + 'deg' ] )
		2:
			base: 'serif-v'
			parentAnchors:
				0:
					x: Math.max(
						contours[1].nodes[0].x,
						contours[0].nodes[1].expandedTo[0].x - serifHeight - serifCurve
					)
					y: contours[0].nodes[1].expandedTo[0].y
				1:
					x: Math.max(
						contours[1].nodes[0].x,
						contours[0].nodes[1].expandedTo[1].x - serifHeight - serifCurve - Math.sqrt( serifCurve * 30 )
					)
					y: contours[0].nodes[1].expandedTo[1].y
				2:
					anchorLine: contours[0].nodes[1].expandedTo[0].x
					right: false
					leftWidth: 70
					baseRight: contours[0].nodes[1].expandedTo[0].point
			parentParameters:
				serifMedian: serifMedian * 0.548
				# TODO serifHeigh: default and more
				serifHeight: ( serifHeight + 20 * Math.exp(- ( Math.pow( serifHeight - 15, 2) ) / ( 2 * Math.pow( 8, 2)) ) ) / Math.cos( - serifRotate * 5 / 180 * Math.PI)
				midWidth: midWidth * 0.972
			transformOrigin: contours[0].nodes[1].expandedTo[0].point
			transforms: Array( [ 'skewX', - serifRotate * (5) + 'deg' ] )
