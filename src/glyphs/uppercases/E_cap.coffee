exports.glyphs['E_cap'] =
	unicode: 'E'
	glyphName: 'E'
	characterName: 'LATIN CAPITAL LETTER E'
	ot:
		advanceWidth: contours[1].nodes[1].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 115 + ( (25) / 90 ) * thickness + ( serifWidth - 75 )
		spacingRight: 50 * spacing + 115 + ( serifWidth - 75 )
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: contours[0].nodes[0].expandedTo[0].x + ( contours[2].nodes[1].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
			y: capHeight + diacriticHeight
		1:
			x: contours[1].nodes[1].expandedTo[0].x
			y: contours[1].nodes[1].expandedTo[0].y
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand:
						width: ( 100 / 90 ) * thickness * opticThickness
						angle: 0
						distr: 0.25
				1:
					x: contours[0].nodes[0].x
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					expand:
						width: ( 100 / 90 ) * thickness * opticThickness
						angle: 0
						distr: 0.25
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].expandedTo[1].y
					expand:
						width: ( 25 / 90 ) * thickness * opticThickness
						angle: Math.PI / 2
						distr: 0
				1:
					x: contours[0].nodes[0].expandedTo[1].x + 145 + 150 * width
					y: 0
					expand:
						width: ( 25 / 90 ) * thickness * opticThickness
						angle: Math.PI / 2
						distr: 0
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].expandedTo[1].y
					expand:
						width: ( 25 / 90 ) * thickness * opticThickness
						angle:( - 90 ) / 180 * Math.PI
						distr: 0
				1:
					x: contours[0].nodes[0].expandedTo[1].x + 135 + 150 * width
					y: capHeight
					expand:
						width: ( 25 / 90 ) * thickness * opticThickness
						angle:( - 90 ) / 180 * Math.PI
						distr: 0
		3:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: ( 352 / 660 ) * capHeight * crossbar
					typeOut: 'line'
					expand:
						width: ( 25 / 90 ) * thickness * opticThickness
						angle: Math.PI / 2
						distr: 0.5
				1:
					x: contours[0].nodes[0].expandedTo[1].x + 80 + 150 * width
					y: ( 352 / 660 ) * capHeight * crossbar
					expand:
						width: ( 25 / 90 ) * thickness * opticThickness
						angle: Math.PI / 2
						distr: 0.5
		4:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[1].nodes[0].expandedTo[1].y
				1:
					x: contours[0].nodes[0].expandedTo[1].x
					y: Math.max(
						contours[0].nodes[0].expandedTo[1].y,
						contours[1].nodes[0].expandedTo[1].y
					)
					dirOut:( - 90 ) / 180 * Math.PI
				2:
					x: contours[0].nodes[0].expandedTo[1].x + Math.min(
						contours[4].nodes[1].y - contours[4].nodes[0].y,
						25
					)
					y: contours[1].nodes[0].expandedTo[1].y
					typeOut: 'line'
	components:
		0:
			base: ['serif-vertical', 'none']
			id: 'bottomleft'
			class: 'lowerLeftStump'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0]
					noneAnchor: contours[0].nodes[0].expandedTo[0]
					opposite: contours[0].nodes[0].expandedTo[1]
		1:
			base: ['serif-vertical', 'none']
			id: 'topleft'
			class: 'upperLeftStump'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[0]
					noneAnchor: contours[0].nodes[1].expandedTo[0]
					opposite: contours[0].nodes[1].expandedTo[1]
					reversed: true
			transformOrigin: contours[0].nodes[1]
			transforms: Array(
				[ 'scaleY', -1 ]
			)
		2:
			base: ['serif-horizontal', 'none']
			id: 'toprightbottom'
			class: 'upperRightInsideHoriz'
			parentAnchors:
				0:
					base: contours[2].nodes[1].expandedTo[1]
					noneAnchor: contours[2].nodes[1].expandedTo[1]
					opposite: contours[2].nodes[1].expandedTo[0]
			transformOrigin: contours[2].nodes[1].expandedTo[0]
			transforms: Array(
				[ 'skewX',( - 15 * serifRotate + 15 ) / 180 * Math.PI ],
				[ 'translateX', ( Math.tan( (15 * serifRotate) / 180 * Math.PI ) * ( thickness * 0.5 ) ) ]
			)
			parameters:
				serifWidth: Math.min( ( 135 / 75 ) * serifWidth, serifWidth + 60 )
				serifHeight: Math.min( ( 55 / 15 ) * serifHeight, serifHeight + 40 )
				serifMedian: Math.max( 0.2 * serifMedian, serifMedian - 0.8 )
				serifCurve: Math.min( ( 100 / 65 ) * serifCurve, serifCurve + 35 )
		3:
			base: ['serif-horizontal-fake', 'serif-horizontal', 'none']
			id: 'toprighttop'
			class: 'upperRightHoriz'
			parentAnchors:
				0:
					base: contours[2].nodes[1].expandedTo[0]
					noneAnchor: contours[2].nodes[1].expandedTo[0]
					opposite: contours[2].nodes[1].expandedTo[1]
					reversed: true
			transformOrigin: contours[2].nodes[1].expandedTo[0]
			transforms: Array(
				[ 'skewX',( 15 * serifRotate - 15 ) / 180 * Math.PI ],
				[ 'translateX', ( Math.tan( (15 * serifRotate) / 180 * Math.PI ) * ( thickness * 0.5 ) ) ]
				[ 'scaleY', -1 ],
			)
		4:
			base: ['serif-horizontal', 'none']
			id: 'middletop'
			class: 'middleUpperHoriz'
			parentAnchors:
				0:
					base: contours[3].nodes[1].expandedTo[1]
					noneAnchor: contours[3].nodes[1].expandedTo[1]
					opposite: contours[3].nodes[1].expandedTo[0]
					reversed: true
			transformOrigin: contours[3].nodes[1].expandedTo[1]
			transforms: Array(
				[ 'scaleY', -1 ]
			)
			parameters:
				serifHeight: Math.min( ( 35 / 15 ) * serifHeight, serifHeight + 50 )
				serifMedian: Math.max( 0.35 * serifMedian, serifMedian - 0.65 )
				serifCurve: Math.min( ( 85 / 65 ) * serifCurve, serifCurve + 55 )
		5:
			base: ['serif-horizontal', 'none']
			id: 'middlebottom'
			class: 'middleLowerHoriz'
			parentAnchors:
				0:
					base: contours[3].nodes[1].expandedTo[0]
					noneAnchor: contours[3].nodes[1].expandedTo[0]
					opposite: contours[3].nodes[1].expandedTo[1]
					scaleX: -1
			parameters:
				serifHeight: Math.min( ( 35 / 15 ) * serifHeight, serifHeight + 50 )
				serifMedian: Math.max( 0.35 * serifMedian, serifMedian - 0.65 )
				serifCurve: Math.min( ( 85 / 65 ) * serifCurve, serifCurve + 55 )
				serifWidth: Math.min( ( 85 / 75 ) * serifWidth, serifWidth + 10 )
		6:
			base: ['serif-horizontal', 'none']
			id: 'bottomrighttop'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[1]
					noneAnchor: contours[1].nodes[1].expandedTo[1]
					opposite: contours[1].nodes[1].expandedTo[0]
					reversed: true
			transformOrigin: contours[1].nodes[1].expandedTo[1]
			transforms: Array(
				[ 'skewX',( - 10 * serifRotate ) / 180 * Math.PI ],
				[ 'translateX', ( Math.tan( (10 * serifRotate) / 180 * Math.PI ) * ( thickness * 0.5 ) ) ]
				[ 'scaleY', -1 ],
			)
			parameters:
				serifWidth: Math.min( ( 135 / 75 ) * serifWidth, serifWidth + 60 )
				serifHeight: Math.min( ( 55 / 15 ) * serifHeight, serifHeight + 40 )
				serifMedian: Math.max( 0.2 * serifMedian, serifMedian - 0.8 )
				serifCurve: Math.min( ( 100 / 65 ) * serifCurve, serifCurve + 35 )
		7:
			base: ['serif-horizontal-fake', 'serif-horizontal', 'none']
			id: 'bottomrightbottom'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[0]
					noneAnchor: contours[1].nodes[1].expandedTo[0]
					opposite: contours[1].nodes[1].expandedTo[1]
			transformOrigin: contours[1].nodes[1].expandedTo[1]
			transforms: Array(
				[ 'skewX',( 10 * serifRotate ) / 180 * Math.PI ],
				[ 'translateX', ( Math.tan( (10 * serifRotate) / 180 * Math.PI ) * ( thickness * 0.5 ) ) ]
			)
