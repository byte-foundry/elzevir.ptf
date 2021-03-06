exports.glyphs['threequarters'] =
	unicode: '¾'
	glyphName: 'threequarters'
	characterName: 'VULGAR FRACTION THREE QUARTERS'
	ot:
		advanceWidth: anchors[0].right + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 120 + ( (45) / 90 ) * thickness + ( serifWidth - 75 )
		spacingRight: 50 * spacing + 120 + ( serifWidth - 75 )
		thickness: thickness * 1.7
		descender: -160
	tags: [
		'all',
		'latin',
		'figures'
	]
	anchors:
		0:
			x: 0
			y: 0
			left:spacingRight
			right: capHeight - 100 + 100 * width
			bottom: -overshoot
			top: capHeight + overshoot
		1:
			x: 0
			y: 0
	components:
		0:
			base: 'stroke'
			parentAnchors:
				0:
					left: anchors[0].left
					right: anchors[0].right
					top: anchors[0].top
					bottom: anchors[0].bottom
		1:
			base: 'three_base'
			transformOrigin: anchors[1].point
			transforms: Array(
				[ 'translateX', spacingLeft * 0.2]
				[ 'translateY', anchors[0].top - xHeight * 0.5]
				[ 'scaleY', 0.5 ],
				[ 'scaleX', 0.5 ],
			)
		2:
			base: 'four_base'
			transformOrigin: anchors[1].point
			transforms: Array(
				[ 'translateX', anchors[0].right - 220 - 70 * width]
				[ 'translateY', 80 * 15 / 23 - overshoot * 0.5]
				[ 'scaleY', 0.5 ],
				[ 'scaleX', 0.5 ],
			)
