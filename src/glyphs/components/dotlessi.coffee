exports.glyphs['dotlessi'] =
	glyphName: "dotlessi"
	characterName: "LATIN SMALL LETTER DOTLESS I"
	unicode: 'ı'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 120 + ( (45) / 90 ) * thickness + ( serifWidth - 75 )
		spacingRight: 50 * spacing + 120 + ( serifWidth - 75 )
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: contours[0].nodes[0].x
			y: xHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand:
						width: thickness
						angle: 0 + 'deg'
						distr: 0.5
				1:
					x: contours[0].nodes[0].x
					y: xHeight - Math.max( 0, serifHeight * serifArc ) - ( Math.sin( (15 * spurHeight) / 180 * Math.PI ) * ( thickness ) )
					expand:
						width: thickness
						angle: 0 + 'deg'
						distr: 0.5
	components:
		0:
			base: ['serif-vertical', 'none']
			id: 'bottomleft'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0]
					noneAnchor: contours[0].nodes[0].expandedTo[0]
					opposite: contours[0].nodes[0].expandedTo[1]
		1:
			base: ['serif-vertical', 'none']
			id: 'bottomright'
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
