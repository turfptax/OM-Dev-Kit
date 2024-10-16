PULSONIX_LIBRARY_ASCII "SamacSys ECAD Model"
//245277/941697/2.50/4/3/Switch

(asciiHeader
	(fileUnits MM)
)
(library Library_1
	(padStyleDef "r145_100"
		(holeDiam 0)
		(padShape (layerNumRef 1) (padShapeType Rect)  (shapeWidth 1.000) (shapeHeight 1.450))
		(padShape (layerNumRef 16) (padShapeType Ellipse)  (shapeWidth 0) (shapeHeight 0))
	)
	(textStyleDef "Normal"
		(font
			(fontType Stroke)
			(fontFace "Helvetica")
			(fontHeight 1.27)
			(strokeWidth 0.127)
		)
	)
	(patternDef "EVQP2P02M" (originalName "EVQP2P02M")
		(multiLayer
			(pad (padNum 1) (padStyleRef r145_100) (pt -0.850, 2.575) (rotation 0))
			(pad (padNum 2) (padStyleRef r145_100) (pt 0.850, 2.575) (rotation 0))
			(pad (padNum 3) (padStyleRef r145_100) (pt -0.850, -2.575) (rotation 0))
			(pad (padNum 4) (padStyleRef r145_100) (pt 0.850, -2.575) (rotation 0))
		)
		(layerContents (layerNumRef 18)
			(attr "RefDes" "RefDes" (pt 0.000, 0.000) (textStyleRef "Normal") (isVisible True))
		)
		(layerContents (layerNumRef 28)
			(line (pt -1.75 -2.35) (pt 1.75 -2.35) (width 0.025))
		)
		(layerContents (layerNumRef 28)
			(line (pt 1.75 -2.35) (pt 1.75 2.35) (width 0.025))
		)
		(layerContents (layerNumRef 28)
			(line (pt 1.75 2.35) (pt -1.75 2.35) (width 0.025))
		)
		(layerContents (layerNumRef 28)
			(line (pt -1.75 2.35) (pt -1.75 -2.35) (width 0.025))
		)
		(layerContents (layerNumRef Courtyard_Top)
			(line (pt -2.75 4.3) (pt 2.75 4.3) (width 0.1))
		)
		(layerContents (layerNumRef Courtyard_Top)
			(line (pt 2.75 4.3) (pt 2.75 -4.3) (width 0.1))
		)
		(layerContents (layerNumRef Courtyard_Top)
			(line (pt 2.75 -4.3) (pt -2.75 -4.3) (width 0.1))
		)
		(layerContents (layerNumRef Courtyard_Top)
			(line (pt -2.75 -4.3) (pt -2.75 4.3) (width 0.1))
		)
		(layerContents (layerNumRef 18)
			(line (pt -1.75 -1.6) (pt -1.75 1.6) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(line (pt 1.75 -1.6) (pt 1.75 1.6) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(line (pt -1 3.6) (pt -1 3.6) (width 0.1))
		)
		(layerContents (layerNumRef 18)
			(arc (pt -1, 3.65) (radius 0.05) (startAngle 270) (sweepAngle 180.0) (width 0.1))
		)
		(layerContents (layerNumRef 18)
			(line (pt -1 3.7) (pt -1 3.7) (width 0.1))
		)
		(layerContents (layerNumRef 18)
			(arc (pt -1, 3.65) (radius 0.05) (startAngle 90.0) (sweepAngle 180.0) (width 0.1))
		)
		(layerContents (layerNumRef 18)
			(line (pt -1 3.6) (pt -1 3.6) (width 0.1))
		)
		(layerContents (layerNumRef 18)
			(arc (pt -1, 3.65) (radius 0.05) (startAngle 270) (sweepAngle 180.0) (width 0.1))
		)
	)
	(symbolDef "EVQ-P2P02M" (originalName "EVQ-P2P02M")

		(pin (pinNum 1) (pt 0 mils 0 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -25 mils) (rotation 0]) (justify "Left") (textStyleRef "Normal"))
		))
		(pin (pinNum 2) (pt 1200 mils 0 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 970 mils -25 mils) (rotation 0]) (justify "Right") (textStyleRef "Normal"))
		))
		(pin (pinNum 3) (pt 0 mils -100 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -125 mils) (rotation 0]) (justify "Left") (textStyleRef "Normal"))
		))
		(pin (pinNum 4) (pt 1200 mils -100 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 970 mils -125 mils) (rotation 0]) (justify "Right") (textStyleRef "Normal"))
		))
		(line (pt 200 mils 100 mils) (pt 1000 mils 100 mils) (width 6 mils))
		(line (pt 1000 mils 100 mils) (pt 1000 mils -200 mils) (width 6 mils))
		(line (pt 1000 mils -200 mils) (pt 200 mils -200 mils) (width 6 mils))
		(line (pt 200 mils -200 mils) (pt 200 mils 100 mils) (width 6 mils))
		(attr "RefDes" "RefDes" (pt 1050 mils 300 mils) (justify Left) (isVisible True) (textStyleRef "Normal"))
		(attr "Type" "Type" (pt 1050 mils 200 mils) (justify Left) (isVisible True) (textStyleRef "Normal"))

	)
	(compDef "EVQ-P2P02M" (originalName "EVQ-P2P02M") (compHeader (numPins 4) (numParts 1) (refDesPrefix S)
		)
		(compPin "1" (pinName "NO_1") (partNum 1) (symPinNum 1) (gateEq 0) (pinEq 0) (pinType Unknown))
		(compPin "2" (pinName "COM_1") (partNum 1) (symPinNum 2) (gateEq 0) (pinEq 0) (pinType Unknown))
		(compPin "3" (pinName "NO_2") (partNum 1) (symPinNum 3) (gateEq 0) (pinEq 0) (pinType Unknown))
		(compPin "4" (pinName "COM_2") (partNum 1) (symPinNum 4) (gateEq 0) (pinEq 0) (pinType Unknown))
		(attachedSymbol (partNum 1) (altType Normal) (symbolName "EVQ-P2P02M"))
		(attachedPattern (patternNum 1) (patternName "EVQP2P02M")
			(numPads 4)
			(padPinMap
				(padNum 1) (compPinRef "1")
				(padNum 2) (compPinRef "2")
				(padNum 3) (compPinRef "3")
				(padNum 4) (compPinRef "4")
			)
		)
		(attr "Mouser Part Number" "667-EVQ-P2P02M")
		(attr "Mouser Price/Stock" "https://www.mouser.co.uk/ProductDetail/Panasonic/EVQ-P2P02M?qs=WwqriLBepZtc43ACiW6Arw%3D%3D")
		(attr "Manufacturer_Name" "Panasonic")
		(attr "Manufacturer_Part_Number" "EVQ-P2P02M")
		(attr "Description" "Tactile Switches 4.7x3.5mm SMD Light Touch Switch")
		(attr "<Hyperlink>" "https://componentsearchengine.com/Datasheets/1/EVQ-P2P02M.pdf")
		(attr "<Component Height>" "2.3")
		(attr "<STEP Filename>" "EVQ-P2P02M.stp")
		(attr "<STEP Offsets>" "X=0;Y=0;Z=0")
		(attr "<STEP Rotation>" "X=0;Y=0;Z=0")
	)

)
