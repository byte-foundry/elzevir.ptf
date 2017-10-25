exports.glyphs['quoteright'] =
	unicode: '’'
	glyphName: 'quoteright'
	characterName: 'RIGHT SINGLE QUOTATION MARK'
	ot:
		advanceWidth: contours[1].nodes[1].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 60
		spacingRight: 50 * spacing + 50
		thickness: Math.max( 26, Math.min( 110, thickness ))
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	anchors:
		0:
			x: contours[0].nodes[0].x
			y: contours[0].nodes[2].y
			junction: Utils.pointOnCurve( contours[0].nodes[2], contours[0].nodes[2].handleOut, contours[0].nodes[3], contours[0].nodes[3].handleIn, ( 50 / 90 ) * thickness, true, 10 )
	contours:
		0:
			skeleton: false
			closed: true
			nodes:
				0:
					x: spacingLeft + ( 65 / 90 ) * thickness
					y: capHeight + overshoot - ( ( 130 / 90 ) * thickness )
					dirOut: - 180 + 'deg'
					typeIn: 'smooth'
				1:
					x: contours[0].nodes[0].x - ( ( 130 / 90 ) * thickness ) / 2
					y: contours[0].nodes[0].y + ( ( 130 / 90 ) * thickness ) / 2
					dirOut: 90 + 'deg'
					typeIn: 'smooth'
				2:
					x: contours[0].nodes[0].x
					y: contours[0].nodes[0].y + ( ( 130 / 90 ) * thickness )
					dirOut: 0 + 'deg'
					typeIn: 'smooth'
				3:
					x: contours[0].nodes[0].x + ( ( 130 / 90 ) * thickness ) / 2
					y: contours[0].nodes[1].y
					dirOut: - 90 + 'deg'
					typeIn: 'smooth'
		1:
			skeleton: true
			closed: false
			nodes:
				2:
					x: contours[0].nodes[1].x + ( contours[0].nodes[0].x - contours[0].nodes[1].x ) * 0.35
					y: contours[0].nodes[0].y - 30 - ( 110 / 90 ) * thickness
					dirIn: Math.min(
						26,
						50 - ( 24 / 90 ) * thickness
					) + 'deg'
					expand:
						width: ( 15 / 90 ) * thickness
						angle: contours[1].nodes[2].dirIn + Math.PI / 2
						distr: 0.25
				1:
					x: contours[0].nodes[0].x + ( contours[0].nodes[3].x - contours[0].nodes[0].x ) * 0.35
					y: contours[1].nodes[2].expandedTo[1].y + ( contours[1].nodes[0].expandedTo[0].y - contours[1].nodes[2].expandedTo[1].y ) * 0.5
					dirOut: - 90 + 'deg'
					typeIn: 'smooth'
					expand:
						width: ( 70 / 90 ) * thickness
						angle: 180 + 40 + 'deg'
						distr: 1
				0:
					x: anchors[0].junction.x
					y: anchors[0].junction.y
					dirIn: anchors[0].junction.normal
					expand:
						width: ( 70 / 90 ) * thickness
						angle: anchors[0].junction.normal + Math.PI / 2
						distr: 0
