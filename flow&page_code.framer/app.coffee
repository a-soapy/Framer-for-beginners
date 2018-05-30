
#Flow -------------------->
flow = new FlowComponent
flow.showNext(screenA)

A.onTap ->
	flow.showNext(screenB)

B.onTap ->
	flow.showNext(screenC)

backB.onTap ->
	flow.showPrevious()

backC.onTap ->
	flow.showPrevious()



# Page component ----------> 
page = new PageComponent
	y: 400
	midX: Screen.midX
	height: 190
	width: 200
	scrollVertical: false
	parent: screenA
	clip: false

page.addPage(page1)
page.addPage(page2)
page.addPage(page3)


page2.onTap ->
	flow.showNext(screenB)

page3.onTap ->
	flow.showNext(screenC)
