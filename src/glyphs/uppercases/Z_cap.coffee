# TODO: serifs
exports.glyphs['Z_cap'] =
	unicode: 'Z'
	glyphName: 'Z'
	characterName: 'LATIN CAPITAL LETTER Z'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 40 
		spacingRight: 50 * spacing + 40 + ( 23 / 75 ) * serifWidth
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: contours[1].nodes[1].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[1].x - contours[1].nodes[1].expandedTo[0].x ) * 0.5
			y: capHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 315 + 200 * width - (29)
					x: Math.max(
						contours[0].nodes[1].expandedTo[0].x + 200 * width + 315 - (29),
						contours[0].nodes[1].expandedTo[1].x + 0.75 * ( 112 / 90 ) * thickness * opticThickness + 10
					)
					y: capHeight
					typeOut: 'line'
					expand: Object({
						width: ( 114 / 90 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.75
					})
				1:
					x: spacingLeft + (28)
					y: 0
					expand: Object({
						width: ( 112 / 90 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
					y: capHeight
					typeOut: 'line'
					expand: Object({
						width: ( 25 / 90 ) * thickness * opticThickness
						angle: - 103 + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[1].expandedTo[0].x + 50 # + ( contours[0].nodes[1].expandedTo[1].x - contours[0].nodes[1].expandedTo[0].x ) * 0.45 # 90 # + ( 23 / 75 ) * serifWidth
					y: capHeight
					typeOut: 'line'
					expand: Object({
						width: ( 25 / 90 ) * thickness * opticThickness
						angle: - 103 + (13) - serifRotate * (13) + 'deg'
						distr: 0
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[0].x + ( contours[0].nodes[1].expandedTo[1].x - contours[0].nodes[1].expandedTo[0].x ) * 0.5
					y: 0
					typeOut: 'line'
					expand: Object({
						width: ( 26 / 90 ) * thickness * opticThickness
						angle: 79 + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[0].x
					y: 0
					typeOut: 'line'
					expand: Object({
						width: ( 26 / 90 ) * thickness * opticThickness
						angle: 79 + (15) - serifRotate * 15 + 'deg'
						distr: 0
					})
	components:
		0:
			base: 'serif-v'
			parentAnchors:
				0:
					x: contours[1].nodes[1].expandedTo[0].x
					y: Utils.onLine({
						x: contours[1].nodes[1].expandedTo[0].x
						on: [ contours[1].nodes[0].expandedTo[0].point, contours[1].nodes[1].expandedTo[0].point ]
					})
				1:
					x: Math.min(
						contours[1].nodes[1].expandedTo[1].x + serifHeight + serifCurve + Math.sqrt( serifCurve * 70 ),
						contours[0].nodes[0].expandedTo[0].x
					)
					y: Utils.onLine({
						x: Math.min(
							contours[1].nodes[1].expandedTo[1].x + serifHeight + serifCurve + Math.sqrt( serifCurve * 70 ),
							contours[0].nodes[0].expandedTo[0].x
						)
						on: [ contours[1].nodes[0].expandedTo[1].point, contours[1].nodes[1].expandedTo[1].point ]
					})
				2:
					anchorLine: contours[1].nodes[1].expandedTo[0].x
					directionX: - 1
					leftWidth: 50
					serifMedianLeft: - 6
					right: false
					baseRight: contours[1].nodes[1].expandedTo[0].point
			transformOrigin: Array( contours[1].nodes[1].expandedTo[0].x, contours[1].nodes[1].expandedTo[0].y )
			transforms: Array( [ 'skewX', serifRotate * (13) + 'deg' ] )
		1:
			base: 'serif-v'
			parentAnchors:
				0:
					x: Math.max(
						contours[2].nodes[1].expandedTo[1].x - serifHeight - serifCurve - Math.sqrt( serifCurve * 35 ),
						contours[0].nodes[1].expandedTo[1].x
					)
					y: Utils.onLine({
						x: Math.max(
							contours[2].nodes[1].expandedTo[1].x - serifHeight - serifCurve - Math.sqrt( serifCurve * 35 ),
							contours[0].nodes[1].expandedTo[1].x
						)
						on: [ contours[2].nodes[0].expandedTo[1].point, contours[2].nodes[1].expandedTo[1].point ]
					})
				1:
					x: contours[2].nodes[1].expandedTo[0].x
					y: Utils.onLine({
						x: contours[2].nodes[1].expandedTo[0].x
						on: [ contours[2].nodes[0].expandedTo[0].point, contours[2].nodes[1].expandedTo[0].point ]
					})
				2:
					anchorLine: contours[2].nodes[1].expandedTo[0].x
					left: false
					baseLeft: contours[2].nodes[1].expandedTo[0].point
					# leftWidth: 35
					rightWidth: 45
					# rightCurve: 0.5
					serifMedianRight: - 5
					# maxWidthTop: capHeight + 40
			# parentParameters:
				# serifMedian: serifMedian * 0.548
			transformOrigin: Array( contours[2].nodes[1].expandedTo[0].x, contours[2].nodes[1].expandedTo[0].y )
			transforms: Array( [ 'skewX', serifRotate * (15) + 'deg' ] )
