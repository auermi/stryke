# Project Info
# This info is presented in a widget when you share.
# http://framerjs.com/docs/#info.info

Framer.Info =
	title: ""
	author: "Michael Andrew Auer"
	twitter: ""
	description: ""


# Import file "stryke-ios (Scores)" (sizes and positions are scaled 1:2)
sketch = Framer.Importer.load("imported/stryke-ios (Scores)@2x")

match1 = sketch.Match_1

scores = sketch.Scores
details = sketch.Scores_Details

detailsBack = sketch.Details_Back

animDelay = 0.25


match1.onClick ->
	details.animate
		x: 0
		options: 
			curve: "spring"
			delay: animDelay
			
detailsBack.onClick ->
	details.animate
		y: 0
		x: 800
		options: 
			curve: "spring"
			delay: animDelay