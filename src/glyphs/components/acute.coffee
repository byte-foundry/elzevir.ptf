exports.glyphs['acute'] =
	glyphName: "acute"
	global: true
	characterName: "ACUTE ACCENT"
	anchors:
		0:
			x: parentAnchors[0].x
			y: parentAnchors[0].y
			position: if typeof parentAnchors[0].position != 'undefined' then parentAnchors[0].position else 0.5
	tags: [
		'component',
		'diacritic'
	]
	transforms: Array(
		['translateX', ( contours[0].nodes[0].expandedTo[0].x - contours[2].nodes[1].x ) * anchors[0].position ]
	)
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: anchors[0].x - (3)
					y: anchors[0].y - (3)
					typeOut: 'line'
					expand:
						width: thickness * ( 12 / 85 )
						angle:( 142 ) / 180 * Math.PI
						distr: 0.25
				1:
					x: contours[0].nodes[0].x + 110 - (5)
					y: contours[0].nodes[0].y + 125 + (8)
					expand:
						width: thickness * ( 55 / 85 )
						angle:( 142 ) / 180 * Math.PI
						distr: 0.25
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Utils.onLine({
						y: contours[0].nodes[1].y + 60
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
					y: contours[0].nodes[1].y + 60
					expand:
						width: Math.max( 4, thickness * ( 60 / 85 )  )
						angle:( - 36 ) / 180 * Math.PI
						distr: 0.5
		2:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[0].x
					y: contours[0].nodes[1].expandedTo[0].y
					dirOut: Utils.lineAngle(
						contours[0].nodes[0].expandedTo[0],
						contours[0].nodes[1].expandedTo[0]
					) + 0.01
				1:
					x: contours[1].nodes[0].expandedTo[1].x
					y: contours[1].nodes[0].expandedTo[1].y
					dirIn:( - 90 ) / 180 * Math.PI
					tensionIn: 1.2
					tensionOut: 0.5
					type: 'smooth'
				2:
					x: contours[1].nodes[0].expandedTo[0].x
					y: contours[1].nodes[0].expandedTo[0].y
					dirOut: 0
					tensionIn: 0.5
					tensionOut: 1.2
					type: 'smooth'
				3:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].expandedTo[1].y
					dirIn: Utils.lineAngle(
						contours[0].nodes[0].expandedTo[1],
						contours[0].nodes[1].expandedTo[1]
					) - 0.01
					typeOut: 'line'
