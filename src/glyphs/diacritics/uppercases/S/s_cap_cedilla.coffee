exports.glyphs['s_cap_cedilla'] =
	unicode: 'Ş'
	glyphName: 'uni015E'
	characterName: 'LATIN CAPITAL LETTER S WITH CEDILLA'
	base: 'S_cap'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'uppercase',
		'diacritic'
	]
	components:
		0:
			base: 'cedilla'
			copy: true
			parentAnchors:
				0:
					x: anchors[0].x
					y: anchors[0].y
