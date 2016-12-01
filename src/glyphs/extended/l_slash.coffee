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
					left: anchors[0].left
					right: anchors[0].right
					top: anchors[0].top
					bottom: anchors[0].bottom
					angle: anchors[0].angle
