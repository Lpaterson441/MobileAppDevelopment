-----------------------------------------------------------------------------------------
--
--listening devices act 1992(ACT) 1988
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
text = "DESCRIPTION OF THE ACT: \n \nAn Act to regulate the use of listening devices for the purpose of listening to orrecording private conversations in the Australian Capital Territory. \n \nDEFINITION OF LISTENING DEVICE: \n \n· An electronic device used for secretly listening to or recording someone’s conversations \n· e.g. handheld devices such as mobile phones and tablets, which have inbuilt audiorecording capabilities; voice recorders/dictation equipment, audio bug surveillancedevices \n \nOVERVIEW OF THE ACT: \n \n· Part 2, section 4 of the Act outlines when it is an offence to use a listening device \n- It states that it is an offence for a person who is not a party to a private conversation tointentionally use a listening device to listen or record that private conversation \n- However, it is also an offence for a person to do so if they are a party to a privateconversation \n- So, listening devices cannot be used to listen to or record private conversations but can beused to listen to or record public conversations \n \nYOUR OVERALL RIGHTS: \n \n· It is illegal for someone to record or listen to your private conversations using a listeningdevice \n- This includes someone hacking into your own personal mobile phone to record or listen toyour private conversations \n \nAccess the act: \nhttps://www.legislation.act.gov.au/View/a/1992-57/current/PDF/1992-57.PDF"

local textObject = display.newText(text, 0, 300, 300, 0, "Helvetica", 14)
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
