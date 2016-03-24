exports.glyphs['quoteright'] =
	unicode: '’'
	glyphName: 'quoteright'
	characterName: 'RIGHT SINGLE QUOTATION MARK'
	ot:
		advanceWidth: 0 + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 0 * spacing + (0)
		spacingRight: 0 * spacing
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	anchors:
		0:
			x: 0
			y: 0
	components:
		0:
			base: '_quoteright'
			parentAnchors:
				0:
					x: 125
					y: xHeight
