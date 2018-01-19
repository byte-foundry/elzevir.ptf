exports.glyphs['J_cap'] =
	unicode: 'J'
	glyphName: 'J'
	characterName: 'LATIN CAPITAL LETTER J'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 0
		spacingRight: 50 * spacing + 40 + serifWidth
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
			y: capHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Math.max(
						contours[0].nodes[3].expandedTo[0].x + 100 * width,
						185 * width
					) + (25)
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand:
						width: ( 100 / 90 ) * thickness * opticThickness
						angle: 0
						distr: 0.25
				1:
					x: contours[0].nodes[0].expandedTo[0].x
					y: ( 200 / 660 ) * capHeight
					dirOut:( - 90 ) / 180 * Math.PI
					tensionOut: 1.2
					expand:
						width: ( 131 / 90 ) * thickness * opticThickness
						angle:( 40 ) / 180 * Math.PI
						distr: 0
				2:
					x: contours[0].nodes[3].expandedTo[1].x + ( contours[0].nodes[1].expandedTo[1].x - contours[0].nodes[3].expandedTo[1].x ) * 0.4 - (4)
					y: - overshoot * 2
					dirOut: Math.PI
					tensionIn: 1.2
					typeIn: 'smooth'
					expand:
						width: ( 32 / 90 ) * thickness
						angle:( 180 + 39 ) / 180 * Math.PI
						distr: 1
				3:
					x: spacingLeft + (21/90) * thickness
					y: Math.max(
						50,
						( 50 / 90 ) * thickness
					)
					dirIn: Math.min(
						Utils.lineAngle({x: contours[0].nodes[3].expandedTo[0].x, y: contours[0].nodes[3].expandedTo[0].y}, {x: contours[0].nodes[2].expandedTo[1].x, y: contours[0].nodes[2].expandedTo[1].y}),
						- ( 76 / 180 * Math.PI )
					)
					expand:
						width: ( 85 / 90 ) * thickness
						angle: Math.PI
						distr: 0.75
		1:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[3].expandedTo[1].x
					y: contours[0].nodes[3].expandedTo[1].y
					dirOut: contours[0].nodes[3].dirIn
				1:
					x: contours[0].nodes[3].expandedTo[1].x + ( contours[0].nodes[3].expandedTo[0].x - contours[0].nodes[3].expandedTo[1].x ) * ( 40 / 85 )
					y: contours[0].nodes[3].expandedTo[1].y + ( contours[0].nodes[3].expandedTo[0].x - contours[0].nodes[3].expandedTo[1].x ) * ( 40 / 85 )
					dirOut: 0
				2:
					x: contours[0].nodes[3].expandedTo[0].x
					y: contours[0].nodes[3].expandedTo[0].y
					dirIn: contours[0].nodes[3].dirIn
					typeOut: 'line'
	components:
		0:
			base: ['serif-vertical', 'none']
			id: 'topleft'
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
