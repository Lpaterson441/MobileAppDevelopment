-----------------------------------------------------------------------------------------
--
-- The Listening Devices Act 1991
--
-----------------------------------------------------------------------------------------

local composer = require "composer"
local scene = composer.newScene()
local widget = require "widget"
-- load scene
local text
function scene:create( event )
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
text = "DESCRIPTION OF THE ACT\n\nThe Listening Devices Act 1991 (Tas), regulates the use of listening devices in Tasmania.\n\nDEFINITIONS\n\n➔ A listening device means any apparatus capable of being used to record or listen to aprivate conversation concurrently with its taking place.\n➔ For example these may include; handheld devices such as mobile phones, tablets, voicerecorders/dictation equipment and audio bug surveillance devices.\n\n➔ A conversation between two people at low volume in a busy park where there is no oneclose to them would be a private conversation as would be a conversation between twopeople taking place in a private home where they are alone would be a privateconversation.\n\nOVERVIEW OF THE ACT\n\n➔ Sections 3, 5 & 12 of the act outline:\n \t◆ When it is an offence to use a listening device\n\t◆ Defines the term ‘private conversation’\n\t◆ The maximum penalty for using a listening device illegally\n\nYOUR OVERALL RIGHTS\n\n➔ It is an offence for a person to use a listening device to record or listen to a privateconversation, whether or not that person is a party to the conversation.\n➔ This includes the act of hacking into personal devices and accessing cameras andmicrophones.\n\nAccess the act:\nhttps://www.legislation.tas.gov.au/view/whole/html/inforce/current/act-1991-021"

local textObject = display.newText(text, 0, 330, 300, 0, "Helvetica", 14)
textObject:setTextColor(0)
textObject.x = display.contentCenterX
scrollView:insert( textObject )
end

function scene:show( event )
	
	local phase = event.phase
	
	if "did" == phase then
	--composer.removeScene( "Legal_Rights_page" )
	
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

