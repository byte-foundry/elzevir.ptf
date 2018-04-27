exports.glyphs['q'] =
	unicode: 'q'
	glyphName: 'q'
	characterName: 'LATIN SMALL LETTER Q'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 55
		spacingRight: 50 * spacing + 45 + serifWidth
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			angle: Math.min(
				180,
				90 + 45 * aperture * apertureBottom
			) * Math.PI / 180
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[0].expandedTo[0].x + (10/90) * thickness
					y: Math.max(
						20 + 10 * width + Math.min(
							35 + 100 * aperture * apertureBottom - 100,
							Math.max(
								35,
								( 35 / 90 ) * thickness + 100 * aperture * apertureBottom - 100
							)
						) - (0),
						Math.max(
							contours[0].nodes[1].expandedTo[1].y + 20,
							65
						)
					)
					dirOut: Math.max(
						anchors[0].angle + ( Math.PI / 2 ),
						Math.PI * 2 + Utils.lineAngle({x: contours[0].nodes[0].expandedTo[0].x, y: contours[0].nodes[0].expandedTo[0].y}, {x: contours[0].nodes[1].expandedTo[0].x, y: contours[0].nodes[1].expandedTo[0].y})
					)
					expand:
						width: ( 12 / 90 ) * thickness
						angle: anchors[0].angle
						distr: 0.25
				1:
					x: contours[0].nodes[2].expandedTo[0].x + ( contours[0].nodes[4].expandedTo[0].x - contours[0].nodes[2].expandedTo[0].x ) * 0.5
					y: - overshoot
					dirOut: 0
					typeIn: 'smooth'
					expand:
						width: ( 74 / 90 ) * thickness
						angle:( 48 ) / 180 * Math.PI
						distr: 0
				2:
					x: spacingLeft + (23/90) * thickness
					y: ( 230 / 500 ) * xHeight
					dirOut: Math.PI / 2
					typeIn: 'smooth'
					expand:
						width: ( 100 / 90 ) * thickness
						angle:( 20 ) / 180 * Math.PI
						distr: 0.25
				3:
					x: contours[0].nodes[2].expandedTo[1].x + ( contours[1].nodes[1].expandedTo[0].x - contours[0].nodes[2].expandedTo[1].x ) * 0.53
					y: xHeight + overshoot
					dirOut: 0
					typeIn: 'smooth'
					expand:
						width: ( 25 / 90 ) * thickness
						angle:( - 90 ) / 180 * Math.PI
						distr: 0
				4:
					x: contours[1].nodes[1].expandedTo[0].x
					y: contours[1].nodes[1].expandedTo[0].y
					expand:
						width: ( 15 / 90 ) * thickness
						angle: Math.PI
						distr: 1
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Math.max(
						contours[0].nodes[2].expandedTo[0].x + 200 * width + 240 - (23),
						contours[0].nodes[2].expandedTo[1].x + 0.75 * thickness + 30 + (10)
					)
					y: descender
					typeOut: 'line'
					expand:
						width: thickness
						angle: 0
						distr: 0.75
				1:
					x: contours[1].nodes[0].x
					y: xHeight - ( ( 100 + ( 60 / 90 ) * thickness ) / 500 ) * xHeight - 50 * aperture * apertureTop + 50
					typeOut: 'line'
					typeIn: 'line'
					expand:
						width: thickness
						angle: 0
						distr: 0.75
				2:
					x: contours[1].nodes[1].expandedTo[1].x
					y: xHeight
					typeIn: 'line'
					expand:
						width: ( 10 / 90 ) * thickness
						angle: 0
						distr: 1
		2:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[3].expandedTo[0].x
					y: contours[0].nodes[3].expandedTo[0].y
					tensionOut: 1.35
					dirOut: 0
				1:
					x: Math.max(
						contours[0].nodes[4].expandedTo[1].x + ( contours[1].nodes[2].expandedTo[0].x - contours[0].nodes[4].expandedTo[1].x ) * Math.min( 0.3, ( 0.3 / 90 ) * thickness ),
						contours[0].nodes[4].expandedTo[0].x
					)
					y: contours[1].nodes[2].expandedTo[0].y - ( contours[1].nodes[2].expandedTo[0].y - contours[0].nodes[4].expandedTo[0].y ) * 0.18
					dirOut: 0
					type: 'smooth'
				2:
					x: contours[1].nodes[2].expandedTo[0].x
					y: contours[1].nodes[2].expandedTo[0].y
					dirIn: Utils.lineAngle({x: contours[1].nodes[2].expandedTo[0].x, y: contours[1].nodes[2].expandedTo[0].y}, {x: contours[1].nodes[1].expandedTo[0].x, y: contours[1].nodes[1].expandedTo[0].y})
					typeOut: 'line'
				3:
					x: contours[0].nodes[4].x
					y: contours[0].nodes[4].y
					dirOut: Math.PI / 2
				4:
					x: contours[0].nodes[3].x
					y: contours[0].nodes[3].y
					typeOut: 'line'
	components:
		0:
			base: ['serif-vertical', 'none']
			id: 'bottomleft'
			class: 'leftDescender'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[0]
					noneAnchor: contours[1].nodes[0].expandedTo[0]
					opposite: contours[1].nodes[0].expandedTo[1]
		1:
			base: ['serif-vertical', 'none']
			id: 'bottomright'
			class: 'rightDescender'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[1]
					noneAnchor: contours[1].nodes[0].expandedTo[1]
					opposite: contours[1].nodes[0].expandedTo[0]
					reversed: true
			transformOrigin: contours[1].nodes[0].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ]
			)
