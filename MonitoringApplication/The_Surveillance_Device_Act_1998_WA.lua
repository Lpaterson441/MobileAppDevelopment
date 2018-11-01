-----------------------------------------------------------------------------------------
--
-- surveillance act 1988 WA
--
-----------------------------------------------------------------------------------------

local composer = require "composer"
local scene = composer.newScene()
local widget = require "widget"
local backButton 


local function onSceneTouch(self,event) -- Function for back button to return to homescreen
	if event.phase == "ended" then
		composer.gotoScene("Legal_Rights_page","slideLeft",800)
		
		return true
	end
end

local text
function scene:create( event )
	local sceneGroup = self.view
	
	backButton = widget.newButton(
	{
		top = display.contentHeight,
		id = "backButton",
		label = "back"
		}
	)
	
	backButton.x = display.contentCenterX 
	backButton.y = -10
	sceneGroup:insert(backButton)
	
	backButton.touch = onSceneTouch
	
	local scrollView = widget.newScrollView
{
	left = 0,
	top = 0,
	width = display.contentWidth,
	height = display.contentHeight+100,
	topPadding = 50,
	bottomPadding = 50,
	horizontalScrollDisabled = true,
	verticalScrollDisabled = false,
	listener = scrollListener,
}
text = "DESCRIPTION OF THE ACT\n\n● This act talks about your rights in relation to being recorded or tracked without yourconsent\n\nDEFINITIONS\n\n○ Private activity refers to activities where it is obvious that the individuals do notwant others to observe them, which is not in a public area. If it is reasonable toexpect that the activity could be observed naturally, it is not private.\n○ Private conversations are similar, if it is obvious that the individuals do not wantothers to listen to them, and it is not a public area, and it is not reasonable toexpect that the conversations could be heard naturally it is a privateconversation.\n\nOVERVIEW OF THE ACT\n\n○ These laws do not apply to police officers, or people working for the police. Theyalso do not apply if consent is given, or if the installation of a surveillance deviceis for the benefit of the person (security devices)\n○ Listening devices may not be installed to listen to private conversations when theindividual is not aware the conversation is being recorded.\n○ Cameras may not be installed to record or observe any private activity, unlessconsent is obtained\n○ The same applies to tracking devices.\n○ Surveillance devices may be used when a court has decided there is suspicion ofa crime\n○ If private information has been gained as a result of an illegal surveillance, theyare not permitted to publish or pass on this information.\n○ Listening devices and cameras may be used if the matter is understood to be amatter of urgent public interest, but must report to a judge quickly as to why adevice was used. Further from this, recordings may be published if a judgeagrees it is in the best for public interest.\n\nYOUR OVERALL RIGHTS\n\n● Private conversations or activity may not be recorded unless consent is given, andtracking devices cannot be placed unless it is done by a police officer.\n\nAccess the act:\nhttps://www.legislation.wa.gov.au/legislation/prod/filestore.nsf/FileURL/mrdoc_27928.pdf/$FILE/Surveillance%20Devices%20Act%201998%20-%20%5B02-f0-02%5D.pdf?OpenElement"


local textObject = display.newText(text, 0, 440, 300, 0, "Helvetica", 14)
textObject:setTextColor(0)
textObject.x = display.contentCenterX
scrollView:insert( textObject )
sceneGroup:insert(scrollView)

end
	
	
local function scrollListener( event )
	local phase = event.phase
	local direction = event.direction

	if event.limitReached then
		if "up" == direction then
			print("reached top limit")
		elseif "down" == direction then
			print("reached bottom limit")
		end
	end
	return true
end





function scene:show( event )
	
	local phase = event.phase
	
	if "did" == phase then
	
	end
	
end

function scene:hide( event )
	
	local phase = event.phase
	
	if "will" == phase then
	
		
	
	end
	
end

function scene:destroy( event )
	
end

---------------------------------------------------------------------------------

-- Listener setup
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )

---------------------------------------------------------------------------------

return scene


