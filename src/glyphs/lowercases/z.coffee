exports.glyphs['z'] =
	unicode: 'z'
	glyphName: 'z'
	characterName: 'LATIN SMALL LETTER Z'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 45 + (0)
		spacingRight: 50 * spacing + 50
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: contours[1].nodes[1].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[1].x - contours[1].nodes[1].expandedTo[0].x ) * 0.5
			y: xHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					# x: 234 + 200 * width - (26)
					x: contours[0].nodes[1].expandedTo[0].x + 200 * width + 190 - (27)
					y: xHeight
					typeOut: 'line'
					expand:
						width: ( 104 / 90 ) * thickness
						angle: 0
						distr: 0.75
				1:
					x: spacingLeft + (26)
					y: 0
					typeIn: 'line'
					expand:
						width: ( 106 / 90 ) * thickness
						angle: 0
						distr: 0.25
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
					y: xHeight
					typeOut: 'line'
					expand:
						width: ( 21 / 90 ) * thickness
						angle:( - 106 ) / 180 * Math.PI
						distr: 0
				1:
					x: contours[0].nodes[1].expandedTo[0].x + ( 50 / 90 ) * thickness
					y: xHeight
					typeIn: 'line'
					expand:
						width: ( 21 / 90 ) * thickness # / Math.cos( - serifRotate * (15) / 180 * Math.PI )
						angle:( - 90 ) / 180 * Math.PI # - serifRotate * (15)
						distr: 0
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[0].x + ( contours[0].nodes[1].expandedTo[1].x - contours[0].nodes[1].expandedTo[0].x ) * 0.5
					y: 0
					typeOut: 'line'
					expand:
						width: ( 20 / 90 ) * thickness
						angle: Math.PI / 2
						distr: 0
				1:
					x: contours[0].nodes[0].x
					y: 0
					typeIn: 'line'
					expand:
						# width: ( 20 / 90 ) * thickness
						width: ( 20 / 90 ) * thickness / Math.cos( - serifRotate * (10) / 180 * Math.PI )
						# angle:( 79 ) / 180 * Math.PI
						angle: Math.PI / 2
						distr: 0
	components:
		0:
			base: ['serif-horizontal', 'none']
			id: 'topleftbottom'
			class: 'ZTopLeftBottom'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[1]
					noneAnchor: contours[1].nodes[1].expandedTo[1]
					opposite: contours[1].nodes[1].expandedTo[0]
					reversed: true
			transformOrigin: contours[1].nodes[1].expandedTo[0]
			transforms: Array(
				[ 'skewX',( - 15 * serifRotate ) / 180 * Math.PI ],
				[ 'translateX', ( Math.tan( (15 * serifRotate) / 180 * Math.PI ) * ( thickness ) ) ]
				[ 'scaleX', -1 ],
			)
			parameters:
				serifWidth: Math.min( ( 90 / 75 ) * serifWidth, serifWidth + 15 )
				serifHeight: Math.min( ( 60 / 15 ) * serifHeight, serifHeight + 45 )
				serifMedian: Math.max( 0.2 * serifMedian, serifMedian - 0.8 )
				serifCurve: Math.min( ( 80 / 65 ) * serifCurve, serifCurve + 15 )
		1:
			base: ['serif-horizontal-fake', 'serif-horizontal', 'none']
			id: 'toplefttop'
			class: 'ZTopLeftTop'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[0]
					noneAnchor: contours[1].nodes[1].expandedTo[0]
					opposite: contours[1].nodes[1].expandedTo[1]
			transformOrigin: contours[1].nodes[1].expandedTo[0]
			transforms: Array(
				[ 'skewX',( 15 * serifRotate ) / 180 * Math.PI ],
				[ 'translateX', ( Math.tan( (15 * serifRotate) / 180 * Math.PI ) * ( thickness ) ) ]
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ],
			)
		2:
			base: ['serif-horizontal', 'none']
			id: 'bottomrighttop'
			class: 'ZBottomRightTop'
			parentAnchors:
				0:
					base: contours[2].nodes[1].expandedTo[1]
					noneAnchor: contours[2].nodes[1].expandedTo[1]
					opposite: contours[2].nodes[1].expandedTo[0]
					reversed: true
			transformOrigin: contours[2].nodes[1].expandedTo[1]
			transforms: Array(
				[ 'skewX',( - 10 * serifRotate ) / 180 * Math.PI ],
				[ 'translateX', ( Math.tan( (10 * serifRotate) / 180 * Math.PI ) * ( thickness * 0.5 ) ) ]
				[ 'scaleY', -1 ],
			)
			parameters:
				serifWidth: Math.min( ( 150 / 75 ) * serifWidth, serifWidth + 75 )
				midWidth: Math.max( ( 0.95 ) * midWidth, midWidth - 0.05 )
				serifHeight: Math.min( ( 55 / 15 ) * serifHeight, serifHeight + 40 )
				serifMedian: Math.max( 0.35 * serifMedian, serifMedian - 0.65 )
				serifCurve: Math.min( ( 90 / 65 ) * serifCurve, serifCurve + 25 )
		3:
			base: ['serif-horizontal-fake', 'serif-horizontal', 'none']
			id: 'bottomrightbottom'
			class: 'ZBottomRightBottom'
			parentAnchors:
				0:
					base: contours[2].nodes[1].expandedTo[0]
					noneAnchor: contours[2].nodes[1].expandedTo[0]
					opposite: contours[2].nodes[1].expandedTo[1]
			transformOrigin: contours[2].nodes[1].expandedTo[1]
			transforms: Array(
				[ 'skewX',( 10 * serifRotate ) / 180 * Math.PI ],
				[ 'translateX', ( Math.tan( (10 * serifRotate) / 180 * Math.PI ) * ( thickness * 0.5 ) ) ]
			)
