exports.glyphs['K_cap'] =
	unicode: 'K'
	glyphName: 'K'
	characterName: 'LATIN CAPITAL LETTER K'
	ot:
		advanceWidth: contours[2].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 40 + ( serifWidth - 75 )
		spacingRight: 50 * spacing + 10
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
					x: spacingLeft + (100)
					y: Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand:
						width: ( 100 / 90 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
				1:
					x: contours[0].nodes[0].x
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					typeIn: 'line'
					expand:
						width: ( 100 / 90 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: ( 355 / 660 ) * capHeight
					typeOut: 'line'
					expand:
						width: ( 26 / 90 ) * thickness * opticThickness
						angle: - 52 + 'deg'
						distr: 0
				1:
					x: Math.max(
						contours[0].nodes[1].expandedTo[1].x + 95 + 200 * width,
						345 + 200 * width + ( serifWidth - 75 )
					) - (27)
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					typeIn: 'line'
					expand:
						width: ( 36 / 90 ) * thickness * opticThickness * Math.sqrt( width )
						angle: 0 + 'deg'
						distr: 0.25
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					expandedTo:
						[
							{
								x: contours[2].nodes[1].expandedTo[1].x + 5
								y: - overshoot
							}
							{
								x: contours[2].nodes[0].expandedTo[0].x
								y: contours[2].nodes[1].expandedTo[1].y
							}
						]
				1:
					x: contours[1].nodes[1].expandedTo[1].x + 80
					y: - overshoot
					dirOut: 180 + 'deg'
					tensionOut: 1.2
					typeIn: 'line'
					expand:
						width: ( 36 / 90 ) * thickness
						angle: 33 + 'deg'
						distr: 0
				#### TODO thickness / angle
				2:
					x: Utils.onLine({
						y: 210
						on: [ contours[2].nodes[3].expandedTo[1], contours[2].nodes[1].expandedTo[0] ]
					}) - (6)
					y: 210
					dirOut: Utils.lineAngle({x: contours[2].nodes[3].expandedTo[0].x, y: contours[2].nodes[3].expandedTo[0].y}, {x: contours[2].nodes[2].expandedTo[0].x, y: contours[2].nodes[2].expandedTo[0].y})
					tensionIn: 1.2
					typeIn: 'smooth'
					expand:
						# width: ( 153 / 90 ) * thickness
						# angle: - 12 + 'deg'
						width: ( 100 / 90 ) * thickness
						angle: Utils.lineAngle({x: contours[1].nodes[0].expandedTo[1].x, y: contours[1].nodes[0].expandedTo[1].y}, {x: contours[1].nodes[1].expandedTo[1].x, y: contours[1].nodes[1].expandedTo[1].y})
						distr: 1
				3:
					x: contours[1].nodes[0].expandedTo[0].x
					y: contours[1].nodes[0].expandedTo[0].y
					typeIn: 'line'
					expand:
						width: ( 100 / 90 ) * thickness
						angle: Utils.lineAngle({x: contours[1].nodes[0].expandedTo[1].x, y: contours[1].nodes[0].expandedTo[1].y}, {x: contours[1].nodes[1].expandedTo[1].x, y: contours[1].nodes[1].expandedTo[1].y})
						distr: 0
	components:
		0:
			base: ['serif-vertical', 'none']
			id: 'bottomleft'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0]
					noneAnchor: contours[0].nodes[0].expandedTo[0]
					opposite: contours[0].nodes[0].expandedTo[1]
		1:
			base: ['serif-vertical', 'none']
			id: 'bottomright'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1]
					noneAnchor: contours[0].nodes[0].expandedTo[1]
					opposite: contours[0].nodes[0].expandedTo[0]
					reversed: true
			transformOrigin: contours[0].nodes[0].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ]
			)
		2:
			base: ['serif-vertical', 'none']
			id: 'topleft'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[0]
					noneAnchor: contours[0].nodes[1].expandedTo[0]
					opposite: contours[0].nodes[1].expandedTo[1]
					reversed: true
			transformOrigin: contours[0].nodes[1]
			transforms: Array(
				[ 'scaleY', -1 ]
			)
		3:
			base: ['serif-vertical', 'none']
			id: 'topright'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[1]
					noneAnchor: contours[0].nodes[1].expandedTo[1]
					opposite: contours[0].nodes[1].expandedTo[0]
			transformOrigin: contours[0].nodes[1].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
		4:
			base: ['serif-oblique-obtuse', 'none']
			id: 'topleft2'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[1]
					noneAnchor: contours[1].nodes[1].expandedTo[1]
					opposite: contours[1].nodes[1].expandedTo[0]
					obliqueEndPoint: contours[1].nodes[0].expandedTo[1]
			transformOrigin: contours[1].nodes[1].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
		5:
			base: ['serif-oblique-acute', 'none']
			id: 'topright2'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[0]
					noneAnchor: contours[1].nodes[1].expandedTo[0]
					opposite: contours[1].nodes[1].expandedTo[1]
					obliqueEndPoint: contours[1].nodes[0].expandedTo[0]
					scaleX: -1
					reversed: true
			transformOrigin: contours[1].nodes[1].expandedTo[0]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
