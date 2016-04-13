exports.glyphs['_quoteright'] =
	anchors:
		0:
			x: parentAnchors[0].x
			y: parentAnchors[0].y
			junction: Utils.pointOnCurve( contours[0].nodes[2], contours[0].nodes[3], ( 50 / 90 ) * thickness, true, 10 )
	parameters:
		spacingLeft: 60 * spacing + (0)
		spacingRight: 50 * spacing
		thickness: Math.max( 26, Math.min( 110, thickness ))
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	contours:
		0:
			skeleton: false
			closed: true
			nodes:
				0:
					x: spacingLeft + ( 65 / 90 ) * thickness
					y: - overshoot
					dirOut: - 180 + 'deg'
				1:
					x: contours[0].nodes[0].x - ( ( 130 / 90 ) * thickness ) / 2
					y: contours[0].nodes[0].y + ( ( 130 / 90 ) * thickness ) / 2
					dirOut: 90 + 'deg'
					type: 'smooth'
				2:
					x: contours[0].nodes[0].x
					y: contours[0].nodes[0].y + ( ( 130 / 90 ) * thickness )
					dirOut: 0 + 'deg'
					type: 'smooth'
				3:
					x: contours[0].nodes[0].x + ( ( 130 / 90 ) * thickness ) / 2
					y: contours[0].nodes[1].y
					dirOut: - 90 + 'deg'
					type: 'smooth'
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
					expand: Object({
						width: ( 15 / 90 ) * thickness
						angle: contours[1].nodes[2].dirIn + Math.PI / 2
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x + ( contours[0].nodes[3].x - contours[0].nodes[0].x ) * 0.35
					y: contours[0].nodes[0].y - 20
					y: contours[1].nodes[2].expandedTo[1].y + ( contours[1].nodes[0].expandedTo[0].y - contours[1].nodes[2].expandedTo[1].y ) * 0.5
					dirOut: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 70 / 90 ) * thickness
						angle: 180 + 40 + 'deg'
						distr: 1
					})
				0:
					x: anchors[0].junction.x
					y: anchors[0].junction.y
					dirOut: anchors[0].junction.normal
					expand: Object({
						width: ( 70 / 90 ) * thickness
						angle: anchors[0].junction.normal + Math.PI / 2
						distr: 0
					})
