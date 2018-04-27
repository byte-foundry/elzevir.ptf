exports.glyphs['u'] =
	unicode: 'u'
	glyphName: 'u'
	characterName: 'LATIN SMALL LETTER U'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 25 - serifWidth
		spacingRight: 50 * spacing + 45 + serifWidth
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: contours[0].nodes[0].expandedTo[0].x + ( contours[1].nodes[0].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
			y: xHeight + diacriticHeight
		1:
			angleBottom: Math.min(
				180,
				90 + 45 * aperture * apertureBottom
			) * Math.PI / 180
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + (22/90) * thickness
					y: xHeight - Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand:
						width: thickness
						angle: 0
						distr: 0.25
				1:
					x: contours[0].nodes[0].x
					y: 155 + (2)
					dirOut:( - 90 ) / 180 * Math.PI
					typeIn: 'line'
					expand:
						width: ( 90 / 90 ) * thickness
						angle:( 6 ) / 180 * Math.PI
						distr: 0.25
				2:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[3].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) * 0.45
					y: - overshoot
					dirOut: 0
					tensionIn: 1.1
					tensionOut: 1.2
					typeIn: 'smooth'
					expand:
						width: ( 92 / 90 ) * thickness
						angle:( 40 ) / 180 * Math.PI
						distr: 0
				3:
					x: contours[1].nodes[0].expandedTo[0].x + ( 10 / 90 ) * thickness
					y: Math.max(
						20 + 10 * width + Math.min(
							35 + 100 * aperture * apertureBottom - 100,
							Math.max(
								35,
								( 35 / 90 ) * thickness + 100 * aperture * apertureBottom - 100
							)
						) - (0),
						Math.max(
							contours[0].nodes[2].y + ((Math.sin( 40 / 180 * Math.PI )) * (( 92 / 90 ) * thickness)) + 20,
							65
						)
					)
					dirIn: Math.max(
						anchors[1].angleBottom - ( Math.PI / 2 ),
						Utils.lineAngle({x: contours[0].nodes[2].expandedTo[0].x, y: contours[0].nodes[2].expandedTo[0].y}, {x: contours[0].nodes[3].expandedTo[0].x, y: contours[0].nodes[3].expandedTo[0].y})
					)
					typeOut: 'smooth'
					expand:
						width: ( 10 / 90 ) * thickness
						angle: anchors[1].angleBottom
						distr: 0.25
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 200 * width + 195 - (22),
						contours[0].nodes[0].expandedTo[1].x + 0.75 * thickness + 30
					)
					y: xHeight - Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand:
						width: thickness
						angle: 0
						distr: 0.75
				1:
					x: contours[1].nodes[0].x
					y: Math.max( 0, serifHeight * serifArc ) + ( Math.sin( (15 * spurHeight) / 180 * Math.PI ) * ( thickness ) ) + Math.max( 0, serifHeight * serifArc )
					dirIn:( - 90 ) / 180 * Math.PI
					expand:
						width: ( 90 / 90 ) * thickness
						angle: 0
						distr: 0.75
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
					base: contours[1].nodes[0].expandedTo[0]
					noneAnchor: contours[1].nodes[0].expandedTo[0]
					opposite: contours[1].nodes[0].expandedTo[1]
					reversed: true
			transformOrigin: contours[1].nodes[0]
			transforms: Array(
				[ 'scaleY', -1 ]
			)
		2:
			#TODO: serifAperture should change the stem baseline
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
					aperture: true
			transformOrigin: contours[1].nodes[1].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'translateY', - ( Math.sin( (15 * spurHeight ) / 180 * Math.PI ) * ( thickness ) ) ]
			)
			parameters:
				serifMedian: Math.max( serifMedian * 0.2, serifMedian - 0.8 )
				serifHeight: Math.min( ( 45 / 15 ) * serifHeight, serifHeight + 30 )
				serifRoundness: Math.max( serifRoundness * 1.4, serifRoundness + 0.4 )
				serifAperture: Math.min( ( 2 ) * serifAperture, serifAperture + 1 )
