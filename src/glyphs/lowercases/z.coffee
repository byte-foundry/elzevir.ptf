############
# TODO : serifs missing
############
exports.glyphs['z'] =
	unicode: 'z'
	glyphName: 'z'
	characterName: 'LATIN SMALL LETTER Z'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 45 * spacing + (0)
		spacingRight: 50 * spacing
	tags: [
		'all',
		'latin',
		'lowercase'
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
					x: 234 + 200 * width - (26)
					y: xHeight
					typeOut: 'line'
					expand: Object({
						width: ( 104 / 90 ) * thickness
						angle: 0 + 'deg'
						distr: 0.75
					})
				1:
					x: spacingLeft + (26)
					y: 0
					expand: Object({
						width: ( 106 / 90 ) * thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
					y: xHeight
					typeOut: 'line'
					expand: Object({
						width: ( 21 / 90 ) * thickness
						angle: - 106 + 'deg'
						distr: 0
					})
				1:
					x: 95
					y: xHeight
					typeOut: 'line'
					expand: Object({
						width: ( 21 / 90 ) * thickness
						angle: - 106 + serifRotate * (20) + 'deg'
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
						width: ( 20 / 90 ) * thickness
						angle: 79 + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[0].x
					y: 0
					typeOut: 'line'
					expand: Object({
						width: ( 20 / 90 ) * thickness
						angle: 79 + 'deg'
						distr: 0
					})
	components:
		0:
			base: 'serif-v'
			parentAnchors:
				0:
					x: Math.min(
						contours[1].nodes[1].expandedTo[0].x + serifHeight + serifCurve + Math.sqrt( serifCurve * (500/65) ),
						contours[0].nodes[0].expandedTo[0].x
					)
					y: Utils.onLine({
						x: Math.min(
							contours[1].nodes[1].expandedTo[0].x + serifHeight + serifCurve + Math.sqrt( serifCurve * (500/65) ),
							contours[0].nodes[0].expandedTo[0].x
						)
						on: [ contours[1].nodes[0].expandedTo[0].point, contours[1].nodes[1].expandedTo[0].point ]
					})
				1:
					x: Math.min(
						contours[1].nodes[1].expandedTo[1].x + serifHeight + serifCurve + Math.sqrt( serifCurve * (500/65) ),
						contours[0].nodes[0].expandedTo[0].x
					)
					y: Utils.onLine({
						x: Math.min(
							contours[1].nodes[1].expandedTo[1].x + serifHeight + serifCurve + Math.sqrt( serifCurve * (500/65) ),
							contours[0].nodes[0].expandedTo[0].x
						)
						on: [ contours[1].nodes[0].expandedTo[1].point, contours[1].nodes[1].expandedTo[1].point ]
					})
				2:
					anchorLine: contours[1].nodes[1].expandedTo[1].x
					directionX: - 1
					# rightWidth: 35
					# serifMedianRight: -10
					right: false
					baseRight: contours[1].nodes[1].expandedTo[0].point
			transformOrigin: Array( contours[1].nodes[1].expandedTo[0].x, contours[1].nodes[1].expandedTo[0].y )
			transforms: Array( [ 'skewX', 22 - serifRotate * (20) + 'deg' ] )
		1:
			base: 'serif-v'
			parentAnchors:
				0:
					x: Math.min(
						contours[2].nodes[1].expandedTo[1].x - serifHeight - serifCurve - Math.sqrt( serifCurve * (130/65) ),
						contours[0].nodes[1].expandedTo[1].x
					)
					y: Utils.onLine({
						x: Math.min(
							contours[2].nodes[1].expandedTo[1].x - serifHeight - serifCurve - Math.sqrt( serifCurve * (130/65) ),
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
					# rightWidth: - 25
					# rightCurve: 0.5
					# serifMedianLeft: -8
					# maxWidthTop: xHeight + 40
			transformOrigin: Array( contours[2].nodes[1].expandedTo[0].x, contours[2].nodes[1].expandedTo[0].y )
			transforms: Array( [ 'skewX', serifRotate * (15) + 'deg' ] )
