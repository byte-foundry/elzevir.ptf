exports.glyphs['colon'] =
	unicode: ':'
	glyphName: 'colon'
	characterName: 'COLON'
	base: 'period'
	advanceWidth: base.advanceWidth
	transforms: Array(
		['skewX', slant + 'deg']
	)
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	components:
		0:
			base: 'dot'
			parentAnchors:
				0:
					x: parentAnchors[0].x
					y: parentAnchors[0].y + ( 330 / 500 ) * xHeight - ( 60 / 90 ) * thickness + Math.max(
						40,
						Math.min(
							160,
							thickness * ( 130 / 90 )
						)
					)
