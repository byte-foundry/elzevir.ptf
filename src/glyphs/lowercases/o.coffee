exports.glyphs['o'] =
	unicode: 'o'
	glyphName: 'o'
	characterName: 'LATIN SMALL LETTER O'
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
		'lowercase'
	]
	anchors:
		0:
			x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[2].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
			y: xHeight + diacriticHeight
			left: contours[0].nodes[0].expandedTo[0].x
			right: contours[0].nodes[2].expandedTo[0].x
	contours:
		0:
			skeleton: true
			closed: true
			nodes:
				0:
					x: spacingLeft + (25/90) * thickness
					y: xHeight * ( 250 / 500 )
					dirOut: Math.PI / 2
					typeIn: 'smooth'
					expand:
						width: thickness * ( 100 / 90 )
						angle: 0
						distr: 0.25
				1:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[2].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
					y: xHeight + overshoot
					dirOut: 0
					typeIn: 'smooth'
					expand:
						width: thickness * ( 20 / 90 )
						angle:( - 90 ) / 180 * Math.PI
						distr: 0
				2:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 200 * width + 300 - (25),
						contours[0].nodes[0].expandedTo[1].x + 0.75 * thickness * ( 100 / 90 ) + 30
					)
					y: contours[0].nodes[0].y
					dirOut:( - 90 ) / 180 * Math.PI
					typeIn: 'smooth'
					expand:
						width: thickness * ( 100 / 90 )
						angle: Math.PI
						distr: 0.25
				3:
					x: contours[0].nodes[1].x
					y: - overshoot
					dirOut: Math.PI
					typeIn: 'smooth'
					expand:
						width: thickness * ( 20 / 90 )
						angle: Math.PI / 2
						distr: 0
