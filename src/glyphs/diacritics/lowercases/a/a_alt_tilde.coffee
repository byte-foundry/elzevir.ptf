exports.glyphs['a_alt_tilde'] =
	unicode: 'ã'
	glyphName: 'atilde'
	characterName: 'LATIN SMALL LETTER A WITH TILDE'
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
			base: 'tilde'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x
					y: parentAnchors[0].y
