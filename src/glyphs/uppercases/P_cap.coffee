exports.glyphs['P_cap'] =
	unicode: 'P'
	glyphName: 'P'
	characterName: 'LATIN CAPITAL LETTER P'
	ot:
		advanceWidth: contours[1].nodes[2].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 40 + ( serifWidth - 75 )
		spacingRight: 50 * spacing + 20
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
						angle: 0
						distr: 0.25
				1:
					x: contours[0].nodes[0].x
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					expand:
						width: ( 100 / 90 ) * thickness * opticThickness
						angle: 0
						distr: 0.25
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].expandedTo[1].y
					expand:
						width: ( 25 / 90 ) * thickness
						angle:( - 90 ) / 180 * Math.PI
						distr: 0
				1:
					x: contours[0].nodes[1].expandedTo[1].x + ( contours[1].nodes[2].expandedTo[1].x - contours[0].nodes[1].expandedTo[1].x ) * Math.min( 0.8, 0.5 * Math.sqrt( width ) )
					y: capHeight
					dirOut: 0
					expand:
						width: ( 25 / 90 ) * thickness
						angle:( - 90 ) / 180 * Math.PI
						distr: 0
				2:
					x: contours[0].nodes[1].expandedTo[1].x + 155 + 200 * width - (75)
					x: Math.max(
						contours[0].nodes[1].expandedTo[1].x + 155 + 200 * width,
						370 + 200 * width + ( serifWidth - 75 )
					) - (75)
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 200 * width + 255 - (75),
						contours[0].nodes[0].expandedTo[1].x + 0.25 * ( 105 / 90 ) * thickness * opticThickness + 10
					)
					y: capHeight - ( capHeight - ( 295 / 660 ) * capHeight * crossbar ) * 0.5 - (0)
					dirIn: Math.PI / 2
					type: 'smooth'
					expand:
						width: ( 105 / 90 ) * thickness * opticThickness
						angle: Math.PI
						distr: 0.75
				3:
					x: contours[0].nodes[1].expandedTo[1].x + ( contours[1].nodes[2].expandedTo[1].x - contours[0].nodes[1].expandedTo[1].x ) * Math.min( 0.7, 0.4 * Math.sqrt( width ) )
					y: ( 295 / 660 ) * capHeight * crossbar + (6)
					typeOut: 'line'
					expand:
						width: ( 25 / 90 ) * thickness
						angle: Math.PI / 2
						distr: 0.25
				4:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[1].nodes[3].expandedTo[0].y
					expand:
						width: ( 25 / 90 ) * thickness
						angle: Math.PI / 2
						distr: 0
	components:
		0:
			base: ['serif-vertical', 'none']
			id: 'bottomleft'
			class: 'lowerLeftStump'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0]
					noneAnchor: contours[0].nodes[0].expandedTo[0]
					opposite: contours[0].nodes[0].expandedTo[1]
		1:
			base: ['serif-vertical', 'none']
			id: 'bottomright'
			class: 'lowerRightStump'
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
			class: 'upperLeftStump'
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
