# TODO: apply related Dir and Angle in every glyphs ++++  * Math.sqrt( width )
exports.glyphs['three'] =
	unicode: '3'
	glyphName: 'three'
	characterName: 'DIGIT THREE'
	ot:
		advanceWidth: contours[0].nodes[1].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 10 + (0)
		spacingRight: 50 * spacing + 50 
	tags: [
		'all',
		'latin',
		'figures'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 27 + (0)
					y: ( 215 / 230 ) * descender
					dirOut: Math.max( - 10, 6 - 3 * width ) + 'deg'
					expand: Object({
						width: ( 15 / 90 ) * thickness * Math.sqrt( width )
						angle: contours[0].nodes[0].dirOut + Math.PI / 2
						distr: 0
					})
				1:
					x: 215 + 200 * width - (23)
					y: contours[0].nodes[0].y + ( contours[0].nodes[2].y - contours[0].nodes[0].y ) * 0.60 # 45
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 95 / 90 ) * thickness
						angle: - 177 + 'deg'
						distr: 0.25
					})
				2:
					x: contours[0].nodes[1].x - 198 # + 50 - 50 * width
					y: contours[0].nodes[0].y + ( contours[1].nodes[2].y - contours[0].nodes[0].y ) * 0.59 # 215
					dirOut: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 52 / 90 ) * thickness
						angle: - 113 + 'deg'
						distr: 0
					})
				3:
					x: contours[0].nodes[2].x - 90 # + 50 - 50 * width
					y: contours[0].nodes[2].expandedTo[1].y - 12
					dirIn: 20 + 'deg'
					expand: Object({
						width: ( 15 / 90 ) * thickness
						angle: 180 + 90 + 'deg'
						distr: 1
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[3].expandedTo[0].x
					y: contours[0].nodes[3].expandedTo[0].y
					dirOut: 17 + 'deg'
					expand: Object({
						width: ( 15 / 90 ) * thickness
						angle: 180 - 90 + 'deg'
						distr: 1
					})
				1:
					x: contours[0].nodes[1].expandedTo[0].x - 35 - (23)
					y: 375 - (7)
					y: contours[1].nodes[0].expandedTo[0].y + ( contours[1].nodes[2].y - contours[1].nodes[0].expandedTo[0].y ) * 0.60 # ( Math.cos( 55 * Math.PI / 180 ) * ( 80 / 90 ) * thickness ))
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 95 / 90 ) * thickness
						angle: - 162 + 'deg'
						distr: 0.25
					})
				2:
					x: 230
					x: contours[1].nodes[3].expandedTo[0].x + ( contours[1].nodes[1].expandedTo[0].x - contours[1].nodes[3].expandedTo[0].x ) * ( 0.65 - 0.05 * Math.sqrt( width ))
					y: xHeight + overshoot
					dirOut: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( (90 - 10 * Math.sqrt( width )) / 90 ) * thickness
						angle: - 125 + 'deg'
						distr: 0
					})
				3:
					x: 10 + (2)
					y: Math.min(
						xHeight - 125,
						( contours[1].nodes[2].y - ( 80 / 90 ) * thickness * Math.cos( 55 * Math.PI / 180 ) ) - 80
					)
					dirIn: Math.max( 25, 81 - 25 * width ) * Math.PI / 180 # + 'deg'
					expand: Object({
						width: ( 13 / 90 ) * thickness
						angle: contours[1].nodes[3].dirIn - Math.PI / 2 # 42 + 'deg'
						distr: 0.25
					})
