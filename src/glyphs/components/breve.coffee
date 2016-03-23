exports.glyphs['breve'] =
	glyphName: 'breve'
	characterName: 'BREVE ACCENT'
	anchors:
		0:
			x: parentAnchors[0].x
			y: parentAnchors[0].y + 70
	tags: [
		'component',
		'diacritic'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: anchors[0].x - 102 * width - ( 20 / 90 ) * thickness
					y: anchors[0].y + 107
					dirOut: ( - 90 + ( 18 / 90 ) * thickness ) * Math.PI / 180
					expand: Object({
						width: thickness * ( 16 / 90 )
						angle: contours[0].nodes[0].dirOut + Math.PI / 2
						distr: 0.25
					})
				1:
					x: anchors[0].x
					y: anchors[0].y + 33 - overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 60 / 90 )
						angle: 90 + 'deg'
						distr: 0.75
					})
				2:
					x: anchors[0].x + ( anchors[0].x - contours[0].nodes[0].expandedTo[1].x )
					y: contours[0].nodes[0].expandedTo[1].y
					dirIn: ( - 90 - ( 18 / 90 ) * thickness ) * Math.PI / 180
					expand: Object({
						width: thickness * ( 16 / 90 )
						angle: contours[0].nodes[2].dirIn - Math.PI / 2
						distr: 1
					})
