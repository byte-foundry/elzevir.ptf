exports.glyphs['k'] =
	unicode: 'k'
	glyphName: 'k'
	characterName: 'LATIN SMALL LETTER K'
	ot:
		advanceWidth: contours[2].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 45 + serifWidth
		spacingRight: 50 * spacing + 5 + serifWidth
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: 0
			y: xHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + (21/90) * thickness
					y: Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand:
						width: thickness
						angle: 0
						distr: 0.25
				1:
					x: contours[0].nodes[0].x
					y: ascenderHeight - Math.max( 0, serifHeight * serifArc ) - ( Math.sin( (15 * spurHeight) / 180 * Math.PI ) * ( thickness ) )
					typeIn: 'line'
					expand:
						width: thickness
						angle: 0
						distr: 0.25
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: ( 275 / 500 ) * xHeight
					typeOut: 'line'
					expand:
						width: ( 15 / 90 ) * thickness # * Math.sqrt( width )
						angle:( - 52 ) / 180 * Math.PI
						distr: 0
				1:
					x: Math.max(
						contours[0].nodes[1].expandedTo[0].x + 155 + 200 * width - (0),
						# contours[0].nodes[1].expandedTo[1].x + 0.25 * ( 40 / 90 ) * thickness + 30 + 70
						contours[2].nodes[0].x
					)
					y: xHeight - Math.max( 0, serifHeight * serifArc )
					typeIn: 'line'
					expand:
						width: ( 40 / 90 ) * thickness # * Math.sqrt( width )
						angle: 0
						distr: 0.25
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Math.max(
						contours[0].nodes[1].expandedTo[0].x + 215 + 200 * width - (55),
						contours[0].nodes[1].expandedTo[1].x + 0.5 * ( 112 / 90 ) * thickness + 30 + 70
					)
					y: 0 + Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand:
						width: ( 112 / 90 ) * thickness # * Math.sqrt( width )
						angle: 0
						distr: 0.5
				1:
					x: contours[1].nodes[0].expandedTo[0].x
					y: contours[1].nodes[0].expandedTo[0].y
					typeIn: 'line'
					expand:
						width: ( 90 / 90 ) * thickness # * Math.sqrt( width )
						angle: Utils.lineAngle({x: contours[1].nodes[0].expandedTo[1].x, y: contours[1].nodes[0].expandedTo[1].y}, {x: contours[1].nodes[1].expandedTo[1].x, y: contours[1].nodes[1].expandedTo[1].y})
						distr: 0
	components:
		0:
			base: ['serif-vertical', 'none']
			id: 'bottomleft'
			class: 'lowerLeftStump'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0]
					noneAnchor: contours[0].nodes[0].expandedTo[0]
					opposite: contours[0].nodes[0].expandedTo[1]
		1:
			base: ['serif-vertical', 'none']
			id: 'bottomright'
			class: 'lowerLeftInsideStump'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1]
					noneAnchor: contours[0].nodes[0].expandedTo[1]
					opposite: contours[0].nodes[0].expandedTo[0]
					reversed: true
			transformOrigin: contours[0].nodes[0].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ]
			)
		2:
			base: ['spur-vertical', 'none']
			id: 'topleft'
			class: 'upperLeftSpur'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[0]
					noneAnchor: contours[0].nodes[1].expandedTo[0]
					opposite: contours[0].nodes[1].expandedTo[1]
					reversed: true
					rotate: -15 * spurHeight
			transformOrigin: contours[0].nodes[1].expandedTo[0]
			transforms: Array(
				[ 'translateY', - ( Math.sin( (15 * spurHeight) / 180 * Math.PI ) * ( thickness ) ) ]
				[ 'scaleY', -1 ],
			)
			parameters:
				serifMedian: Math.max( serifMedian * 0.2, serifMedian - 0.8 )
				serifHeight: Math.min( ( 45 / 15 ) * serifHeight, serifHeight + 30 )
				serifRoundness: Math.max( serifRoundness * 1.4, serifRoundness + 0.4 )
		3:
			base: ['serif-oblique-obtuse', 'none']
			id: 'topleft2'
			class: 'obtuseRightSerif'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[1]
					noneAnchor: contours[1].nodes[1].expandedTo[1]
					opposite: contours[1].nodes[1].expandedTo[0]
					obliqueEndPoint: contours[1].nodes[0].expandedTo[1]
			transformOrigin: contours[1].nodes[1].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
		4:
			base: ['serif-oblique-acute', 'none']
			id: 'topright2'
			class: 'acuteRightSerif'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[0]
					noneAnchor: contours[1].nodes[1].expandedTo[0]
					opposite: contours[1].nodes[1].expandedTo[1]
					obliqueEndPoint: contours[1].nodes[0].expandedTo[0]
					scaleX: -1
					reversed: true
			transformOrigin: contours[1].nodes[1].expandedTo[0]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
		5:
			base: ['serif-oblique-acute', 'none']
			id: 'bottomleft2'
			parentAnchors:
				0:
					base: contours[2].nodes[0].expandedTo[0]
					noneAnchor: contours[2].nodes[0].expandedTo[0]
					opposite: contours[2].nodes[0].expandedTo[1]
					obliqueEndPoint: contours[2].nodes[1].expandedTo[0]
		6:
			base: ['serif-oblique-obtuse', 'none']
			id: 'bottomright2'
			parentAnchors:
				0:
					base: contours[2].nodes[0].expandedTo[1]
					noneAnchor: contours[2].nodes[0].expandedTo[1]
					opposite: contours[2].nodes[0].expandedTo[0]
					obliqueEndPoint: contours[2].nodes[1].expandedTo[1]
					scaleX: -1
					reversed: true
