exports.glyphs['U_cap'] =
	unicode: 'U'
	glyphName: 'U'
	characterName: 'LATIN CAPITAL LETTER U'
	ot:
		advanceWidth: contours[0].nodes[4].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 30 + serifWidth
		spacingRight: 50 * spacing + 20 + ( 85 / 75 ) * serifWidth
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[4].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
			y: capHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + (25)
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand:
						width: ( 100 / 90 ) * thickness * opticThickness
						angle: 0
						distr: 0.25
				1:
					x: contours[0].nodes[0].expandedTo[0].x
					y: ( (200 + ( 15 / 90 ) * thickness * width) / 660 ) * capHeight
					dirOut:( - 90 ) / 180 * Math.PI
					typeIn: 'line'
					expand:
						width: ( 102 / 90 ) * thickness * opticThickness
						angle:( - 11 ) / 180 * Math.PI
						distr: 0
				2:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[4].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * 0.51
					y: - overshoot
					dirOut: 0
					typeIn: 'smooth'
					tensionIn: 1.2
					tensionOut: 1.2
					expand:
						width: ( 38 / 90 ) * thickness * opticThickness
						angle:( 67 ) / 180 * Math.PI
						distr: 0
				3:
					x: contours[0].nodes[4].expandedTo[0].x
					y: ( (170 + ( 15 / 90 ) * thickness * width) / 660 ) * capHeight
					dirIn:( - 90 ) / 180 * Math.PI
					typeOut: 'line'
					expand:
						width: ( 32 / 90 ) * thickness
						angle:( 162 ) / 180 * Math.PI
						distr: 0
				4:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 270 + 200 * width - (8),
						contours[0].nodes[0].expandedTo[1].x + 0.25 * ( 30 / 90 ) * thickness + 50
					)
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					typeIn: 'line'
					expand:
						width: ( 30 / 90 ) * thickness
						angle: Math.PI
						distr: 0.75
	components:
		0:
			base: ['serif-vertical', 'none']
			id: 'topleft'
			class: 'upperLeftStump'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0]
					noneAnchor: contours[0].nodes[0].expandedTo[0]
					opposite: contours[0].nodes[0].expandedTo[1]
					reversed: true
			transformOrigin: contours[0].nodes[0]
			transforms: Array(
				[ 'scaleY', -1 ]
			)
		1:
			base: ['serif-vertical', 'none']
			id: 'topright'
			class: 'upperLeftInsideStump'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1]
					noneAnchor: contours[0].nodes[0].expandedTo[1]
					opposite: contours[0].nodes[0].expandedTo[0]
			transformOrigin: contours[0].nodes[0].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
		2:
			base: ['serif-vertical', 'none']
			id: 'topleft2'
			class: 'upperRightInsideStump'
			parentAnchors:
				0:
					base: contours[0].nodes[4].expandedTo[1]
					noneAnchor: contours[0].nodes[4].expandedTo[1]
					opposite: contours[0].nodes[4].expandedTo[0]
					reversed: true
			transformOrigin: contours[0].nodes[4]
			transforms: Array(
				[ 'scaleY', -1 ]
			)
			parameters:
				serifWidth: Math.min( ( 90 / 75 ) * serifWidth, serifWidth + 15 )
				serifCurve: Math.min( ( 75 / 65 ) * serifCurve, serifCurve + 10 )
		3:
			base: ['serif-vertical', 'none']
			id: 'topright2'
			class: 'upperRightStump'
			parentAnchors:
				0:
					base: contours[0].nodes[4].expandedTo[0]
					noneAnchor: contours[0].nodes[4].expandedTo[0]
					opposite: contours[0].nodes[4].expandedTo[1]
			transformOrigin: contours[0].nodes[4].expandedTo[0]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
			parameters:
				serifWidth: Math.min( ( 85 / 75 ) * serifWidth, serifWidth + 10 )
				serifCurve: Math.min( ( 75 / 65 ) * serifCurve, serifCurve + 10 )
