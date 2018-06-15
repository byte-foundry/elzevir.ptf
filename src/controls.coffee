exports.controls = [
	tab: true
	label: 'Func'
	icon: '...'
	parameters: [
		name: 'xHeight'
		label: 'x Height'
		min: 300
		max: 900
		step: 1
		init: 500
		minAdvised: 400
		maxAdvised: 900
		disabled: false
		advanced: false
		group: 'Vertical Settings'
	,
		name: 'capDelta'
		label: 'Capital Height'
		min: 0
		max: 400
		step: 1
		init: 160
		minAdvised: 0
		maxAdvised: 400
		disabled: false
		advanced: false
		group: 'Vertical Settings'
	,
		name: 'smallCapDelta'
		label: 'SC Height'
		min: 0
		max: 2.5
		step: 0.01
		init: 1
		minAdvised: 0
		maxAdvised: 2.5
		disabled: false
		advanced: true
		group: 'Vertical Settings'
	,
		name: 'ascender'
		label: 'Ascender'
		min: 50
		max: 800
		step: 1
		init: 220
		minAdvised: 200
		maxAdvised: 530
		disabled: false
		advanced: false
		group: 'Vertical Settings'
	,
		name: 'descender'
		label: 'Descender'
		min: -850
		max: -50
		step: 1
		init: -230
		minAdvised: -400
		maxAdvised: -170
		disabled: false
		advanced: false
		group: 'Vertical Settings'
	,
		name: 'crossbar'
		label: 'Crossbar'
		min: 0.8
		max: 1.1
		step: 0.001
		init: 1
		minAdvised: 0.8
		maxAdvised: 1.1
		disabled: false
		advanced: false
		group: 'Vertical Settings'
	,
		name: 'diacriticHeight'
		label: 'Diacritic Position'
		min: -5
		max: 150
		step: 1
		init: 35
		minAdvised: 20
		maxAdvised: 150
		disabled: false
		advanced: false
		group: 'Vertical Settings'
	,
		name: 'width'
		label: 'Width'
		min: 0.4
		max: 2.5
		step: 0.01
		init: 1
		minAdvised: 0.4
		maxAdvised: 2.25
		disabled: false
		advanced: false
		group: 'Horizontal Settings'
	,
		name: '_scWidth'
		label: 'SC Width'
		min: 0.5
		max: 1.5
		step: 0.05
		init: 0.7
		minAdvised: 0.5
		maxAdvised: 1.5
		disabled: false
		advanced: true
		group: 'Horizontal Settings'
	,
		name: 'slant'
		label: 'Slant'
		min: -15
		max: 30
		step: 0.2
		init: 0
		minAdvised: -15
		maxAdvised: 20
		disabled: false
		advanced: false
		group: 'Horizontal Settings'
	,
		name: 'overshoot'
		label: 'Overshoot'
		min: 0
		max: 20
		step: 1
		init: 5
		minAdvised: 0
		maxAdvised: 20
		disabled: false
		advanced: false
		group: 'Overshoot'
	,
		name: 'spacing'
		label: 'Spacing'
		min: -1
		max: 3
		step: 0.01
		init: 0
		minAdvised: -0.60
		maxAdvised: 3
		disabled: false
		advanced: false
		group: 'Spacing'
	]
,
	tab: true
	label: 'Style'
	icon: '...'
	parameters: [
		name: 'thickness'
		label: 'Thickness'
		min: 4
		max: 180
		step: 1
		init: 90
		minAdvised: 4
		maxAdvised: 160
		disabled: false
		advanced: false
		group: 'Style'
	,
		name: 'opticThickness'
		label: 'Capital thickness'
		min: 0.7
		max: 1.3
		step: 0.01
		init: 1
		minAdvised: 0.7
		maxAdvised: 1.3
		disabled: false
		advanced: false
		group: 'Style'
	,
		name: '_scThickness'
		label: 'SC Thickness'
		min: 0.5
		max: 1.5
		step: 0.05
		init: 0.9
		minAdvised: 0.5
		maxAdvised: 1.5
		disabled: false
		advanced: true
		group: 'Style'
	,
		name: 'aperture'
		label: 'Aperture'
		min: 0.3
		max: 2
		step: 0.01
		init: 1
		minAdvised: 0.65
		maxAdvised: 1.85
		disabled: false
		advanced: false
		group: 'Style'
	,
		name: 'apertureTop'
		label: 'Top'
		min: 0.3
		max: 1.7
		step: 0.01
		init: 1
		minAdvised: 0.3
		maxAdvised: 1.7
		disabled: false
		advanced: true
		child: true
		group: 'Style'
	,
		name: 'apertureBottom'
		label: 'Bottom'
		min: 0.3
		max: 1.7
		step: 0.01
		init: 1
		minAdvised: 0.3
		maxAdvised: 1.7
		disabled: false
		advanced: true
		child: true
		group: 'Style'
	,
		name: 'curviness'
		label: 'Curviness'
		min: 0.1
		max: 1.4
		step: 0.1
		init: 0.6
		minAdvised: 0.1
		maxAdvised: 1.4
		disabled: false
		advanced: false
		group: 'Style'
	,
		name: 'opticThickness'
		label: 'Optic thickness'
		min: 0.7
		max: 1.3
		step: 0.01
		init: 1
		minAdvised: 0.7
		maxAdvised: 1.3
		disabled: false
		advanced: false
		group: 'Style'
	,
		name: '_contrast'
		label: 'Contrast'
		min: -1.3
		max: -0.15
		step: 0.01
		init: -1
		minAdvised: -1
		maxAdvised: -0.3
		disabled: true
		advanced: true
		group: 'Style'
	,
		name: '_contrastExtremity'
		label: 'extremity'
		min: -1.5
		max: -0.2
		step: 0.01
		init: -1
		minAdvised: -1
		maxAdvised: -0.5
		disabled: true
		advanced: true
		child: true
		group: 'Style'
	]
,
	tab: true
	label: 'Serif'
	icon: '...'
	parameters: [
		name: 'serifWidth'
		label: 'Serif Width'
		min: 0.001 #temporary FIX (instead 0)
		max: 200
		step: 1
		init: 75
		minAdvised: 0.001
		maxAdvised: 150
		disabled: false
		advanced: false
		group: 'Proportions'
	,
		name: 'serifHeight'
		label: 'Serif Height'
		min: 0.001
		max: 100
		step: 1
		init: 15
		minAdvised: 0.001
		maxAdvised: 100
		disabled: false
		advanced: false
		group: 'Proportions'
	,
		name: 'midWidth'
		label: 'Middle Width'
		min: 0.5
		max: 1.5
		step: 0.01
		init: 1
		minAdvised: 0.90
		maxAdvised: 1.1
		disabled: false
		advanced: false
		group: 'Endings'
	,
		name: 'serifMedian'
		label: 'Serif Median'
		min: 0.2
		max: 1.5
		step: 0.01
		init: 1
		minAdvised: 0.2
		maxAdvised: 1.5
		disabled: false
		advanced: false
		group: 'Endings'
	,
		name: 'serifCurve'
		label: 'Bracket Curve'
		min: 0.001
		max: 250
		step: 1
		init: 65
		minAdvised: 0.001
		maxAdvised: 250
		disabled: false
		advanced: false
		group: 'Brackets'
	,
		name: 'serifRoundness'
		label: 'Bracket Roundness'
		min: 0
		max: 1.8
		step: 0.01
		init: 1
		minAdvised: 0
		maxAdvised: 0.30
		disabled: false
		advanced: false
		group: 'Brackets'
	,
		name: 'spurHeight'
		label: 'Spur Height'
		min: 0
		max: 2
		step: 0.1
		init: 1
		minAdvised: 0
		maxAdvised: 2
		disabled: false
		advanced: false
		group: 'Adjustments'
	,
		name: 'serifRotate'
		label: 'Serif Rotation'
		min: 0
		max: 2
		step: 0.1
		init: 1
		minAdvised: 0
		maxAdvised: 2
		disabled: false
		advanced: false
		group: 'Adjustments'
	,
		name: 'serifAperture'
		label: 'Serif Aperture'
		min: 0
		max: 3
		step: 0.01
		init: 0
		minAdvised: 0
		maxAdvised: 3
		disabled: false
		advanced: true
		group: 'Advanced'
	,
		name: 'serifArc'
		label: 'Serif Arc'
		min: -1.5
		max: 1
		step: 0.01
		init: 0
		minAdvised: -1.5
		maxAdvised: 1
		disabled: false
		advanced: true
		group: 'Advanced'
	,
		name: 'serifTerminal'
		label: 'Serif Terminal'
		min: -0.5
		max: 2
		step: 0.01
		init: 0
		minAdvised: -0.5
		maxAdvised: 2
		disabled: false
		advanced: true
		group: 'Advanced'
	,
		name: 'serifTerminalCurve'
		label: 'Serif Terminal Curve'
		min: 0
		max: 2
		step: 0.01
		init: 1
		minAdvised: 0
		maxAdvised: 2
		disabled: false
		advanced: true
		group: 'Advanced'
	,
		name: 'serifBall'
		label: 'Terminal Ball'
		min: 0.01
		max: 3
		step: 0.01
		init: 1
		minAdvised: 0.01
		maxAdvised: 3
		disabled: true
		advanced: true
		group: 'Advanced'
	]
]
