exports.glyphs['j'] =
	unicode: 'j'
	glyphName: 'j'
	characterName: 'LATIN SMALL LETTER J'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 120 + ( (45) / 90 ) * thickness + ( serifWidth - 75 )
		spacingRight: 50 * spacing + 120 + ( serifWidth - 75 )
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft - 40 + 40 * width
					y: xHeight - Math.max( 0, serifHeight * serifArc ) - ( Math.sin( (15 * spurHeight) / 180 * Math.PI ) * ( thickness ) )
					typeOut: 'line'
					expand:
						width: thickness
						angle: 0
						distr: 0.5
				1:
					x: contours[0].nodes[0].x
					y: 0 + (15)
					dirOut:( - 90 ) / 180 * Math.PI
					tensionOut: 1.4
					expand:
						width: ( 94.5 / 90 ) * thickness
						angle:( 15 ) / 180 * Math.PI
						distr: 0.5
				2:
					x: contours[0].nodes[0].expandedTo[0].x - 110 * width + (2)
					y: ( 225 / 250 ) * descender - (20)
					tensionIn: 1.25
					dirIn: Math.min(
						32,
						Math.max(
							10,
							74 - ( 32 / 90 ) * thickness * width
						)
					) / 180 * Math.PI
					expand:
						width: ( 15 / 90 ) * thickness
						angle:( - 55 ) / 180 * Math.PI
						distr: 0.25
	components:
		0:
			base: 'dot_accent'
			parentAnchors:
				0:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) * ( 40 / 90 )
					y: xHeight + diacriticHeight
					optical: 120
		1:
			base: ['spur-vertical', 'none']
			id: 'topleft'
			class: 'upperLeftSpur'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0]
					noneAnchor: contours[0].nodes[0].expandedTo[0]
					opposite: contours[0].nodes[0].expandedTo[1]
					reversed: true
					rotate: -15 * spurHeight
			transformOrigin: contours[0].nodes[0].expandedTo[0]
			transforms: Array(
				[ 'translateY', -( Math.sin( (15 * spurHeight) / 180 * Math.PI ) * ( thickness ) ) ]
				[ 'scaleY', -1 ],
			)
			parameters:
				serifMedian: Math.max( serifMedian * 0.2, serifMedian - 0.8 )
				serifHeight: Math.min( ( 45 / 15 ) * serifHeight, serifHeight + 30 )
				serifRoundness: Math.max( serifRoundness * 1.4, serifRoundness + 0.4 )
