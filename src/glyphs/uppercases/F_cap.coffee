exports.glyphs['F_cap'] =
	unicode: 'F'
	glyphName: 'F'
	characterName: 'LATIN CAPITAL LETTER F'
	ot:
		advanceWidth: contours[1].nodes[1].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 115 + ( (25) / 90 ) * thickness + ( serifWidth - 75 )
		spacingRight: 50 * spacing + 10
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand: Object({
						width: ( 100 / 90 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					expand: Object({
						width: ( 100 / 90 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[1].expandedTo[1].y
					expand: Object({
						width: ( 25 / 90 ) * thickness * opticThickness
						angle: - 90 + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[0].expandedTo[1].x + 165 + 150 * width
					y: capHeight
					expand: Object({
						width: ( 25 / 90 ) * thickness * opticThickness
						angle: - 90 + 'deg'
						distr: 0
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: ( 347 / 660 ) * capHeight * crossbar
					typeOut: 'line'
					expand: Object({
						width: ( 25 / 90 ) * thickness * opticThickness
						angle: 90 + 'deg'
						distr: 0.5
					})
				1:
					x: contours[0].nodes[0].expandedTo[1].x + 70 + 150 * width
					y: ( 347 / 660 ) * capHeight * crossbar
					expand: Object({
						width: ( 25 / 90 ) * thickness * opticThickness
						angle: 90 + 'deg'
						distr: 0.5
					})
	components:
		0:
			base: ['serif-vertical', 'none']
			id: 'bottomleft'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0].point
					noneAnchor: contours[0].nodes[0].expandedTo[0].point
					opposite: contours[0].nodes[0].expandedTo[1].point
		1:
			base: ['serif-vertical', 'none']
			id: 'bottomright'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1].point
					noneAnchor: contours[0].nodes[0].expandedTo[1].point
					opposite: contours[0].nodes[0].expandedTo[0].point
					reversed: true
			transformOrigin: contours[0].nodes[0].expandedTo[1].point
			transforms: Array(
				[ 'scaleX', -1 ]
			)
			parentParameters:
				serifWidth: Math.min( ( 25 / 15 ) * serifWidth, serifWidth + 10 )
		2:
			base: ['serif-vertical', 'none']
			id: 'topleft'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[0].point
					noneAnchor: contours[0].nodes[1].expandedTo[0].point
					opposite: contours[0].nodes[1].expandedTo[1].point
					reversed: true
			transformOrigin: contours[0].nodes[1].point
			transforms: Array(
				[ 'scaleY', -1 ]
			)
		3:
			base: ['serif-horizontal', 'none']
			id: 'topright'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[1].point
					noneAnchor: contours[1].nodes[1].expandedTo[1].point
					opposite: contours[1].nodes[1].expandedTo[0].point
			transformOrigin: contours[1].nodes[1].expandedTo[0].point
			transforms: Array(
				[ 'skewX', - 15 * serifRotate + 15 + 'deg' ],
				[ 'translateX', ( Math.tan( (15 * serifRotate) / 180 * Math.PI ) * ( thickness * 0.5 ) ) ]
			)
			parentParameters:
				serifWidth: Math.min( ( 135 / 75 ) * serifWidth, serifWidth + 60 )
				serifHeight: Math.min( ( 55 / 15 ) * serifHeight, serifHeight + 40 )
				serifMedian: Math.max( 0.2 * serifMedian, serifMedian - 0.8 )
				serifCurve: Math.min( ( 100 / 65 ) * serifCurve, serifCurve + 35 )
		4:
			base: ['serif-horizontal-fake', 'serif-horizontal', 'none']
			id: 'toprighttop'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[0].point
					noneAnchor: contours[1].nodes[1].expandedTo[0].point
					opposite: contours[1].nodes[1].expandedTo[1].point
					reversed: true
			transformOrigin: contours[1].nodes[1].expandedTo[0].point
			transforms: Array(
				[ 'scaleY', -1 ],
				[ 'skewX', 15 * serifRotate - 15 + 'deg' ],
				[ 'translateX', ( Math.tan( (15 * serifRotate) / 180 * Math.PI ) * ( thickness * 0.5 ) ) ]
			)
		5:
			base: ['serif-horizontal', 'none']
			id: 'middletop'
			parentAnchors:
				0:
					base: contours[2].nodes[1].expandedTo[1].point
					noneAnchor: contours[2].nodes[1].expandedTo[1].point
					opposite: contours[2].nodes[1].expandedTo[0].point
					reversed: true
			transformOrigin: contours[2].nodes[1].expandedTo[1].point
			transforms: Array(
				[ 'scaleY', -1 ]
			)
			parentParameters:
				serifHeight: Math.min( ( 35 / 15 ) * serifHeight, serifHeight + 50 )
				serifMedian: Math.max( 0.35 * serifMedian, serifMedian - 0.65 )
				serifCurve: Math.min( ( 85 / 65 ) * serifCurve, serifCurve + 55 )
		6:
			base: ['serif-horizontal', 'none']
			id: 'middlebottom'
			parentAnchors:
				0:
					base: contours[2].nodes[1].expandedTo[0].point
					noneAnchor: contours[2].nodes[1].expandedTo[0].point
					opposite: contours[2].nodes[1].expandedTo[1].point
					scaleX: -1
			parentParameters:
				serifHeight: Math.min( ( 35 / 15 ) * serifHeight, serifHeight + 50 )
				serifMedian: Math.max( 0.35 * serifMedian, serifMedian - 0.65 )
				serifCurve: Math.min( ( 85 / 65 ) * serifCurve, serifCurve + 55 )
				serifWidth: Math.min( ( 85 / 75 ) * serifWidth, serifWidth + 10 )
