exports.glyphs['O_cap'] =
	unicode: 'O'
	glyphName: 'O'
	characterName: 'LATIN CAPITAL LETTER O'
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
	anchors:
		0:
			x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[2].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
			y: capHeight + diacriticHeight
			left: contours[0].nodes[0].expandedTo[0].x
			right: contours[0].nodes[2].expandedTo[0].x
	contours:
		0:
			skeleton: true
			closed: true
			nodes:
				0:
					x: spacingLeft + (27) # + ( (25) / 90 ) * thickness
					y: capHeight * ( 330 / 660 )
					dirOut: Math.PI / 2
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
					tensionOut: 1.1
					tensionIn: 1.1
					expand:
						width: thickness * ( 25 / 90 ) * opticThickness
						angle: Math.PI / 2
						distr: 0
