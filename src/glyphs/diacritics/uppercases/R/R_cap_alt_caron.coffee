exports.glyphs['R_cap_alt_caron'] =
	unicode: 'Ř'
	glyphName: 'Rcaron'
	characterName: 'LATIN CAPITAL LETTER R WITH CARON'
	base: 'R_cap_alt'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'uppercase',
		'diacritic'
	]
	components:
		0:
			base: 'caron'
			copy: true
			parentAnchors:
				0:
					x: anchors[0].x
					y: anchors[0].y
