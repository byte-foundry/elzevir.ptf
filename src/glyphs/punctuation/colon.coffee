exports.glyphs['colon'] =
	unicode: ':'
	glyphName: 'colon'
	characterName: 'COLON'
	base: '.'
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
			copy: true
			parentAnchors:
				0:
					x: anchors[0].x
					y: anchors[0].y
		1:
			base: 'dot'
			parentAnchors:
				0:
					x: anchors[0].x
					y: anchors[0].y + ( 330 / 500 ) * xHeight - ( 60 / 90 ) * thickness + Math.max(
						40,
						Math.min(
							160,
							thickness * ( 130 / 90 )
						)
					)
