exports.glyphs['a_alt'] =
	unicode: 'a'
	glyphName: 'a'
	characterName: 'LATIN SMALL LETTER A'
	altImg: 'alt-elzevir-a-1.svg'
	ot:
		advanceWidth: contours[1].nodes[3].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 55 + ( (23) / 90 ) * thickness
		spacingRight: 50 * spacing + 110
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: contours[0].nodes[4].expandedTo[0].x + ( contours[0].nodes[2].expandedTo[0].x - contours[0].nodes[4].expandedTo[0].x ) * 0.5
			y: xHeight + diacriticHeight
		1:
			angleTop: Math.max(
				0,
				65 - 45 * aperture * apertureTop
			) * Math.PI / 180
			angleBottom: Math.min(
				180,
				90 + 60 * aperture * apertureBottom
			) * Math.PI / 180
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[0].expandedTo[0].x + ( 5 / 90 ) * thickness
					y: Math.max(
						0 + 10 * width + Math.min(
							65 + 55 + 100 * aperture * apertureBottom - 100,
							Math.max(
								65 + 55,
								65 + ( 55 / 90 ) * thickness + 100 * aperture * apertureBottom - 100
							)
						) - (0),
						Math.max(
							contours[0].nodes[1].expandedTo[1].y + 20,
							65 + 55
						)
					)
					typeIn: 'smooth'
					dirOut: Math.max(
						anchors[1].angleBottom + ( Math.PI / 2 ),
						Math.PI * 2 + Utils.lineAngle({x: contours[0].nodes[0].expandedTo[0].x, y: contours[0].nodes[0].expandedTo[0].y}, {x: contours[0].nodes[1].expandedTo[0].x, y: contours[0].nodes[1].expandedTo[0].y})
					)
					expand:
						width: ( 10 / 90 ) * thickness
						angle: anchors[1].angleBottom
						distr: 1
				1:
					x: contours[0].nodes[2].expandedTo[0].x + ( contours[0].nodes[4].expandedTo[0].x - contours[0].nodes[2].expandedTo[0].x ) * 0.5
					y: - overshoot
					dirIn: 0 + 'deg'
					typeOut: 'smooth'
					expand:
						width: ( 74 / 90 ) * thickness
						angle: 48 + 'deg'
						distr: 0
				2:
					x: spacingLeft
					y: ( 230 / 500 ) * xHeight
					dirIn: - 90 + 'deg'
					typeOut: 'smooth'
					expand:
						width: ( 100 / 90 ) * thickness
						angle: 20 + 'deg'
						distr: 0.25
				3:
					x: contours[0].nodes[2].expandedTo[1].x + ( contours[0].nodes[4].expandedTo[1].x - contours[0].nodes[2].expandedTo[1].x ) * 0.5
					y: xHeight + overshoot
					dirIn: 180 + 'deg'
					typeOut: 'smooth'
					expand:
						width: ( 25 / 90 ) * thickness
						angle: - 100 + 'deg'
						distr: 0
				4:
					x: contours[1].nodes[0].expandedTo[0].x
					y: Math.min(
						xHeight - 35 - 10 * width - Math.max(
							55 + 100 * aperture * apertureTop - 100,
							Math.min(
								55,
								( 55 / 90 ) * thickness + 100 * aperture * apertureTop - 100
							)
						),
						Math.min(
							(xHeight - Math.sin( 80 * Math.PI / 180 ) * ( 25 / 90 ) * thickness) - 15,
							xHeight - 20
						)
					)
					tensionIn: 0.8 + 0.1 * aperture * apertureTop
					dirIn: Math.max(
						anchors[1].angleTop + Math.PI / 2 + Math.PI,
						Utils.lineAngle({x: contours[0].nodes[3].expandedTo[0].x, y: contours[0].nodes[3].expandedTo[0].y}, {x: contours[0].nodes[4].expandedTo[0].x, y: contours[0].nodes[4].expandedTo[0].y})
					)
					expand:
						width: ( 25 / 90 ) * thickness
						angle: anchors[1].angleTop + Math.PI
						distr: 1
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[2].expandedTo[0].x
					y: - overshoot
					typeOut: 'line'
					expand:
						width: ( 15 / 90 ) * thickness
						angle: 0 + 'deg'
						distr: 0
				1:
					x: contours[1].nodes[0].expandedTo[0].x
					y: Math.max( 0, serifHeight * serifArc )
					y: Math.max( 0, serifHeight * serifArc ) + ( Math.sin( (15 * spurHeight) / 180 * Math.PI ) * ( thickness ) )
					typeOut: 'line'
					typeIn: 'line'
					expand:
						width: thickness # / Math.cos( (10 * serifRotate) / 180 * Math.PI )
						angle: 0 + 'deg' # (10 * serifRotate) / 180 * Math.PI
						distr: 0
				2:
					x: Math.max(
						contours[0].nodes[2].expandedTo[0].x + 200 * width + 240 - (44),
						contours[0].nodes[2].expandedTo[1].x + 0.5 * thickness + 10
					)
					y: contours[0].nodes[4].y
					typeOut: 'line'
					typeIn: 'line'
					expand:
						width: thickness
						angle: 0 + 'deg'
						distr: 0.75
				3:
					x: contours[1].nodes[2].expandedTo[1].x
					y: xHeight
					typeIn: 'line'
					expand:
						width: ( 25 / 90 ) * thickness
						angle: 0 + 'deg'
						distr: 1
	components:
		0:
			base: ['spur-vertical', 'none']
			id: 'bottomright'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[1]
					noneAnchor: contours[1].nodes[1].expandedTo[1]
					opposite: contours[1].nodes[1].expandedTo[0]
					reversed: true
					rotate: -15 * spurHeight
					scaleX: -1
			transformOrigin: contours[1].nodes[1].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'translateY', - ( Math.sin( (15 * spurHeight) / 180 * Math.PI ) * ( thickness ) ) ]
			)
			parameters:
				serifMedian: Math.max( serifMedian * 0.2, serifMedian - 0.8 )
				serifHeight: Math.min( ( 45 / 15 ) * serifHeight, serifHeight + 30 )
				serifRoundness: Math.max( serifRoundness * 1.4, serifRoundness + 0.4 )
