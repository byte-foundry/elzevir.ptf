exports.glyphs['f'] =
	unicode: 'f'
	glyphName: 'f'
	characterName: 'LATIN SMALL LETTER F'
	ot:
		advanceWidth: Math.max(
			contours[0].nodes[0].expandedTo[1].x + spacingRight,
			contours[2].nodes[1].x
		)
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 45
		spacingRight: 50 * spacing + 55 + serifWidth
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[2].nodes[0].x + 0.25 * thickness + 75 * width
					y: Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand:
						width: thickness
						angle: 0
						distr: 0.25
				1:
					x: contours[0].nodes[0].x
					y: contours[2].nodes[0].expandedTo[0].y
					typeIn: 'line'
					typeOut: 'line'
					expand:
						width: thickness
						angle: 0
						distr: 0.25
				2:
					# x: contours[0].nodes[0].expandedTo[0].x + 5
					# y: xHeight + ( 30 / 700 ) * ascenderHeight
					# dirOut: Math.PI / 2
					# expand:
					# 	width: ( 87 / 90 ) * thickness
					# 	angle:( - 13 ) / 180 * Math.PI
					# 	distr: 0
					expandedTo:
						[
							{
								x: contours[0].nodes[0].expandedTo[0].x + ( 5 / 90 ) * thickness
								y: contours[0].nodes[2].expandedTo[1].y + ( 20 / 90 ) * thickness
								dirOut: Math.PI / 2
								typeIn: 'line'
							},
							{
								x: contours[0].nodes[0].expandedTo[1].x
								y: Math.max(
									contours[2].nodes[0].expandedTo[0].y + ( 10 / 220 ) * ascenderHeight,
									contours[0].nodes[3].expandedTo[0].y - 210
								)
								dirOut: Math.PI / 2
								typeIn: 'line'
							}
						]
				3:
					x: contours[0].nodes[2].expandedTo[0].x + ( contours[0].nodes[4].expandedTo[0].x - contours[0].nodes[2].expandedTo[0].x ) * 0.65
					y: ascenderHeight
					dirIn: Math.PI
					typeOut: 'smooth'
					expand:
						width: ( 32 / 90 ) * thickness
						angle:( - 141 ) / 180 * Math.PI
						distr: 0
				4:
					# x: Math.min(
					# 	contours[0].nodes[2].expandedTo[1].x + 150 * width,
					# 	160 + 200 * width
					# ) + (26)
					x: Math.max(
						contours[0].nodes[2].expandedTo[0].x + 125 + 200 * width - (30),
						contours[0].nodes[2].expandedTo[1].x + 0.75 * ( 85 / 90 ) * thickness + 30
					)
					y: ascenderHeight - Math.max(
						( 55 / 700 ) * ascenderHeight,
						( ( 55 / 90 ) * thickness / 700 ) * ascenderHeight
					) - (3)
					dirIn:( 95 ) / 180 * Math.PI
					typeOut: 'line'
					expand:
						width: ( 85 / 90 ) * thickness
						angle: Math.PI
						distr: 0.25
		1:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[4].expandedTo[1].x
					y: contours[0].nodes[4].expandedTo[1].y
					dirOut:( - 85 ) / 180 * Math.PI
					typeIn: 'smooth'
				1:
					x: contours[0].nodes[4].expandedTo[1].x + ( contours[0].nodes[4].expandedTo[0].x - contours[0].nodes[4].expandedTo[1].x ) * ( 45 / 85 )
					y: contours[0].nodes[4].expandedTo[0].y - ( contours[0].nodes[4].expandedTo[0].x - contours[1].nodes[1].x )
					dirOut: 0
					typeIn: 'smooth'
				2:
					x: contours[0].nodes[4].expandedTo[0].x
					y: contours[0].nodes[4].expandedTo[0].y
					dirIn:( - 90 ) / 180 * Math.PI
					typeOut: 'line'
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: Math.min(
						xHeight,
						contours[1].nodes[1].y - 20
					)
					typeOut: 'line'
					expand:
						width: ( 35 / 90 ) * thickness
						angle:( - 90 ) / 180 * Math.PI
						distr: 0
				1:
					x: contours[0].nodes[0].expandedTo[1].x + 135 * width
					y: contours[2].nodes[0].y
					typeIn: 'line'
					expand:
						width: ( 35 / 90 ) * thickness
						angle:( - 90 ) / 180 * Math.PI
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
