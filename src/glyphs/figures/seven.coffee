exports.glyphs['seven'] =
	unicode: '7'
	glyphName: 'seven'
	characterName: 'DIGIT SEVEN'
	ot:
		advanceWidth: contours[0].nodes[2].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 30 + (0)
		spacingRight: 50 * spacing + 10
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
					x: contours[1].nodes[0].expandedTo[0].x + 90 * width + (25)
					y: ( 140 / 230 ) * descender
					typeOut: 'line'
					expand:
						width: ( 100 / 90 ) * thickness
						angle: 0
						distr: 0.25
				1:
					x: Utils.onLine({
						y: contours[1].nodes[0].expandedTo[1].y
						on: [ contours[0].nodes[0].expandedTo[1], contours[0].nodes[2].expandedTo[1] ]
					})
					y: contours[1].nodes[0].expandedTo[1].y
					typeOut: 'line'
					typeIn: 'line'
					expand:
						width: ( 15 / 90 ) * thickness
						angle: 0
						distr: 1
				2:
					x: contours[1].nodes[0].expandedTo[0].x + 200 * width + 195
					y: xHeight
					typeIn: 'line'
					typeOut: 'line'
					expand:
						width: ( 11 / 90 ) * thickness
						angle:( - 52 ) / 180 * Math.PI
						distr: 0
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + Math.max( 0, serifHeight * serifArc )
					y: xHeight
					typeOut: 'line'
					expand:
						width: Math.max(
							( 92 / 90 ) * thickness,
							( 92 / 90 ) * thickness / Math.cos( serifRotate * 5 * Math.PI / 180 )
						)
						angle:( - 90 - serifRotate * (5) ) / 180 * Math.PI
						distr: 0
				1:
					typeIn: 'line'
					typeOut: 'line'
					expandedTo:
						[
							{
								x: contours[0].nodes[2].expandedTo[0].x
								y: contours[0].nodes[2].expandedTo[0].y
							}
							{
								x: Utils.onLine({
									y: contours[1].nodes[0].expandedTo[1].y
									on: [ contours[0].nodes[0].expandedTo[0], contours[0].nodes[1].expandedTo[0] ]
								})
								y: contours[1].nodes[0].expandedTo[1].y
							}
						]
	components:
		0:
			base: ['serif-horizontal', 'none']
			id: 'topleft'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[1]
					noneAnchor: contours[1].nodes[0].expandedTo[1]
					opposite: contours[1].nodes[0].expandedTo[0]
					reversed: true
			transformOrigin: contours[1].nodes[0].expandedTo[1]
			transforms: Array(
				[ 'skewX',( - 5 * serifRotate ) / 180 * Math.PI ],
				[ 'scaleX', -1 ],
			)
