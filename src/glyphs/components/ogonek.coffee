exports.glyphs['ogonek'] =
	glyphName: "ogonek"
	characterName: "OGONEK"
	anchors:
		0:
			x: parentAnchors[0].x
			y: parentAnchors[0].y
			angle: parentAnchors[0].angle || ( Math.PI / 2 )
	tags: [
		'component',
		'diacritic'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: anchors[0].x
					y: anchors[0].y
					dirOut:( 200 ) / 180 * Math.PI
					tensionOut: 0.5
					expand:
						width: thickness * ( 20 / 90 ) * contrast * contrastExtremity
						angle: anchors[0].angle
						distr: 0
				1:
					x: contours[0].nodes[0].expandedTo[0].x - 120
					y: ( contours[0].nodes[0].expandedTo[1].y + ( contours[0].nodes[2].y - contours[0].nodes[2].expand.width * ( 1 - contours[0].nodes[2].expand.distr )) ) * ( 140 / 205 ) # 0.65
					dirIn: Math.PI / 2
					typeOut: 'smooth'
					expand:
						width: thickness * ( 56 / 90 )
						angle:( 180 + 10 ) / 180 * Math.PI
						distr: 0.25
				2:
					x: Math.max(
						contours[0].nodes[1].expandedTo[1].x + ( contours[0].nodes[3].expandedTo[1].x - contours[0].nodes[1].expandedTo[1].x ) * ( 100 / 195 ),
						contours[0].nodes[1].expandedTo[0].x + ( contours[0].nodes[3].expandedTo[0].x - contours[0].nodes[1].expandedTo[0].x ) * 0.5
					)
					y: - 230
					dirOut: 0
					typeIn: 'smooth'
					expand:
						width: ( 32 / 90 ) * thickness * contrast
						angle:( 180 + 52 ) / 180 * Math.PI
						distr: 0.8
				3:
					x: contours[0].nodes[1].expandedTo[0].x + 195 - (43)
					y: contours[0].nodes[2].y + Math.max(
						( 35 / 90 ) * thickness * contrast - (11),
						35
					) - ( 1 - contours[0].nodes[2].expand.distr ) * contours[0].nodes[2].expand.width
					dirIn:( - 130 ) / 180 * Math.PI
					expand:
						width: ( 10 / 90 ) * thickness * contrast * contrastExtremity
						angle:( - 50 ) / 180 * Math.PI
						distr: 0.75
