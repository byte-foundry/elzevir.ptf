exports.glyphs['Z_cap_caron'] =
	unicode: 'Ž'
	glyphName: 'Zcaron'
	characterName: 'LATIN CAPITAL LETTER Z WITH CARON'
	base: 'Z_cap'
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
					x: parentAnchors[0].x
					y: parentAnchors[0].y
