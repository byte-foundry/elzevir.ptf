# TODO: minThikness + components
exports.glyphs['ellipsis'] =
	unicode: '…'
	glyphName: 'ellipsis'
	characterName: 'HORIZONTAL ELLIPSIS'
	ot:
		advanceWidth: spacingLeft + minThickness + 100 + minThickness + 100 + minThickness + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	parameters:
		spacingLeft: 50 * spacing + 50
		spacingRight: 50 * spacing + 50
	components:
		0:
			base: 'dot'
			parentAnchors:
				0:
					x: spacingLeft + minThickness / 2
					y: 0
		1:
			base: 'dot'
			parentAnchors:
				0:
					x: spacingLeft + minThickness + 100 + minThickness / 2
					y: 0
		2:
			base: 'dot'
			parentAnchors:
				0:
					x: spacingLeft + minThickness + 100 + minThickness + 100 + minThickness / 2
					y: 0
