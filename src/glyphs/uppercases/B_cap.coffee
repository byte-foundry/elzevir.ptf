exports.glyphs['B_cap'] =
	unicode: 'B'
	glyphName: 'B'
	characterName: 'LATIN CAPITAL LETTER B'
	ot:
		advanceWidth: contours[2].nodes[2].expandedTo[1].x + spacingRight
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
					typeIn: 'smooth'
					expand:
						width: ( 25 / 90 ) * thickness
						angle:( - 90 ) / 180 * Math.PI
						distr: 0
				2:
					x: Math.max(
						contours[0].nodes[1].expandedTo[1].x + 140 + 200 * width,
						355 + 200 * width + ( serifWidth - 75 )
					) - (75)
					y: (( 350 / 660 ) * capHeight * crossbar + ( 15 / 90 ) * thickness * 0.25) + ( (capHeight - ( 25 / 90 ) * thickness) - (( 350 / 660 ) * capHeight * crossbar + ( 15 / 90 ) * thickness * 0.25) ) * 0.55 - (3)
					# y: contours[1].nodes[3].y
					dirIn: Math.PI / 2
					typeIn: 'smooth'
					expand:
						width: ( 100 / 90 ) * thickness * opticThickness
						angle: Math.PI
						distr: 0.75
				3:
					x: contours[0].nodes[1].expandedTo[1].x + ( contours[1].nodes[2].expandedTo[1].x - contours[0].nodes[1].expandedTo[1].x ) * Math.min( 0.7, 0.4 * Math.sqrt( width ) )
					y: ( 350 / 660 ) * capHeight * crossbar
					typeOut: 'line'
					dirIn: 0
					expand:
						width: ( 15 / 90 ) * thickness
						angle: Math.PI / 2
						distr: 0.25
				4:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[1].nodes[3].expandedTo[0].y
					typeIn: 'line'
					expand:
						width: ( 15 / 90 ) * thickness
						angle: Math.PI / 2
						distr: 0
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[0].expandedTo[1].y
					typeOut: 'line'
					expand:
						width: ( 25 / 90 ) * thickness
						angle:( 180 + 90 ) / 180 * Math.PI
						distr: 1
				1:
					x: contours[0].nodes[1].expandedTo[1].x + ( contours[2].nodes[2].expandedTo[0].x - contours[0].nodes[1].expandedTo[1].x ) * Math.min( 0.8, 0.5 * Math.sqrt( width ) )
					y: 0
					dirOut: 0
					typeIn: 'smooth'
					expand:
						width: ( 27 / 90 ) * thickness
						angle:( 180 + 112 ) / 180 * Math.PI
						distr: 1
				2:
					x: Math.max(
						contours[0].nodes[1].expandedTo[1].x + 195 + 200 * width,
						410 + 200 * width + ( serifWidth - 75 )
					) - (79)
					y: ( 180 / 660 ) * capHeight
					y: (( 25 / 90 ) * thickness) + ( contours[2].nodes[4].expandedTo[0].y - (( 25 / 90 ) * thickness) ) * 0.5
					dirOut: Math.PI / 2
					typeIn: 'smooth'
					expand:
						width: ( 105 / 90 ) * thickness * opticThickness
						angle: 0
						distr: 0.25
				3:
					x: contours[0].nodes[1].expandedTo[1].x + ( contours[2].nodes[2].expandedTo[0].x - contours[0].nodes[1].expandedTo[1].x ) * Math.min( 0.7, 0.3 * Math.sqrt( width ) )
					y: contours[2].nodes[4].expandedTo[0].y
					typeOut: 'line'
					dirIn: 0
					expand:
						width: ( 36 / 90 ) * thickness
						angle:( 33 ) / 180 * Math.PI
						distr: 0
				4:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[1].nodes[3].y + (5)
					typeIn: 'line'
					expand:
						width: ( 15 / 90 ) * thickness
						angle:( 180 - 90 ) / 180 * Math.PI
						distr: 1
		3:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[2].nodes[0].expandedTo[0].y
					dirOut: 0
					typeIn: 'line'
				1:
					x: contours[0].nodes[0].expandedTo[1].x
					y: Math.max(
						contours[0].nodes[0].expandedTo[1].y,
						contours[2].nodes[0].expandedTo[0].y
					)
					dirOut:( - 90 ) / 180 * Math.PI
					typeIn: 'line'
				2:
					x: contours[0].nodes[0].expandedTo[1].x + Math.min(
						contours[3].nodes[1].y - contours[3].nodes[0].y,
						25
					)
					y: contours[2].nodes[0].expandedTo[0].y
					typeIn: 'line'
					typeOut: 'line'
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
