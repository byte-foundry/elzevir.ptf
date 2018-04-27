exports.glyphs['D_cap'] =
	unicode: 'D'
	glyphName: 'D'
	characterName: 'LATIN CAPITAL LETTER D'
	ot:
		advanceWidth: contours[1].nodes[2].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 40 + ( serifWidth - 75 )
		spacingRight: 50 * spacing + 50
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: contours[0].nodes[0].expandedTo[0].x + ( contours[1].nodes[2].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
			y: capHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + (100)
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
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].expandedTo[1].y
					expand:
						width: ( 25 / 90 ) * thickness
						angle:( - 90 ) / 180 * Math.PI
						distr: 0
				1:
					x: contours[0].nodes[1].expandedTo[1].x + ( contours[1].nodes[2].expandedTo[1].x - contours[0].nodes[1].expandedTo[1].x ) * Math.min( 0.6, 0.3 * Math.sqrt( width ) )
					y: capHeight
					dirOut: 0
					expand:
						width: ( 25 / 90 ) * thickness
						angle:( - 90 ) / 180 * Math.PI
						distr: 0
				2:
					x: Math.max(
						contours[0].nodes[1].expandedTo[0].x + 360 + 200 * width - (25),
						contours[0].nodes[1].expandedTo[1].x + 0.75 * ( 100 / 90 ) * thickness * opticThickness + 50
					)
					y: ( 330 / 660 ) * capHeight
					dirIn: Math.PI / 2
					type: 'smooth'
					expand:
						width: ( 100 / 90 ) * thickness * opticThickness
						angle: Math.PI
						distr: 0.25
				3:
					x: contours[0].nodes[1].expandedTo[1].x + ( contours[1].nodes[2].expandedTo[1].x - contours[0].nodes[1].expandedTo[1].x ) * Math.min( 0.70, 0.40 * Math.sqrt( width ) )
					y: 0
					expand:
						width: ( 25 / 90 ) * thickness
						angle: Math.PI / 2
						distr: 0
				4:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[0].expandedTo[1].y
					expand:
						width: ( 25 / 90 ) * thickness
						angle: Math.PI / 2
						distr: 0
		#
		#
		# TODO
		# FIX THIS COMPONENT
		#
		#
		2:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[1].nodes[4].expandedTo[1].y
				1:
					x: contours[0].nodes[0].expandedTo[1].x
					y: Math.max(
						contours[0].nodes[0].expandedTo[1].y,
						contours[1].nodes[4].expandedTo[1].y
					)
					dirOut:( - 90 ) / 180 * Math.PI
				2:
					x: contours[0].nodes[0].expandedTo[1].x + Math.min(
						contours[2].nodes[1].y - contours[2].nodes[0].y,
						25
					)
					y: contours[1].nodes[4].expandedTo[1].y
					typeOut: 'line'
	components:
		0:
			base: ['serif-vertical', 'none']
			id: 'bottomleft'
			id: 'bottomleft'
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
