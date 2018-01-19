exports.glyphs['m'] =
	unicode: 'm'
	glyphName: 'm'
	characterName: 'LATIN SMALL LETTER M'
	ot:
		advanceWidth: contours[2].nodes[2].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 120 + ( (22) / 90 ) * thickness + ( serifWidth - 75 )
		spacingRight: 50 * spacing + 115 + ( serifWidth - 75 )
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			junction: Utils.pointOnCurve( contours[1].nodes[1].expandedTo[0], contours[1].nodes[1].expandedTo[0].handleOut, contours[1].nodes[2].expandedTo[0], contours[1].nodes[2].expandedTo[0].handleIn, 70, true, 10 )
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand:
						width: thickness
						angle: 0
						distr: 0.25
				1:
					x: contours[0].nodes[0].x
					y: xHeight - Math.max( 0, serifHeight * serifArc ) - ( Math.sin( (15 * spurHeight) / 180 * Math.PI ) * ( thickness ) )
					typeIn: 'line'
					expand:
						width: thickness
						angle: 0
						distr: 0.25
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x - ( 10 / 90 ) * thickness
					y: Math.min(
						xHeight - 20 - 10 * width - Math.max(
							35 + 100 * aperture * apertureTop - 100,
							Math.min(
								35,
								( 35 / 90 ) * thickness + 100 * aperture * apertureTop - 100
							)
						) - (3),
						Math.min(
							contours[1].nodes[1].y + Math.cos( - 139 * Math.PI / 180 ) * ( 92 / 90 ) * thickness,
							xHeight - 65
						)
					)
					dirOut: Math.max(
						Math.min(
							Math.PI / 2,
							contours[1].nodes[0].expand.angle + ( Math.PI / 2 ) +
							( Math.max(
								28,
								Math.min(
									110,
									( 80 / 90 ) * thickness
								) - 51 * width
							) * Math.PI / 180 ) * aperture * apertureTop
						),
						Utils.lineAngle({x: contours[1].nodes[0].expandedTo[0].x, y: contours[1].nodes[0].expandedTo[0].y}, {x: contours[1].nodes[1].expandedTo[0].x, y: contours[1].nodes[1].expandedTo[0].y})
					)
					expand:
						width: ( 10 / 90 ) * thickness
						angle: Math.min(
							0,
							Math.max(
								- 90,
								- 140 + 50 * aperture * apertureTop
							)
						) * Math.PI / 180
						distr: 0.25
				1:
					x: contours[1].nodes[0].expandedTo[0].x + ( contours[1].nodes[2].expandedTo[0].x - contours[1].nodes[0].expandedTo[0].x ) * 0.63
					y: xHeight + overshoot
					dirOut: 0
					tensionIn: 1.1
					tensionOut: 0.95
					typeIn: 'smooth'
					expand:
						width: ( 89 / 90 ) * thickness
						angle:( - 142 ) / 180 * Math.PI
						distr: 0
				2:
					x: Math.max(
						contours[0].nodes[1].expandedTo[0].x + 200 * width + 205 - (22),
						contours[0].nodes[1].expandedTo[1].x + 0.75 * thickness + 10
					)
					y: xHeight - Math.min(
						165,
						( 165 / 500 ) * xHeight + (2)
					)
					dirIn: Math.PI / 2
					typeOut: 'line'
					expand:
						width: ( 90.6 / 90 ) * thickness
						angle:( 180 + 6 ) / 180 * Math.PI
						distr: 0.25
				3:
					x: contours[1].nodes[2].x
					y: Math.max( 0, serifHeight * serifArc )
					dirIn: Math.PI / 2
					expand:
						width: thickness
						angle: Math.PI
						distr: 0.25
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: anchors[0].junction.x - ( 6 / 90 ) * thickness - (0)
					y: Math.min(
						anchors[0].junction.y,
						contours[1].nodes[0].expandedTo[0].y
					)
					dirOut: Math.max(
						Math.min(
							Math.PI / 2,
							contours[1].nodes[0].expand.angle + ( Math.PI / 2 ) +
							( Math.max(
								28,
								Math.min(
									110,
									( 80 / 90 ) * thickness
								) - 51 * width
							) * Math.PI / 180 ) * aperture * apertureTop
						),
						Utils.lineAngle({x: contours[2].nodes[0].expandedTo[0].x, y: contours[2].nodes[0].expandedTo[0].y}, {x: contours[2].nodes[1].expandedTo[0].x, y: contours[2].nodes[1].expandedTo[0].y})
					)
					expand:
						width: ( 14 / 90 ) * thickness
						angle: Math.min(
							0,
							Math.max(
								- 90,
								- 120 + 50 * aperture * apertureTop
							)
						) * Math.PI / 180
						distr: 0.25
				1:
					x: contours[2].nodes[0].expandedTo[0].x + ( contours[2].nodes[2].expandedTo[0].x - contours[2].nodes[0].expandedTo[0].x ) * 0.63
					y: xHeight + overshoot
					dirOut: 0
					tensionIn: 1.1
					tensionOut: 0.95
					typeIn: 'smooth'
					expand:
						width: ( 92 / 90 ) * thickness
						angle:( - 139 ) / 180 * Math.PI
						distr: 0
				2:
					x: Math.max(
						contours[1].nodes[2].expandedTo[1].x + 200 * width + 205 - (22),
						contours[1].nodes[2].expandedTo[0].x + 0.75 * thickness + 10
					)
					y: xHeight - Math.min(
						165,
						( 165 / 500 ) * xHeight + (2)
					)
					dirIn: Math.PI / 2
					typeOut: 'line'
					expand:
						width: ( 90.6 / 90 ) * thickness
						angle:( 180 + 6 ) / 180 * Math.PI
						distr: 0.25
				3:
					x: contours[2].nodes[2].x
					y: Math.max( 0, serifHeight * serifArc )
					dirIn: Math.PI / 2
					expand:
						width: thickness
						angle: Math.PI
						distr: 0.25
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
			base: ['spur-vertical', 'none']
			id: 'topleft'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[0]
					noneAnchor: contours[0].nodes[1].expandedTo[0]
					opposite: contours[0].nodes[1].expandedTo[1]
					reversed: true
					rotate: -15 * spurHeight
					aperture: true
			transformOrigin: contours[0].nodes[1].expandedTo[0]
			transforms: Array(
				[ 'translateY', - ( Math.sin( (15 * spurHeight) / 180 * Math.PI ) * ( thickness ) )]
				[ 'scaleY', -1 ],
			)
			parameters:
				serifMedian: Math.max( serifMedian * 0.2, serifMedian - 0.8 )
				serifHeight: Math.min( ( 45 / 15 ) * serifHeight, serifHeight + 30 )
				serifRoundness: Math.max( serifRoundness * 1.4, serifRoundness + 0.4 )
		3:
			base: ['serif-vertical', 'none']
			id: 'bottomleft2'
			parentAnchors:
				0:
					base: contours[1].nodes[3].expandedTo[1]
					noneAnchor: contours[1].nodes[3].expandedTo[1]
					opposite: contours[1].nodes[3].expandedTo[0]
		4:
			base: ['serif-vertical', 'none']
			id: 'bottomright2'
			parentAnchors:
				0:
					base: contours[1].nodes[3].expandedTo[0]
					noneAnchor: contours[1].nodes[3].expandedTo[0]
					opposite: contours[1].nodes[3].expandedTo[1]
					reversed: true
			transformOrigin: contours[1].nodes[3].expandedTo[0]
			transforms: Array(
				[ 'scaleX', -1 ]
			)
		5:
			base: ['serif-vertical', 'none']
			id: 'bottomleft3'
			parentAnchors:
				0:
					base: contours[2].nodes[3].expandedTo[1]
					noneAnchor: contours[2].nodes[3].expandedTo[1]
					opposite: contours[2].nodes[3].expandedTo[0]
		6:
			base: ['serif-vertical', 'none']
			id: 'bottomright3'
			parentAnchors:
				0:
					base: contours[2].nodes[3].expandedTo[0]
					noneAnchor: contours[2].nodes[3].expandedTo[0]
					opposite: contours[2].nodes[3].expandedTo[1]
					reversed: true
			transformOrigin: contours[2].nodes[3].expandedTo[0]
			transforms: Array(
				[ 'scaleX', -1 ]
			)
