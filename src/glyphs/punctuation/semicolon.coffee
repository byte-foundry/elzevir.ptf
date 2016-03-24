exports.glyphs['semicolon'] =
	unicode: ';'
	glyphName: 'semicolon'
	characterName: 'SEMICOLON'
	base: ','
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
					x: anchors[0].x
					y: anchors[0].y + ( 330 / 500 ) * xHeight - ( 60 / 90 ) * thickness
