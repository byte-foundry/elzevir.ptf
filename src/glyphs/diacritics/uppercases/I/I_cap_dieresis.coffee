exports.glyphs['I_cap_dieresis'] =
	unicode: 'Ï'
	glyphName: 'Idieresis'
	characterName: 'LATIN CAPITAL LETTER I WITH DIAERESIS'
	base: 'I_cap'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'uppercase',
		'diacritic'
	]
	components:
		0:
			base: 'dot_accent'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x - 80 - ( 15 / 85 ) * thickness * width
					y: parentAnchors[0].y
		1:
			base: 'dot_accent'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x + 80 + ( 15 / 85 ) * thickness * width
					y: parentAnchors[0].y
