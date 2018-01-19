exports.glyphs['guillemotright'] =
	unicode: '»'
	glyphName: 'guillemotright'
	characterName: 'RIGHT-POINTING DOUBLE ANGLE QUOTATION MARK'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI],
		# ['scaleX', -1]
	)
	parameters:
		spacingLeft: 50 * spacing + 20
		spacingRight: 50 * spacing + 45
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Math.max(
						40 + 200 * width,
						contours[0].nodes[1].x + ((( 80 / 90 ) * thickness) * (Math.cos( Math.PI * 22 / 180)) ) + 40
					) + (2)
					y: 35 + (2)
					typeOut: 'line'
					expand:
						width: ( 14 / 90 ) * thickness * contrast
						angle:( 45 ) / 180 * Math.PI
						distr: 0.25
				1:
					x: spacingLeft
					y: contours[0].nodes[0].expandedTo[0].y + ( contours[0].nodes[5].expandedTo[0].y - contours[0].nodes[0].expandedTo[0].y ) * 0.5 - ( 5 / 90 ) * thickness
					typeOut: 'line'
					expand:
						width: ( 80 / 90 ) * thickness
						angle:( 22 ) / 180 * Math.PI
						distr: 0
				2:
					x: contours[0].nodes[1].expandedTo[0].x
					y: contours[0].nodes[1].expandedTo[0].y
					typeOut: 'line'
					expand:
						width: ( 10 / 90 ) * thickness * contrast
						angle: Math.PI / 2
						distr: 0
				3:
					x: contours[0].nodes[2].expandedTo[1].x
					y: contours[0].nodes[2].expandedTo[1].y
					typeOut: 'line'
					expand:
						width: ( 10 / 90 ) * thickness * contrast
						angle:( - 90 ) / 180 * Math.PI
						distr: 0
				4:
					x: contours[0].nodes[3].expandedTo[0].x
					y: contours[0].nodes[3].expandedTo[0].y
					typeOut: 'line'
					expand:
						width: ( 80 / 90 ) * thickness
						angle:( - 22 ) / 180 * Math.PI
						distr: 0
				5:
					x: contours[0].nodes[0].expandedTo[0].x
					y: xHeight - 35 - (2)
					expand:
						width: ( 14 / 90 ) * thickness * contrast
						angle:( - 45 ) / 180 * Math.PI
						distr: 0.25
			transformOrigin: Object({
				x: (contours[1].nodes[0].expandedTo[1].x + spacingRight) * 0.5,
				y: contours[0].nodes[2].expandedTo[0].y + ( contours[0].nodes[3].expandedTo[0].y - contours[0].nodes[2].expandedTo[0].y ) * 0.5
			})
			transforms: Array(
				[ 'scaleX', -1 ]
			)
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Math.max(
						contours[1].nodes[1].x + 20 + 200 * width,
						contours[1].nodes[1].x + ((( 80 / 90 ) * thickness) * (Math.cos( Math.PI * 22 / 180)) ) + 40
					) + (2)
					y: 35 + (2)
					typeOut: 'line'
					expand:
						width: ( 14 / 90 ) * thickness * contrast
						angle:( 45 ) / 180 * Math.PI
						distr: 0.25
				1:
					x: contours[0].nodes[0].expandedTo[0].x - 20 * Math.exp( width )
					y: contours[1].nodes[0].expandedTo[0].y + ( contours[1].nodes[5].expandedTo[0].y - contours[1].nodes[0].expandedTo[0].y ) * 0.5 - ( 5 / 90 ) * thickness
					typeOut: 'line'
					expand:
						width: ( 80 / 90 ) * thickness
						angle:( 22 ) / 180 * Math.PI
						distr: 0
				2:
					x: contours[1].nodes[1].expandedTo[0].x
					y: contours[1].nodes[1].expandedTo[0].y
					typeOut: 'line'
					expand:
						width: ( 10 / 90 ) * thickness * contrast
						angle: Math.PI / 2
						distr: 0
				3:
					x: contours[1].nodes[2].expandedTo[1].x
					y: contours[1].nodes[2].expandedTo[1].y
					typeOut: 'line'
					expand:
						width: ( 10 / 90 ) * thickness * contrast
						angle:( - 90 ) / 180 * Math.PI
						distr: 0
				4:
					x: contours[1].nodes[3].expandedTo[0].x
					y: contours[1].nodes[3].expandedTo[0].y
					typeOut: 'line'
					expand:
						width: ( 80 / 90 ) * thickness
						angle:( - 22 ) / 180 * Math.PI
						distr: 0
				5:
					x: contours[1].nodes[0].expandedTo[0].x
					y: xHeight - 35 - (2)
					expand:
						width: ( 14 / 90 ) * thickness * contrast
						angle:( - 45 ) / 180 * Math.PI
						distr: 0.25
			transformOrigin: Object({
				x: (contours[1].nodes[0].expandedTo[1].x + spacingRight) * 0.5,
				y: contours[0].nodes[2].expandedTo[0].y + ( contours[0].nodes[3].expandedTo[0].y - contours[0].nodes[2].expandedTo[0].y ) * 0.5
			})
			transforms: Array(
				[ 'scaleX', -1 ]
			)
