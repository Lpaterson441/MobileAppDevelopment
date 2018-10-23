-----------------------------------------------------------------------------------------
--
-- Telecommunications_Act_1979
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
text = "DESCRIPTION OF THE ACT\n\n● This act restricts access of telecommunications and the access of storedcommunications\n\nDEFINITIONS\n\n● Telecommunication devices refer to any device used to access a telecommunicationnetwork (e.g. phones, laptops, ipads)\n● Telecommunication networks are networks which allow communication between devices(e.g. the internet, phone networks)\n● Enforcement agencies may refer to: federal police, state police, customs and bordercontrol, crime commissions, anti-corruption bodies and the crime trac agency.\n\nOVERVIEW OF THE ACT\n\n● The Australian Security and Intelligence Organisation (ASIO) and enforcement agenciesare authorised to access telecommunication data.\n● All accessing of data outside of these agencies is illegal\n\nYOUR OVERALL RIGHTS\n\n● Your telecommunication device may not be accessed by most people, except for by agovernment agency acting in the interest of law enforcement.\nAccess the act:\n https://www.legislation.gov.au/Details/C2017C00192"

local textObject = display.newText(text, 0, 270, 300, 0, "Helvetica", 14)
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

