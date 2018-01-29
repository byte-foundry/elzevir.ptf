exports.glyphs['R_cap'] =
	unicode: 'R'
	glyphName: 'R'
	characterName: 'LATIN CAPITAL LETTER R'
	altImg: 'alt-elzevir-R-0.svg'
	ot:
		advanceWidth: contours[2].nodes[0].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
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
					typeIn: 'line'
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
					typeOut: 'line'
					expand:
						width: ( 25 / 90 ) * thickness
						angle:( - 90 ) / 180 * Math.PI
						distr: 0
				1:
					x: contours[0].nodes[1].expandedTo[1].x + ( contours[1].nodes[2].expandedTo[1].x - contours[0].nodes[1].expandedTo[1].x ) * Math.min( 0.8, 0.5 * Math.sqrt( width ) )
					y: capHeight
					dirOut: 0
					typeIn: 'line'
					expand:
						width: ( 25 / 90 ) * thickness
						angle:( - 90 ) / 180 * Math.PI
						distr: 0
				2:
					x: Math.max(
						contours[0].nodes[1].expandedTo[1].x + 145 + 200 * width,
						360 + 200 * width + ( serifWidth - 75 )
					) - (79)
					y: capHeight - ( capHeight - ( 295 / 660 ) * capHeight * crossbar ) * 0.5 + (12)
					dirIn: Math.PI / 2
					typeIn: 'smooth'
					expand:
						width: ( 105 / 90 ) * thickness * opticThickness
						angle: Math.PI
						distr: 0.75
				3:
					x: contours[0].nodes[1].expandedTo[1].x + ( contours[1].nodes[2].expandedTo[1].x - contours[0].nodes[1].expandedTo[1].x ) * Math.min( 0.7, 0.4 * Math.sqrt( width ) )
					y: ( 320 / 660 ) * capHeight * crossbar + (0)
					typeOut: 'line'
					dirIn: 0
					expand:
						width: ( 25 / 90 ) * thickness
						angle: Math.PI / 2
						distr: 0.25
				4:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[1].nodes[3].expandedTo[0].y
					typeIn: 'line'
					expand:
						width: ( 25 / 90 ) * thickness
						angle: Math.PI / 2
						distr: 0
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					expandedTo:
						[
							{
								x: contours[2].nodes[1].expandedTo[1].x + 5
								y: 0
							}
							{
								x: contours[2].nodes[0].expandedTo[0].x
								y: contours[2].nodes[1].expandedTo[1].y
							}
						]
				1:
					x: Utils.onLine({
						y: 0
						on: [ contours[2].nodes[3].expandedTo[1], contours[2].nodes[2].expandedTo[1] ]
					}) - ( 10 / 90 ) * thickness
					y: 0
					dirOut: Math.PI
					tensionOut: 1.6
					typeIn: 'line'
					expand:
						width: ( 36 / 90 ) * thickness
						angle:( 33 ) / 180 * Math.PI
						distr: 0
				2:
					# x: 440 + (34)
					# x: contours[2].nodes[3].expandedTo[0].x + ( contours[1].nodes[2].expandedTo[0].x - contours[2].nodes[3].expandedTo[0].x ) * 0.6
					x: contours[1].nodes[2].expandedTo[1].x - ( 15 / 90 ) * thickness
					y: 111 - (5)
					dirOut: Utils.lineAngle({x: contours[2].nodes[3].expandedTo[0].x, y: contours[2].nodes[3].expandedTo[0].y}, {x: contours[2].nodes[2].expandedTo[0].x, y: contours[2].nodes[2].expandedTo[0].y})
					tensionIn: 1.6
					typeIn: 'smooth'
					expand:
						width: ( 138 / 90 ) * thickness
						angle:( - 8 ) / 180 * Math.PI
						distr: 0
				3:
					x: contours[1].nodes[3].x - (10)
					y: contours[1].nodes[3].expandedTo[1].y
					typeIn: 'line'
					expand:
						width: ( 120 / 90 ) * thickness
						angle: 0
						distr: 0.25
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
