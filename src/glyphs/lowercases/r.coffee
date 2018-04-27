exports.glyphs['r'] =
	unicode: 'r'
	glyphName: 'r'
	characterName: 'LATIN SMALL LETTER R'
	ot:
		advanceWidth: contours[1].nodes[2].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 45 + serifWidth
		spacingRight: 50 * spacing + 10
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: contours[0].nodes[0].expandedTo[0].x + ( contours[1].nodes[1].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
			y: xHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + (22/90) * thickness
					y: Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand:
						width: thickness
						angle: 0
						distr: 0.25
				1:
					x: contours[0].nodes[0].x
					y: xHeight - Math.max( 0, serifHeight * serifArc ) - ( Math.sin( (15 * spurHeight) / 180 * Math.PI ) * ( thickness ) )
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
							53 + 100 * aperture * apertureTop - 100,
							Math.min(
								53,
								( 53 / 90 ) * thickness + 100 * aperture * apertureTop - 100
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
								52,
								Math.min(
									110,
									( 80 / 90 ) * thickness
								) - 38 * width
							) * Math.PI / 180 ) * aperture * apertureTop
						),
						Utils.lineAngle({x: contours[1].nodes[0].expandedTo[0].x, y: contours[1].nodes[0].expandedTo[0].y}, {x: contours[1].nodes[1].expandedTo[0].x, y: contours[1].nodes[1].expandedTo[0].y})
					)
					expand:
						width: ( 12 / 90 ) * thickness
						angle: ( - 180 + Math.max(
							90,
							Math.min(
								0,
								150 * aperture * apertureTop
							)
						) ) * Math.PI / 180
						distr: 0.25
				1:
					x: contours[0].nodes[0].expandedTo[1].x + ( contours[1].nodes[2].expandedTo[0].x - contours[0].nodes[0].expandedTo[1].x ) * 0.63
					y: xHeight + overshoot
					dirIn: Math.PI
					tensionOut: 1.2
					typeOut: 'smooth'
					expand:
						width: ( 98 / 90 ) * thickness
						angle:( - 137 ) / 180 * Math.PI
						distr: 0
				2:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 200 * width + 100 - (33),
						contours[0].nodes[0].expandedTo[1].x + 150
					)
					y: xHeight - Math.max( 30, ( 53 / 90 ) * thickness ) - (33/90) * thickness
					dirIn: Math.PI / 2
					expand:
						width: ( 61 / 90 ) * thickness
						angle:( - 135 ) / 180 * Math.PI
						distr: 0.75
		2:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[1].nodes[2].expandedTo[0].x
					y: contours[1].nodes[2].expandedTo[0].y
					typeIn: 'smooth'
					dirOut: Math.PI / 2
					# tensionOut: Math.min( 1, serifBall )
					# tensionIn: Math.min( 1, serifBall )
				1:
					x: contours[1].nodes[2].expandedTo[1].x
					y: Math.min(
						contours[1].nodes[2].expandedTo[1].y,
						contours[1].nodes[1].expandedTo[1].y - 15
					)
					typeIn: 'smooth'
					dirOut: 0
					# tensionOut: Math.min( 1, serifBall )
					# tensionIn: Math.min( 1, serifBall )
				2:
					x: contours[1].nodes[1].expandedTo[1].x
					y: contours[1].nodes[1].expandedTo[1].y
					dirIn: 0
					typeOut: 'line'
					# tensionOut: Math.min( 1, serifBall )
					# tensionIn: Math.min( 1, serifBall )
				3:
					x: contours[1].nodes[1].expandedTo[0].x
					y: contours[1].nodes[1].expandedTo[0].y
					typeIn: 'line'
					typeOut: 'line'
					dirOut: 0
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
			base: ['spur-vertical', 'none']
			id: 'topleft'
			class: 'upperLeftSpur'
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
