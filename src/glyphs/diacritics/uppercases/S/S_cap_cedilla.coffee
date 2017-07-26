exports.glyphs['S_cap_cedilla'] =
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
					x: anchors[2].x
					y: anchors[2].y
