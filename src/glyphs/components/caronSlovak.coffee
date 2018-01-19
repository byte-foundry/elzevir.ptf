exports.glyphs['caronSlovak'] =
	glyphName: 'caron slovak'
	characterName: 'CARON SLOVAK'
	anchors:
		0:
			x: parentAnchors[0].x
			y: parentAnchors[0].y
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
					typeOut: 'line'
					expand:
						width: thickness * ( 12 / 90 )
						angle:( - 18 ) / 180 * Math.PI
						distr: 0.25
				1:
					x: contours[0].nodes[0].x + 33 * width + (7)
					y: anchors[0].y + 160 + (0)
					typeIn: 'line'
					expand:
						width: ( 60 / 90 ) * thickness
						angle:( - 20 ) / 180 * Math.PI
						distr: 0.25
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Utils.onLine({
						y: contours[0].nodes[1].y + 105
						on: [
							{
								x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) / 2,
								y: contours[0].nodes[0].expandedTo[0].y + ( contours[0].nodes[0].expandedTo[1].y - contours[0].nodes[0].expandedTo[0].y ) / 2,
							},
							{
								x: contours[0].nodes[1].expandedTo[0].x + ( contours[0].nodes[1].expandedTo[1].x - contours[0].nodes[1].expandedTo[0].x ) / 2,
								y: contours[0].nodes[1].expandedTo[0].y + ( contours[0].nodes[1].expandedTo[1].y - contours[0].nodes[1].expandedTo[0].y ) / 2,
							}
						]
					})
					y: contours[0].nodes[1].y + 105
					expand:
						width: Math.max( 4, thickness * ( 60 / 90 )  )
						angle:( - 20 ) / 180 * Math.PI
						distr: 0.4
		2:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[0].x
					y: contours[0].nodes[1].expandedTo[0].y
					tensionOut: 0.7
					dirOut: Utils.lineAngle(
						contours[0].nodes[0].expandedTo[0],
						contours[0].nodes[1].expandedTo[0]
					) + 0.01
					typeIn: 'line'
				1:
					x: contours[1].nodes[0].expandedTo[0].x
					y: contours[1].nodes[0].expandedTo[0].y
					dirIn: Math.PI
					tensionIn: 1.3
					tensionOut: 0.5
					typeOut: 'smooth'
				2:
					x: contours[1].nodes[0].expandedTo[1].x
					y: contours[1].nodes[0].expandedTo[1].y
					dirOut:( - 90 ) / 180 * Math.PI
					tensionIn: 1.2
					tensionOut: 0.5
					typeIn: 'smooth'
				3:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].expandedTo[1].y
					dirIn: Utils.lineAngle(
						contours[0].nodes[0].expandedTo[1],
						contours[0].nodes[1].expandedTo[1]
					) - 0.01
					typeOut: 'line'
	transformOrigin: Object({x: 0, y: ascenderHeight})
	transforms: Array(
		['translateY', - ( contours[1].nodes[0].expandedTo[0].y - contours[0].nodes[0].expandedTo[1].y ) ]
	)
