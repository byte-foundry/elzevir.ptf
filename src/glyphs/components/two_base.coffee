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
			junction: Utils.pointOnCurve( contours[0].nodes[0].expandedTo[0], contours[0].nodes[0].expandedTo[0].handleOut, contours[0].nodes[1].expandedTo[0], contours[0].nodes[1].expandedTo[0].handleIn, ( 160 / 90 ) * thickness, true, 100 )
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: 0
					dirOut: Math.min(
						40,
						( 43 / 500 ) * xHeight - 10 * width
					) + 'deg'
					expand:
						width: ( 20 / 90 ) * thickness
						angle: 90 + 'deg'
						distr: 0
				1:
					x: contours[1].nodes[1].x - 10 - (25)
					y: xHeight - ( 155 / 500 ) * xHeight
					dirOut: 90 + 'deg'
					typeIn: 'smooth'
					tensionIn: 2.2
					expand:
						width: ( 105 / 90 ) * thickness
						angle: - 163 + 'deg'
						distr: 0.25
				2:
					x: contours[0].nodes[3].expandedTo[0].x + ( contours[0].nodes[1].expandedTo[0].x - contours[0].nodes[3].expandedTo[0].x ) * 0.55
					y: xHeight + overshoot
					dirOut: 180 + 'deg'
					typeIn: 'smooth'
					expand:
						width: ( 80 / 90 ) * thickness
						angle: - 124 + 'deg'
						distr: 0
				3:
					x: contours[0].nodes[0].x + 50 - (2)
					# y: xHeight - 143 # xHeight - ( 143 / 500 ) * xHeight
					y: Math.min(
						xHeight - 143,
						( contours[0].nodes[2].y - ( 80 / 90 ) * thickness * Math.cos( 34 * Math.PI / 180 ) ) - 50
					)
					dirIn: 68 + 'deg'
					typeOut: 'smooth'
					expand:
						width: ( 13 / 90 ) * thickness
						angle: - 32 + 'deg'
						distr: 0.25
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
										on: [ contours[0].nodes[0].expandedTo[0], anchors[0].junction ]
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
					expand:
						width: Math.min(
							thickness / Math.cos( - serifRotate * (5) / 180 * Math.PI ),
							anchors[0].junction.y
						)
						angle: 90 - serifRotate * (5) + 'deg'
						distr: 0
	components:
		0:
			base: ['serif-horizontal', 'none']
			id: 'bottomright'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[1]
					noneAnchor: contours[1].nodes[1].expandedTo[1]
					opposite: contours[1].nodes[1].expandedTo[0]
					reversed: true
			transformOrigin: contours[1].nodes[1].expandedTo[1]
			transforms: Array(
				[ 'skewX', - 5 * serifRotate + 'deg' ]
				[ 'scaleY', -1 ],
			)
