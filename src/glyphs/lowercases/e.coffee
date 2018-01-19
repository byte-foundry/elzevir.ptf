exports.glyphs['e'] =
	unicode: 'e'
	glyphName: 'e'
	characterName: 'LATIN SMALL LETTER E'
	ot:
		advanceWidth: contours[0].nodes[4].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 50 + (0)
		spacingRight: 50 * spacing + 50
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: contours[0].nodes[3].expandedTo[0].x # + ( contours[0].nodes[4].expandedTo[0].x - contours[0].nodes[2].expandedTo[0].x ) * 0.5
			y: xHeight + diacriticHeight
		1:
			angle: Math.min(
				Math.max(
					78 + 50 * aperture * apertureBottom,
					130
				),
				190
			) * Math.PI / 180
		2:
			middle: contours[0].nodes[1].expandedTo[0].x
		3:
			ogonek: Utils.pointOnCurve( contours[0].nodes[0].expandedTo[0], contours[0].nodes[0].expandedTo[0].handleOut, contours[0].nodes[1].expandedTo[0], contours[0].nodes[1].expandedTo[0].handleIn, 100 * width + 75 - ( 75 / 115 ) * thickness * contrast, false, 10 )
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[4].expandedTo[0].x - 3
					y: Math.min(
						contours[0].nodes[4].expandedTo[0].y - 20,
						Math.max(
							overshoot + ( ( ( 93 / 90 ) * thickness ) * Math.cos( (90 - 36) * Math.PI / 180 ) ),
							( overshoot + ( ( ( 93 / 90 ) * thickness ) * Math.cos( (90 - 36) * Math.PI / 180 ) ) ) + (150 * aperture * apertureBottom - 150)
						)
					) + (7)
					dirOut: anchors[1].angle + Math.PI / 2
					typeIn: 'smooth'
					expand:
						width: ( 13 / 90 ) * thickness
						angle: anchors[1].angle
						distr: 0.25
				1:
					x: contours[0].nodes[2].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[0].x - contours[0].nodes[2].expandedTo[0].x ) * 0.50
					y: - overshoot
					dirOut: Math.PI
					typeIn: 'smooth'
					expand:
						width: ( 93 / 90 ) * thickness
						angle:( 36 ) / 180 * Math.PI
						distr: 0
				2:
					x: spacingLeft + (24/90) * thickness
					y: ( 240 / 500 ) * xHeight
					dirOut: Math.PI / 2
					typeIn: 'smooth'
					expand:
						width: ( 101 / 90 ) * thickness
						angle:( 20 ) / 180 * Math.PI
						distr: 0.25
				3:
					x: contours[0].nodes[2].expandedTo[1].x + ( contours[0].nodes[4].expandedTo[1].x - contours[0].nodes[2].expandedTo[1].x ) * 0.57
					y: xHeight + overshoot
					dirOut: 0
					typeIn: 'smooth'
					expand:
						width: ( 25.5 / 90 ) * thickness
						angle:( - 101 ) / 180 * Math.PI
						distr: 0
				4:
					x: Math.max(
						contours[0].nodes[2].expandedTo[0].x + 160 + 200 * width,
						116 + 200 * width
					) - (13)
					# x: contours[0].nodes[2].expandedTo[0].x + 160 + 200 * width - (13)
					y: xHeight - ( 100 + ( 85 / 500 ) * xHeight ) + Math.min(
						(37),
						( 37 / 90 ) * thickness
					) + (20) + 250 * crossbar - 250
					dirIn: Math.PI / 2
					typeOut: 'line'
					expand:
						width: ( 113 / 90 ) * thickness
						angle:( 138 ) / 180 * Math.PI
						distr: 0.75
				5:
					x: contours[0].nodes[4].expandedTo[0].x
					y: contours[0].nodes[4].expandedTo[0].y
					typeOut: 'line'
					typeIn: 'line'
					expand:
						width: ( 85 / 90 ) * thickness
						angle: Math.PI
						distr: 0
				6:
					x: contours[0].nodes[5].expandedTo[1].x
					y: contours[0].nodes[5].expandedTo[1].y
					typeOut: 'line'
					typeIn: 'line'
					expand:
						width: ( 33 / 90 ) * thickness
						angle:( 89 ) / 180 * Math.PI
						distr: 0
				7:
					x: contours[0].nodes[2].expandedTo[1].x
					y: contours[0].nodes[5].expandedTo[1].y
					typeIn: 'line'
					typeOut: 'line'
					expand:
						width: ( 17 / 90 ) * thickness
						angle: Math.PI / 2
						distr: 0
		1:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[6].expandedTo[1].x
					y: contours[0].nodes[6].expandedTo[1].y
					typeOut: 'line'
				1:
					x: Math.max(
						contours[0].nodes[6].expandedTo[1].x - ( contours[0].nodes[4].expandedTo[1].y - contours[0].nodes[6].expandedTo[1].y ),
						contours[0].nodes[2].expandedTo[1].x
					)
					y: Utils.onLine({
						x: Math.max(
							contours[0].nodes[6].expandedTo[1].x - ( contours[0].nodes[4].expandedTo[1].y - contours[0].nodes[6].expandedTo[1].y ),
							contours[0].nodes[2].expandedTo[1].x
						)
						on: [ contours[0].nodes[6].expandedTo[1], contours[0].nodes[7].expandedTo[1] ]
					})
					dirOut: Utils.lineAngle({x: contours[0].nodes[6].expandedTo[1].x, y: contours[0].nodes[6].expandedTo[1].y}, {x: contours[0].nodes[7].expandedTo[1].x, y: contours[0].nodes[7].expandedTo[1].y})
				2:
					x: contours[0].nodes[4].expandedTo[1].x
					y: contours[0].nodes[4].expandedTo[1].y
					dirIn: Math.PI / 2
					typeOut: 'line'
