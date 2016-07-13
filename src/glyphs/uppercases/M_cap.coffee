# TODO serifwidth when 0
exports.glyphs['M_cap'] =
	unicode: 'M'
	glyphName: 'M'
	characterName: 'LATIN CAPITAL LETTER M'
	ot:
		advanceWidth: contours[1].nodes[1].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 30 + serifWidth * ( 80 / 75 )
		spacingRight: 50 * spacing + 30 + serifWidth * ( 85 / 75 )
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			intersection: Utils.lineLineIntersection( contours[2].nodes[1].expandedTo[1].point, contours[2].nodes[0].expandedTo[1].point, contours[3].nodes[0].expandedTo[0].point, contours[3].nodes[1].expandedTo[0].point )
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + (7)
					y: 0 + serifHeight + serifCurve
					typeOut: 'line'
					expand: Object({
						width: ( 30 / 90 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x + 25 + (0)
					y: capHeight - serifHeight - serifCurve
					expand: Object({
						width: ( 30 / 90 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x + 345 + 200 * width + (25)
					y: 0 + serifHeight + serifCurve
					typeOut: 'line'
					expand: Object({
						width: ( 100 / 90 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					expandedTo:
						[
							{
								x: Math.max(
									contours[1].nodes[1].expandedTo[1].x - ( 100 / 90 ) * thickness * opticThickness,
									Utils.onLine({
										y: capHeight - serifHeight - serifCurve
										on: [ contours[3].nodes[0].expandedTo[0].point, contours[3].nodes[1].expandedTo[0].point ]
									})
								)
								y: capHeight - serifHeight - serifCurve
								typeOut: 'line'
							}
							{
								x: Utils.onLine({
									y: capHeight - serifHeight - serifCurve
									on: [ contours[1].nodes[0].expandedTo[1].point, contours[1].nodes[2].expandedTo[1].point ]
								})
								y: capHeight - serifHeight - serifCurve
								typeIn: 'line'
							}
						]
				2:
					x: contours[1].nodes[0].expandedTo[1].x - 30
					y: capHeight
					expand: Object({
						width: ( 70 / 90 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 1
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x + ( contours[1].nodes[0].x - contours[0].nodes[0].expandedTo[1].x ) * 0.5 + ( 25 / 90 ) * thickness * opticThickness # contours[3].nodes[0].expand.width
					y: ( 113 / 90 ) * thickness
					typeOut: 'line'
					expand: Object({
						width: ( 100 / 90 ) * thickness * opticThickness
						angle: 180 - 133 + 'deg' # Math.acos( ( ( 110 / 90 ) * thickness ) / ( ( 100 / 90 ) * thickness * opticThickness ) )
						distr: 1
					})
				1:
					x: contours[0].nodes[1].x
					y: capHeight - ( 85 / 90 ) * thickness
					expand: Object({
						width: ( 110 / 90 ) * thickness * opticThickness
						angle: Math.asin( ( ( 85 / 90 ) * thickness ) / ( ( 110 / 90 ) * thickness * opticThickness ) )
						distr: 0
					})
		3:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Utils.onLine({
						y: - overshoot
						on: [ contours[2].nodes[1].expandedTo[0].point, contours[2].nodes[0].expandedTo[0].point ]
					})
					y: - overshoot
					typeOut: 'line'
					expand: Object({
						width: ( 25 / 90 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0
					})
				1:
					x: contours[1].nodes[2].expandedTo[0].x
					y: contours[1].nodes[2].expandedTo[0].y
					expand: Object({
						width: ( 35 / 90 ) * thickness
						angle: 0 + 'deg'
						distr: 0
					})
		4:
			skeleton: false
			closed: true
			nodes:
				0:
					x: Utils.onLine({
						y: capHeight
						on: [ contours[0].nodes[0].expandedTo[1].point, contours[0].nodes[1].expandedTo[1].point ]
					})
					y: capHeight
					typeOut: 'line'
				1:
					x: contours[2].nodes[1].expandedTo[1].x
					y: contours[2].nodes[1].expandedTo[1].y
					typeOut: 'line'
				2:
					x: contours[2].nodes[1].expandedTo[0].x
					y: contours[2].nodes[1].expandedTo[0].y
					typeOut: 'line'
		5:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[3].nodes[0].expandedTo[0].x
					y: contours[3].nodes[0].expandedTo[0].y
					typeOut: 'line'
				1:
					x: anchors[0].intersection[0]
					y: anchors[0].intersection[1]
					typeOut: 'line'
				2:
					x: contours[2].nodes[0].expandedTo[1].x
					y: contours[2].nodes[0].expandedTo[1].y
					typeOut: 'line'
				3:
					x: contours[2].nodes[0].expandedTo[0].x
					y: contours[2].nodes[0].expandedTo[0].y
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
					angle: Utils.lineAngle( contours[0].nodes[0].expandedTo[0].point, contours[0].nodes[1].expandedTo[0].point )
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
					baseRight: contours[4].nodes[0].point
					directionY: -1
					angle: Utils.lineAngle( contours[0].nodes[0].expandedTo[0].point, contours[0].nodes[1].expandedTo[0].point )
		2:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[1].nodes[0].expandedTo[1].x
					y: contours[1].nodes[0].y
				1:
					x: contours[1].nodes[0].expandedTo[0].x
					y: contours[1].nodes[0].y
				2:
					anchorLine: 0
					angle: Utils.lineAngle( contours[1].nodes[0].expandedTo[0].point, contours[1].nodes[1].expandedTo[0].point )
		3:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[1].nodes[1].expandedTo[1].x
					y: contours[1].nodes[1].expandedTo[1].y
				1:
					x: contours[1].nodes[2].expandedTo[0].x
					y: contours[1].nodes[2].expandedTo[0].y
				2:
					anchorLine: capHeight
					left: false
					directionY: -1
					angle: Utils.lineAngle( contours[1].nodes[0].expandedTo[1].point, contours[1].nodes[2].expandedTo[1].point )
