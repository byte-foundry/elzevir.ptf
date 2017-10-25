exports.glyphs['R_cap_alt'] =
	unicode: 'R'
	glyphName: 'R'
	characterName: 'LATIN CAPITAL LETTER R'
	altImg: 'alt-elzevir-R-1.svg'
	ot:
		advanceWidth: contours[2].nodes[0].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 40 + ( serifWidth - 75 )
		spacingRight: 50 * spacing + 0
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: contours[0].nodes[0].expandedTo[0].x + ( contours[1].nodes[2].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
			y: capHeight + diacriticHeight
			junction: Utils.pointOnCurve( contours[1].nodes[2].expandedTo[0], contours[1].nodes[2].expandedTo[0].handleOut, contours[1].nodes[3].expandedTo[0], contours[1].nodes[3].expandedTo[0].handleIn, ( ( 80 + 10 * width ) / 90 ) * thickness, true, 10 )
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
					y: contours[0].nodes[1].expandedTo[1].y
					typeOut: 'line'
					expand:
						width: ( 25 / 90 ) * thickness
						angle: - 90 + 'deg'
						distr: 0
				1:
					x: contours[0].nodes[1].expandedTo[1].x + ( contours[1].nodes[2].expandedTo[1].x - contours[0].nodes[1].expandedTo[1].x ) * Math.min( 0.8, 0.5 * Math.sqrt( width ) )
					y: capHeight
					dirOut: 0 + 'deg'
					typeIn: 'line'
					expand:
						width: ( 25 / 90 ) * thickness
						angle: - 90 + 'deg'
						distr: 0
				2:
					x: Math.max(
						contours[0].nodes[1].expandedTo[1].x + 145 + 200 * width,
						360 + 200 * width + ( serifWidth - 75 )
					) - (79)
					y: capHeight - ( capHeight - ( 295 / 660 ) * capHeight * crossbar ) * 0.5 + (12)
					dirIn: 90 + 'deg'
					typeIn: 'smooth'
					expand:
						width: ( 105 / 90 ) * thickness * opticThickness
						angle: 180 + 'deg'
						distr: 0.75
				3:
					x: contours[0].nodes[1].expandedTo[1].x + ( contours[1].nodes[2].expandedTo[1].x - contours[0].nodes[1].expandedTo[1].x ) * Math.min( 0.7, 0.4 * Math.sqrt( width ) )
					y: ( 320 / 660 ) * capHeight * crossbar + (0)
					typeOut: 'line'
					dirIn: 0
					expand:
						width: ( 25 / 90 ) * thickness
						angle: 90 + 'deg'
						distr: 0.25
				4:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[1].nodes[3].expandedTo[0].y
					typeIn: 'line'
					expand:
						width: ( 25 / 90 ) * thickness
						angle: 90 + 'deg'
						distr: 0
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[2].expandedTo[0].x + 35 + (3)
					y: - 45 + (4)
					dirOut: Math.PI * ( - 33 ) / 180
					expand:
						width: ( 17 / 90 ) * thickness
						angle: contours[2].nodes[0].dirOut + Math.PI / 2
						distr: 0.25
				1:
					expandedTo:
						[
							{
								x: contours[1].nodes[3].expandedTo[0].x
								y: contours[1].nodes[3].expandedTo[0].y
								dirIn: - 70 + 'deg'
							}
							{
								x: anchors[0].junction.x
								y: anchors[0].junction.y
								dirIn: - 70 + 'deg' # Math.max( - 80, - 50 - ( 20 / 90 ) * thickness * width ) + 'deg'
							}
						]
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
