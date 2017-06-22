# TODO: contours[1].nodes[0].y + width + remove first node
exports.glyphs['two_base'] =
	glyphName: 'two'
	characterName: 'DIGIT TWO'
	tags: [
		'all',
		'latin',
		'figures'
	]
	anchors:
		0:
			junction: Utils.pointOnCurve( contours[0].nodes[0].expandedTo[0], contours[0].nodes[1].expandedTo[0], ( 160 / 90 ) * thickness, true, 100 )
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: 0
					dirOut: Math.max(
						33,
						Math.min(
							25,
							40 - ( 7 / 90 ) * thickness * width
						)
					) + 'deg'
					# typeOut: 'line'
					dirOut: Math.min(
						40,
						( 43 / 500 ) * xHeight - 10 * width
					) + 'deg'
					expand: Object({
						width: ( 20 / 90 ) * thickness
						angle: 90 + 'deg'
						distr: 0
					})
				1:
					x: contours[1].nodes[1].x - 10 - (25)
					# y: contours[0].nodes[0].y + ( ( contours[0].nodes[2].y - ( 80 / 90 ) * thickness * Math.cos( 34 * Math.PI / 180 ) ) ) - contours[0].nodes[0].y ) * 0.5
					# y: contours[0].nodes[0].expandedTo[0].y + ( contours[0].nodes[2].y - contours[0].nodes[0].expandedTo[0].y ) * 0.6
					# y: ( contours[0].nodes[2].y - ( 80 / 90 ) * thickness * Math.cos( 34 * Math.PI / 180 ) ) - 93
					# y: ( 345 / 500 ) * xHeight
					y: xHeight - ( 155 / 500 ) * xHeight
					dirOut: 90 + 'deg'
					type: 'smooth'
					tensionIn: 2.2
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
					x: contours[0].nodes[0].x + 50 - (2)
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
					expandedTo:
						[
							{
								x: contours[0].nodes[0].expandedTo[0].x
								y: contours[0].nodes[0].expandedTo[0].y
							}
							{
								x: Math.min(
									Utils.onLine({
										y: Math.min(
											contours[1].nodes[1].expandedTo[1].y,
											anchors[0].junction.y
										)
										on: [ contours[0].nodes[0].expandedTo[0].point, anchors[0].junction ]
									}),
									anchors[0].junction.x
								)
								y: Math.min(
									contours[1].nodes[1].expandedTo[1].y,
									anchors[0].junction.y
								)
							}
						]
				1:
					x: contours[0].nodes[0].x + 200 * width + 220
					y: 0
					typeIn: 'line'
					expand: Object({
						width: Math.min(
							thickness / Math.cos( - serifRotate * (5) / 180 * Math.PI ),
							anchors[0].junction.y
						)
						angle: 90 - serifRotate * (5) + 'deg'
						distr: 0
					})
	components:
		0:
			base: ['serif-horizontal', 'none']
			id: 'bottomright'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[1].point
					noneAnchor: contours[1].nodes[1].expandedTo[1].point
					opposite: contours[1].nodes[1].expandedTo[0].point
					reversed: true
			transformOrigin: contours[1].nodes[1].expandedTo[1].point
			transforms: Array(
				[ 'scaleY', -1 ],
				[ 'skewX', - 5 * serifRotate + 'deg' ]
			)
