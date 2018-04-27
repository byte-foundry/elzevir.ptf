exports.glyphs['Q_cap'] =
	unicode: 'Q'
	glyphName: 'Q'
	characterName: 'LATIN CAPITAL LETTER Q'
	ot:
		advanceWidth: contours[0].nodes[2].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 50
		spacingRight: 50 * spacing + 50
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	contours:
		0:
			skeleton: true
			closed: true
			nodes:
				0:
					x: spacingLeft + (27/90) * thickness
					y: capHeight * ( 330 / 660 )
					dirOut: Math.PI / 2
					typeIn: 'smooth'
					tensionIn: 0.9
					tensionOut: 0.9
					expand:
						width: thickness * ( 110 / 90 ) * opticThickness
						angle: 0
						distr: 0.25
				1:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[2].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
					y: capHeight + overshoot
					dirOut: 0
					typeIn: 'smooth'
					tensionOut: 1.1
					tensionIn: 1.1
					expand:
						width: thickness * ( 25 / 90 ) * opticThickness
						angle:( - 90 ) / 180 * Math.PI
						distr: 0
				2:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 200 * width + 460 - (28),
						contours[0].nodes[0].expandedTo[1].x + 0.75 * ( 110 / 90 ) * thickness * opticThickness + 10
					)
					y: contours[0].nodes[0].y
					dirOut:( - 90 ) / 180 * Math.PI
					typeIn: 'smooth'
					tensionIn: 0.9
					tensionOut: 0.9
					expand:
						width: thickness * ( 110 / 90 ) * opticThickness
						angle: Math.PI
						distr: 0.25
				3:
					x: contours[0].nodes[1].x
					y: - overshoot
					dirOut: Math.PI
					typeIn: 'smooth'
					tensionOut: 1.1
					tensionIn: 1.1
					expand:
						width: thickness * ( 25 / 90 ) * opticThickness
						angle: Math.PI / 2
						distr: 0
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[2].expandedTo[0].x + 92 * width - (1)
					y: Math.max(
						( ( 135 / 230 ) * descender ) + 85,
						( ( 135 / 230 ) * descender ) + ( Math.sin( 81 / 180 * Math.PI ) * ( 66 / 90 ) * thickness ) + ( 20 / 90 ) * thickness
					)
					dirOut: - Math.max(
						90,
						Math.min(
							130,
							130 - ( 30 / 90 ) * thickness + 30
						)
					) / 180 * Math.PI
					expand:
						width: ( 12 / 90 ) * thickness
						angle: (- Math.max(
							90,
							Math.min(
								130,
								130 - ( 30 / 90 ) * thickness + 30
							)
						) - 90 ) / 180 * Math.PI
						distr: 0.25
				1:
					x: contours[1].nodes[2].expandedTo[0].x + ( contours[1].nodes[0].expandedTo[0].x - contours[1].nodes[2].expandedTo[0].x ) * 0.62
					y: Math.max(
						( ( 135 / 230 ) * descender ) - ( Math.sin( 81 / 180 * Math.PI ) * ( 66 / 90 ) * thickness ),
						( 135 / 230 ) * descender + (16)
					)
					dirOut: 0
					typeIn: 'smooth'
					tensionOut: 1.2
					expand:
						width: ( 66 / 90 ) * thickness
						angle:( 81 ) / 180 * Math.PI
						distr: 0.25
				2:
					x: contours[0].nodes[3].expandedTo[1].x - ( 35 / 90 ) * thickness * curviness
					y: contours[0].nodes[3].expandedTo[0].y + ( contours[0].nodes[3].expandedTo[1].y - contours[0].nodes[3].expandedTo[0].y ) / 2
					dirIn: Math.max( - 90,( ( 45 / 230 ) * descender ) ) / 180 * Math.PI
					expand:
						width: ( 35 / 90 ) * thickness
						angle: 0
						distr: 0.5
