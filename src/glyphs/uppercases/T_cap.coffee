exports.glyphs['T_cap'] =
	unicode: 'T'
	glyphName: 'T'
	characterName: 'LATIN CAPITAL LETTER T'
	ot:
		advanceWidth: contours[0].nodes[1].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 40
		spacingRight: 50 * spacing + 40
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: contours[1].nodes[0].x
			y: capHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: capHeight
					typeOut: 'line'
					expand: Object({
						width: ( 25 / 90 ) * thickness * opticThickness
						angle: - 90 + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x + 340 + 200 * width
					y: capHeight
					expand: Object({
						width: ( 25 / 90 ) * thickness * opticThickness
						angle: - 90 + 'deg'
						distr: 0
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[0].x - contours[0].nodes[1].expandedTo[0].x ) * 0.5
					y: contours[0].nodes[1].expandedTo[1].y
					typeOut: 'line'
					expand: Object({
						width: ( 100 / 90 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.5
					})
				1:
					x: contours[1].nodes[0].x
					y: Math.max( 0, serifHeight * serifArc )
					expand: Object({
						width: ( 100 / 90 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.5
					})
	components:
		0:
			base: ['serif-vertical', 'none']
			id: 'bottomleft'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[0].point
					noneAnchor: contours[1].nodes[1].expandedTo[0].point
					opposite: contours[1].nodes[1].expandedTo[1].point
		1:
			base: ['serif-vertical', 'none']
			id: 'bottomright'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[1].point
					noneAnchor: contours[1].nodes[1].expandedTo[1].point
					opposite: contours[1].nodes[1].expandedTo[0].point
					reversed: true
			transformOrigin: contours[1].nodes[1].expandedTo[1].point
			transforms: Array(
				[ 'scaleX', -1 ]
			)
		2:
			base: ['serif-horizontal', 'none']
			id: 'topleftbottom'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1].point
					noneAnchor: contours[0].nodes[0].expandedTo[1].point
					opposite: contours[0].nodes[0].expandedTo[0].point
					reversed: true
			transformOrigin: contours[0].nodes[0].expandedTo[0].point
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'skewX', - 15 * serifRotate + 10 + 'deg' ],
				[ 'translateX', ( Math.tan( (15 * serifRotate) / 180 * Math.PI ) * ( thickness ) ) ]
			)
			parentParameters:
				serifWidth: Math.min( ( 150 / 75 ) * serifWidth, serifWidth + 75 )
				serifHeight: Math.min( ( 60 / 15 ) * serifHeight, serifHeight + 45 )
				serifMedian: Math.max( 0.2 * serifMedian, serifMedian - 0.8 )
				serifCurve: Math.min( ( 80 / 65 ) * serifCurve, serifCurve + 15 )
		3:
			base: ['serif-horizontal-fake', 'serif-horizontal', 'none']
			id: 'toplefttop'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0].point
					noneAnchor: contours[0].nodes[0].expandedTo[0].point
					opposite: contours[0].nodes[0].expandedTo[1].point
			transformOrigin: contours[0].nodes[0].expandedTo[0].point
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ],
				[ 'skewX', 15 * serifRotate - 10 + 'deg' ],
				[ 'translateX', ( Math.tan( (15 * serifRotate) / 180 * Math.PI ) * ( thickness ) ) ]
			)
		4:
			base: ['serif-horizontal', 'none']
			id: 'toprightbottom'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[1].point
					noneAnchor: contours[0].nodes[1].expandedTo[1].point
					opposite: contours[0].nodes[1].expandedTo[0].point
			transformOrigin: contours[0].nodes[1].expandedTo[0].point
			transforms: Array(
				[ 'skewX', - 15 * serifRotate + 10 + 'deg' ],
				[ 'translateX', ( Math.tan( (15 * serifRotate) / 180 * Math.PI ) * ( thickness ) ) ]
			)
			parentParameters:
				serifWidth: Math.min( ( 150 / 75 ) * serifWidth, serifWidth + 75 )
				serifHeight: Math.min( ( 60 / 15 ) * serifHeight, serifHeight + 45 )
				serifMedian: Math.max( 0.2 * serifMedian, serifMedian - 0.8 )
				serifCurve: Math.min( ( 80 / 65 ) * serifCurve, serifCurve + 15 )
		5:
			base: ['serif-horizontal-fake', 'serif-horizontal', 'none']
			id: 'toprighttop'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[0].point
					noneAnchor: contours[0].nodes[1].expandedTo[0].point
					opposite: contours[0].nodes[1].expandedTo[1].point
					reversed: true
			transformOrigin: contours[0].nodes[1].expandedTo[0].point
			transforms: Array(
				[ 'scaleY', -1 ],
				[ 'skewX', 15 * serifRotate - 10 + 'deg' ],
				[ 'translateX', ( Math.tan( (15 * serifRotate) / 180 * Math.PI ) * ( thickness ) ) ]
			)
