exports.glyphs['L_cap_slash'] =
	unicode: 'Ł'
	glyphName: 'Lslash'
	characterName: 'LATIN CAPITAL LETTER L WITH STROKE'
	base: 'L_cap'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'lowercase',
		'diacritic'
	]
	components:
		0:
			base: 'stroke'
			copy: true
			parentAnchors:
				0:
					left: parentAnchors[0].left
					right: parentAnchors[0].right
					top: parentAnchors[0].top
					bottom: parentAnchors[0].bottom
					angle: parentAnchors[0].angle
