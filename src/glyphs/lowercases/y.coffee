exports.glyphs['y'] =
	unicode: 'y'
	glyphName: 'y'
	characterName: 'LATIN SMALL LETTER Y'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 10 + serifWidth
		spacingRight: 50 * spacing + 13 + serifWidth
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: contours[0].nodes[0].expandedTo[0].x + ( contours[1].nodes[0].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
			y: xHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + (25/90) * thickness
					y: xHeight - Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand:
						width: ( 103 / 90 ) * thickness
						angle: 0
						distr: 0.25
				1:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[1].nodes[0].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5 - (5)
					y: - overshoot * 2
					typeIn: 'line'
					expand:
						width: ( ( ( ( 90 / 500 ) * xHeight ) + ( Math.max( -10, (60 - 30 * width) ) )) / 90 ) * thickness
						angle: Utils.lineAngle({x: contours[1].nodes[1].expandedTo[1].x, y: contours[1].nodes[1].expandedTo[1].y}, {x: contours[1].nodes[0].expandedTo[1].x, y: contours[1].nodes[0].expandedTo[1].y})
						distr: 0
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x + 137 + 200 * width - (8)
					y: xHeight - Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand:
						width: ( 30 / 90 ) * thickness
						angle: 0
						distr: 0.75
				1:
					x: contours[0].nodes[1].x
					y: contours[0].nodes[1].y
					typeIn: 'line'
					expand:
						width: ( 15 / 90 ) * thickness
						angle: 0
						distr: 0
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[0].x - 35 + (22)
					y: descender + 5 + ( 42 / 90 ) * thickness + (18)
					expand:
						width: ( 59 / 90 ) * thickness
						angle:( 40 ) / 180 * Math.PI
						distr: 0.5
				1:
					x: contours[2].nodes[0].expandedTo[0].x + ( contours[2].nodes[2].expandedTo[1].x - contours[2].nodes[0].expandedTo[0].x ) * ( 77 / 240 )
					y: descender
					dirOut: 0
					typeIn: 'smooth'
					tensionOut: 1.2
					expand:
						width: ( 81 / 90 ) * thickness
						angle:( 47 ) / 180 * Math.PI
						distr: 0
				2:
					x: Utils.onLine({
						y: - 72
						on: [ contours[1].nodes[0].expandedTo[1], contours[1].nodes[1].expandedTo[1] ]
					})
					y: - 72
					dirIn: Utils.lineAngle({x: contours[1].nodes[0].expandedTo[1].x, y: contours[1].nodes[0].expandedTo[1].y}, {x: contours[1].nodes[1].expandedTo[1].x, y: contours[1].nodes[1].expandedTo[1].y})
					tensionIn: 1.2
					typeOut: 'line'
					expand:
						width: ( 25 / 90 ) * thickness
						angle:( 161 ) / 180 * Math.PI
						distr: 0
				3:
					x: contours[1].nodes[1].expandedTo[1].x
					y: contours[1].nodes[1].expandedTo[1].y
					typeIn: 'line'
					expand:
						width: ( 29 / 90 ) * thickness
						angle:( 121 ) / 180 * Math.PI
						distr: 0
		3:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[2].nodes[1].expandedTo[1].x
					y: contours[2].nodes[1].expandedTo[1].y
					typeOut: 'line'
					typeIn: 'line'
				1:
					x: contours[2].nodes[0].expandedTo[1].x
					y: contours[2].nodes[0].expandedTo[1].y
					dirIn: 0
					typeOut: 'smooth'
				2:
					x: contours[2].nodes[0].expandedTo[0].x
					y: contours[2].nodes[0].expandedTo[0].y
					dirIn: Math.PI / 2
					typeOut: 'smooth'
				3:
					x: contours[2].nodes[1].expandedTo[0].x
					y: contours[2].nodes[1].expandedTo[0].y
					dirIn: Math.PI
					typeOut: 'line'
	components:
		0:
			base: ['serif-oblique-obtuse', 'none']
			id: 'topleft'
			class: 'obtuseLeftSerif'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0]
					noneAnchor: contours[0].nodes[0].expandedTo[0]
					opposite: contours[0].nodes[0].expandedTo[1]
					obliqueEndPoint: contours[0].nodes[1].expandedTo[0]
					scaleX: -1
					reversed: true
			transformOrigin: contours[0].nodes[0].expandedTo[0]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
		1:
			base: ['serif-oblique-acute', 'none']
			id: 'topright'
			class: 'acuteLeftSerif'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1]
					noneAnchor: contours[0].nodes[0].expandedTo[1]
					opposite: contours[0].nodes[0].expandedTo[0]
					obliqueEndPoint: contours[0].nodes[1].expandedTo[1]
			transformOrigin: contours[0].nodes[0].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
		2:
			base: ['serif-oblique-acute', 'none']
			id: 'topleft2'
			class: 'acuteRightSerif'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[0]
					noneAnchor: contours[1].nodes[0].expandedTo[0]
					opposite: contours[1].nodes[0].expandedTo[1]
					obliqueEndPoint: contours[1].nodes[1].expandedTo[0]
					scaleX: -1
					reversed: true
			transformOrigin: contours[1].nodes[0].expandedTo[0]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
		3:
			base: ['serif-oblique-obtuse', 'none']
			id: 'topright2'
			class: 'obtuseRightSerif'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[1]
					noneAnchor: contours[1].nodes[0].expandedTo[1]
					opposite: contours[1].nodes[0].expandedTo[0]
					obliqueEndPoint: contours[1].nodes[1].expandedTo[1]
					# scaleX: -1
			transformOrigin: contours[1].nodes[0].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
