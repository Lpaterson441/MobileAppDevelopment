-----------------------------------------------------------------------------------------
--
-- The Surveillance Devices Act 1999 (Vic)
--
-----------------------------------------------------------------------------------------

local composer = require "composer"
local scene = composer.newScene()
local widget = require "widget"

local backButton 

local function onSceneTouch(self,event) -- Function for back button to return to homescreen
	if event.phase == "ended" then
		composer.gotoScene("menu_screen","slideLeft",800)
		
		return true
	end
end


-- load scene
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
text = "DESCRIPTION OF THE ACT\n\nThe Surveillance Devices ACt 1999 (Vic) regulates the installation, use, maintenance andretrieval of surveillance devices in Victoria. I replaces the Listening Devices Act 1969 (Vic),which primarily regulated the use of listening devices.\n\nDEFINITIONS\n\n➔ A ‘listening device’ means any device capable of being used to overhear, record, monitoror listen to a conversation or words spoken to or by any person in conversation, but doesnot include a hearing aid or similar devices used by a person with a hearing impairment.\n➔ A ‘private conversation means a conversation carried on in circumstances that mayreasonably be taken to indicate that the parties to it desire it to be heard only bythemselves. It does not include a conversation\n\nOVERVIEW OF THE ACT\n\n➔ Sections 3 & 6 of the act outline:\n◆ It is an offence for a person to knowingly install, use or maintain a listeningdevice to overhear, record, monitor or listen to a private conversation to whichthe person is not a party without the permission of each party to the conversation.\n◆ A person can use a listening device to record a private conversation that he orshe is a party to.\n\nYOUR OVERALL RIGHTS\n\n➔ It is illegal to use, install or maintain a listening device in conjunction with a privateconversation that the person is not a party to, without the permission of both parties.\n➔ Both parties to a private conversation are allowed to use a listening device to record thatprivate conversation.\n\nAccess the act:\nhttp://www.legislation.vic.gov.au/Domino/Web_Notes/LDMS/LTObject_Store/LTObjSt4.nsf/DDE300B846EED9C7CA257616000A3571/C93F9022F0F6BB34CA2577610032F3F3/%24FILE/99-21a020.pdf"

local textObject = display.newText(text, 0, 390, 300, 0, "Helvetica", 14)
textObject:setTextColor(0)
textObject.x = display.contentCenterX
scrollView:insert( textObject )
sceneGroup:insert(scrollView)
	
	
	
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


