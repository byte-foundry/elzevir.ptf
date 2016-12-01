exports.glyphs['a_alt_breve'] =
	unicode: 'ă'
	glyphName: 'abreve'
	characterName: 'LATIN SMALL LETTER A WITH BREVE'
	base: 'a_alt'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'lowercase',
		'diacritic'
	]
	components:
		0:
			base: 'breve'
			copy: true
			parentAnchors:
				0:
					x: anchors[0].x
					y: xHeight + overshoot
