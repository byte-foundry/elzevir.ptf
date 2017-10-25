exports.glyphs['four'] =
	unicode: '4'
	glyphName: 'four'
	characterName: 'DIGIT FOUR'
	ot:
		advanceWidth: contours[1].nodes[1].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 10
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
					x: contours[0].nodes[2].expandedTo[1].x
					y: xHeight + overshoot
					typeOut: 'line'
					expand:
						width: ( 15 / 90 ) * thickness
						angle: 0 + 'deg'
						distr: 1
				1:
					x: contours[0].nodes[2].expandedTo[0].x
					y: Utils.onLine({
						x: contours[0].nodes[2].expandedTo[0].x
						on: [ contours[2].nodes[0].expandedTo[0], contours[2].nodes[1].expandedTo[0] ]
					})
					typeOut: 'line'
					expand:
						width: ( 90 / 90 ) * thickness
						angle: 0 + 'deg'
						distr: 0
				2:
					x: contours[2].nodes[0].expandedTo[1].x + 200 * width + 160 - (22)
					y: ( 150 / 230 ) * descender + Math.max( 0, serifHeight * serifArc )
					expand:
						width: ( 90 / 90 ) * thickness
						angle: 0 + 'deg'
						distr: 0.75
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Math.min(
						Utils.onLine({
							y: contours[1].nodes[1].expandedTo[1].y
							on: [ contours[2].nodes[0].expandedTo[1], contours[2].nodes[1].expandedTo[0] ]
						}),
						contours[2].nodes[0].expandedTo[0].x
					)
					y: contours[1].nodes[1].expandedTo[1].y
					typeOut: 'line'
					expand:
						width: ( 40 / 90 ) * thickness
						angle: 180 - 90 + 'deg'
						distr: 1
				1:
					x: contours[0].nodes[2].expandedTo[1].x + 110 * width
					y: 0
					typeOut: 'line'
					expand:
						width: ( 40 / 90 ) * thickness
						angle: 90 + 'deg'
						distr: 0
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + 22
					y: 0
					typeOut: 'line'
					expand:
						width: ( 27 / 90 ) * thickness * Math.sqrt( width )
						angle: 145 + 'deg'
						distr: 0
				1:
					x: contours[0].nodes[0].expandedTo[0].x
					y: contours[0].nodes[0].expandedTo[0].y
					typeOut: 'line'
					expand:
						width: ( 31 / 90 ) * thickness
						angle: 180 - 61 + 'deg'
						distr: 1
		3:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[2].nodes[0].expandedTo[0].x
					y: contours[2].nodes[0].expandedTo[0].y
					typeOut: 'line'
				1:
					x: contours[2].nodes[0].expandedTo[1].x
					y: contours[2].nodes[0].expandedTo[1].y
					typeOut: 'line'
				2:
					x: contours[2].nodes[0].expandedTo[1].x
					y: 0
					typeOut: 'line'
	components:
		0:
			base: ['none', 'serif-vertical']
			id: 'bottomleft'
			parentAnchors:
				0:
					base: contours[0].nodes[2].expandedTo[0]
					noneAnchor: contours[0].nodes[2].expandedTo[0]
					opposite: contours[0].nodes[2].expandedTo[1]
		1:
			base: ['none', 'serif-vertical']
			id: 'bottomright'
			parentAnchors:
				0:
					base: contours[0].nodes[2].expandedTo[1]
					noneAnchor: contours[0].nodes[2].expandedTo[1]
					opposite: contours[0].nodes[2].expandedTo[0]
					reversed: true
			transformOrigin: contours[0].nodes[2].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ]
			)
