-----------------------------------------------------------------------------------------
--
-- invasion of privacy act QLD
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
text = "DESCRIPTION OF THE ACT\n\nThis act deals with the use of listening devices along with other matters.\n\nDEFINITIONS\n\n● Private Conversation- a conversation between two people who indicate that they do notwant to be overheard, but do not include conversations where it is reasonable to expectthat their words may be overheard (e.g. a public place)\n\nOVERVIEW OF THE ACT\n\n● Someone may not use a listening device to overhear, record, monitor or listen to aprivate conversation\n● This does not apply if the person is included in the conversation, unintentionally hearsis, or if the person has a warrant or is employed in security of the commonwealth\n\nYOUR OVERALL RIGHTS\n\n● If somebody who is not a police officer (or similarly employed) records a privateconversation you have, they are committing a crime.\n● Someone may not record your conversations through your phone without your consent\n\nAccess the act:\n https://www.legislation.qld.gov.au/view/pdf/2017-06-05/act-1971-050"

local textObject = display.newText(text, 0, 240, 300, 0, "Helvetica", 14)
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


