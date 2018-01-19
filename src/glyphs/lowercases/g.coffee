exports.glyphs['g'] =
	unicode: 'g'
	glyphName: 'g'
	characterName: 'LATIN SMALL LETTER G'
	ot:
		advanceWidth: contours[0].nodes[5].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 20 + (0)
		spacingRight: 50 * spacing + 20
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: contours[1].nodes[2].expandedTo[0].x
			y: xHeight + diacriticHeight
			junctionBottom: Utils.pointOnCurve( contours[0].nodes[2].expandedTo[0], contours[0].nodes[2].expandedTo[0].handleOut, contours[0].nodes[3].expandedTo[0], contours[0].nodes[3].expandedTo[0].handleIn, ( 15 / 90 ) * thickness, true, 10 )
			junctionTop: Utils.pointOnCurve( contours[1].nodes[1].expandedTo[0], contours[1].nodes[1].expandedTo[0].handleOut, contours[1].nodes[2].expandedTo[0], contours[1].nodes[2].expandedTo[0].handleIn, 50 * width + ( 50 / 90 ) * thickness, true, 10 )
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[1].x + ( contours[1].nodes[3].x - contours[1].nodes[1].x ) * 0.5
					y: ( 205 / 500 ) * xHeight - (4)
					typeOut: 'line'
					expand:
						width: ( 15 / 90 ) * thickness
						angle:( - 90 ) / 180 * Math.PI
						distr: 0.25
				1:
					x: contours[0].nodes[0].x - 55 * width
					y: contours[0].nodes[0].y
					dirOut: Math.PI
					typeIn: 'smooth'
					expand:
						width: ( 15 / 90 ) * thickness
						angle:( - 90 ) / 180 * Math.PI
						distr: 0.25
				2:
					x: contours[0].nodes[7].x + 25
					y: contours[0].nodes[3].expandedTo[0].y + ( contours[0].nodes[1].expandedTo[0].y - contours[0].nodes[3].expandedTo[0].y ) * 0.53
					dirOut:( - 90 ) / 180 * Math.PI
					typeIn: 'smooth'
					expand:
						width: ( 70 / 90 ) * thickness
						angle:( 30 ) / 180 * Math.PI
						distr: 0.25
				3:
					x: contours[0].nodes[2].x + ( contours[0].nodes[5].x - contours[0].nodes[2].x ) * 0.35
					y: contours[0].nodes[6].expandedTo[1].y + ( contours[0].nodes[0].expandedTo[1].y - contours[0].nodes[6].expandedTo[1].y ) * 0.65
					typeOut: 'line'
					dirIn: 0
					expand:
						width: ( 85 / 90 ) * thickness
						angle:( 93 ) / 180 * Math.PI
						distr: 0.5
				4:
					x: contours[0].nodes[3].x + 70 * width + (0)
					y: contours[0].nodes[3].y + (3)
					dirOut: Math.PI
					typeIn: 'smooth'
					expand:
						width: ( 89 / 90 ) * thickness
						angle:( 74 ) / 180 * Math.PI
						distr: 0.5
				5:
					x: contours[0].nodes[7].x + 200 * width + 236 - (33)
					y: contours[0].nodes[6].expandedTo[1].y + ( contours[0].nodes[3].expandedTo[1].y - contours[0].nodes[6].expandedTo[1].y ) * 0.6
					dirOut:( - 90 ) / 180 * Math.PI
					typeIn: 'smooth'
					expand:
						width: ( 79 / 90 ) * thickness
						angle:( 180 - 145 ) / 180 * Math.PI
						distr: 0.75
				6:
					x: contours[0].nodes[7].x + ( contours[0].nodes[5].x - contours[0].nodes[7].x ) * 0.35
					y: descender - overshoot
					dirIn: Math.PI
					typeOut: 'smooth'
					expand:
						width: ( 27 / 90 ) * thickness
						angle:( 180 + 68 ) / 180 * Math.PI
						distr: 0.75
				7:
					x: spacingLeft + (15)
					y: contours[0].nodes[6].expandedTo[1].y + ( contours[0].nodes[3].expandedTo[0].y - contours[0].nodes[6].expandedTo[1].y ) * 0.5
					dirIn: Math.PI / 2
					expand:
						width: ( 61 / 90 ) * thickness
						angle:( 180 + 10 ) / 180 * Math.PI
						distr: 0.75
		1:
			skeleton: true
			closed: true
			nodes:
				0:
					x: contours[0].nodes[0].x
					y: contours[0].nodes[0].expandedTo[1].y
					dirOut: Math.PI
					typeIn: 'smooth'
					expand:
						width: ( 20 / 90 ) * thickness
						angle: Math.PI / 2
						distr: 0
				1:
					x: contours[0].nodes[5].x - (Math.cos( 35 * Math.PI / 180 ) * ( 79 / 90 ) * thickness * 0.75)
					y: contours[1].nodes[3].y
					dirOut:( - 90 ) / 180 * Math.PI
					typeIn: 'smooth'
					expand:
						width: ( 85 / 90 ) * thickness
						angle: Math.PI
						distr: 0.25
				2:
					x: contours[0].nodes[0].x
					y: xHeight + overshoot
					dirOut: 0
					typeIn: 'smooth'
					expand:
						width: ( 20 / 90 ) * thickness
						angle:( - 90 ) / 180 * Math.PI
						distr: 0
				3:
					x: contours[0].nodes[7].x + 40 + (6)
					y: contours[1].nodes[0].expandedTo[0].y + ( contours[1].nodes[2].expandedTo[0].y - contours[1].nodes[0].expandedTo[0].y ) * 0.5
					dirOut: Math.PI / 2
					typeIn: 'smooth'
					expand:
						width: ( 85 / 90 ) * thickness
						angle: 0
						distr: 0.25
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[5].expandedTo[1].x + 20
					y: xHeight
					typeOut: 'line'
					expand:
						width: ( 50 / 90 ) * thickness
						angle:( - 90 ) / 180 * Math.PI
						distr: 0
				1:
					x: anchors[0].junctionTop.x
					y: anchors[0].junctionTop.y
					typeIn: 'line'
					expand:
						width: ( 35 / 90 ) * thickness
						angle:( - 90 ) / 180 * Math.PI
						distr: 0
		3:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[7].x
					y: contours[0].nodes[7].y
					dirOut: contours[0].nodes[7].dirIn
					expand:
						width: contours[0].nodes[7].expand.width
						angle: contours[0].nodes[7].expand.angle
						distr: contours[0].nodes[7].expand.distr
				1:
					x: anchors[0].junctionBottom.x
					y: anchors[0].junctionBottom.y + (3)
					dirIn: Math.max(
						Math.min(
							- 140 - 25 * width,
							- 140 - ( 25 / 90 ) * thickness * width
						),
						- 180
					) / 180 * Math.PI
					expand:
						width: ( 13 / 90 ) * thickness
						angle:( 138 ) / 180 * Math.PI
						distr: 0
