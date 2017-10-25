exports.glyphs['l_slash'] =
	unicode: 'ł'
	glyphName: 'lslash'
	characterName: 'LATIN SMALL LETTER L WITH STROKE'
	base: 'l'
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
