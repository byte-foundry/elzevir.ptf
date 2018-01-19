# In 2014, we launched a Kickstarter campaign and Kévin Hohler,
# was one our wonderful backers! He sponsored this glyph.
# You can have a look at his work at http://kevin-hohler.com/
# Thank you Kévin!
exports.glyphs['ampersand'] =
	unicode: '&'
	glyphName: 'ampersand'
	characterName: 'AMPERSAND'
	ot:
		advanceWidth: contours[2].nodes[2].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 50
		spacingRight: 50 * spacing + 0
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	anchors:
		0:
			junctionTop: Utils.pointOnCurve( contours[2].nodes[0].expandedTo[0], contours[2].nodes[0].expandedTo[0].handleOut, contours[2].nodes[1].expandedTo[0], contours[2].nodes[1].expandedTo[0].handleIn, Math.max( 190, 150 + 40 * width), false, 40 )
			junctionBottom: Utils.pointOnCurve( contours[2].nodes[1].expandedTo[1], contours[2].nodes[1].expandedTo[1].handleIn, contours[2].nodes[0].expandedTo[1], contours[2].nodes[0].expandedTo[1].handleOut, Math.min( 190, 220 - ( 30 / 660 ) * capHeight ), true, 40 )
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					# x: anchors[0].junctionBottom.x
					# y: anchors[0].junctionBottom.y
					x: anchors[0].junctionBottom.x + ( anchors[0].junctionTop.x - anchors[0].junctionBottom.x ) / 2,
					y: anchors[0].junctionBottom.y + ( anchors[0].junctionTop.y - anchors[0].junctionBottom.y ) / 2,
					dirOut:( - 163 ) / 180 * Math.PI
					expand:
						width: ( 16 / 90 ) * thickness
						angle:( 180 - 60 ) / 180 * Math.PI
						distr: 0.75
				1:
					x: spacingLeft + (21/90) * thickness
					y: ( 165 / 660 ) * capHeight
					y: contours[0].nodes[2].y + ( contours[0].nodes[0].y - contours[0].nodes[2].y ) * 0.45
					dirOut:( - 90 ) / 180 * Math.PI
					typeIn: 'smooth'
					expand:
						width: ( 92 / 90 ) * thickness
						angle:( 180 + 22 ) / 180 * Math.PI
						distr: 0.75
				2:
					x: contours[0].nodes[1].expandedTo[1].x + ( contours[0].nodes[4].expandedTo[0].x - contours[0].nodes[1].expandedTo[1].x ) * 0.425
					y: - overshoot
					dirIn: 0
					typeOut: 'smooth'
					expand:
						width: ( 64 / 90 ) * thickness
						angle:( 180 + 39 ) / 180 * Math.PI
						distr: 1
				3:
					x: contours[0].nodes[4].x
					y: contours[0].nodes[4].y - ( 30 / 660 ) * capHeight - serifHeight - serifCurve,
					dirIn:( - 90 ) / 180 * Math.PI
					typeOut: 'line'
					expand:
						width: ( 20 / 90 ) * thickness
						angle: 0
						distr: 0.75
				4:
					x: spacingLeft + 405 + 100 * width - (5)
					y: ( 300 / 660 ) * capHeight
					typeIn: 'line'
					expand:
						width: ( 20 / 90 ) * thickness
						angle: 0
						distr: 0.75
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: anchors[0].junctionBottom.x + ( anchors[0].junctionTop.x - anchors[0].junctionBottom.x ) / 2
					y: anchors[0].junctionBottom.y + ( anchors[0].junctionTop.y - anchors[0].junctionBottom.y ) / 2
					dirOut:( 10 ) / 180 * Math.PI
					expand:
						width: ( 15 / 90 ) * thickness
						angle:( - 56 ) / 180 * Math.PI
						distr: 0.75
				1:
					x: spacingLeft + 310 + 100 * width - (17)
					y: contours[1].nodes[0].expandedTo[1].y + ( contours[1].nodes[2].y - contours[1].nodes[0].expandedTo[1].y ) * 0.6
					dirOut: Math.PI / 2
					typeIn: 'smooth'
					expand:
						width: ( 70 / 90 ) * thickness
						angle:( 180 - 176 ) / 180 * Math.PI
						distr: 0.75
				2:
					x: ( contours[1].nodes[3].expandedTo[0].x + contours[1].nodes[1].expandedTo[0].x ) * 0.5
					y: capHeight + overshoot
					dirOut: Math.PI
					typeIn: 'smooth'
					expand:
						width: ( 20 / 90 ) * thickness
						angle:( 180 - 106 ) / 180 * Math.PI
						distr: 1
				3:
					x: spacingLeft + 110 + (17)
					y: ( 500 / 660 ) * capHeight + (10)
					dirIn: Math.PI / 2
					tensionOut: ( 1.2 / 660 ) * capHeight * width
					expand:
						width: ( 80 / 90 ) * thickness
						angle:( 180 + 30 ) / 180 * Math.PI
						distr: 0.75
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + 110 + (17)
					y: ( 500 / 660 ) * capHeight + (10)
					dirOut: Math.PI / 2
					tensionOut: ( 1.2 / 660 ) * capHeight * width
					expand:
						width: ( 80 / 90 ) * thickness
						angle:( 180 + 30 ) / 180 * Math.PI
						distr: 0.75
				1:
					x: contours[2].nodes[0].expandedTo[1].x + ( contours[2].nodes[2].expandedTo[0].x - contours[2].nodes[0].expandedTo[1].x ) * ( 0.35 / 660 ) * capHeight
					y: 180 + ( 20 / 660 ) * capHeight
					tensionIn: Math.max( 0, 3 - ( 2 / 660 ) * capHeight )
					tensionOut: Math.max( 0, 3 - ( 1.5 / 660 ) * capHeight )
					dirIn:( 130 ) / 180 * Math.PI
					typeOut: 'smooth'
					expand:
						width: ( 85 / 90 ) * thickness
						angle:( 180 + 40 ) / 180 * Math.PI
						distr: 0.75
				2:
					x: contours[0].nodes[4].expandedTo[0].x + ( 135 / 660 ) * capHeight + ( 50 / 90 ) * thickness
					y: 0
					dirIn:( - 170 ) / 180 * Math.PI
					expand:
						width: ( 15 / 90 ) * thickness
						angle:( 180 + 90 ) / 180 * Math.PI
						distr: 1
	components:
		0:
			base: ['serif-vertical', 'none']
			id: 'topleft'
			parentAnchors:
				0:
					base: contours[0].nodes[4].expandedTo[0]
					noneAnchor: contours[0].nodes[4].expandedTo[0]
					opposite: contours[0].nodes[4].expandedTo[1]
					reversed: true
			transformOrigin: contours[0].nodes[4]
			transforms: Array(
				[ 'scaleY', -1 ]
			)
		1:
			base: ['serif-vertical', 'none']
			id: 'topright'
			parentAnchors:
				0:
					base: contours[0].nodes[4].expandedTo[1]
					noneAnchor: contours[0].nodes[4].expandedTo[1]
					opposite: contours[0].nodes[4].expandedTo[0]
			transformOrigin: contours[0].nodes[4].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
