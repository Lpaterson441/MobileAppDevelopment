-----------------------------------------------------------------------------------------
--
-- Surveillance Devices Act 2016 (SA)
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
text = "DESCRIPTION OF THE ACT\n\n● This act talks about your rights in relation to being recorded or tracked without your consent.\n\nDEFINITIONS\n\n● Data surveillance device is a device which can access, track, monitor or recordinformation from a computer.\n● A listening device is something which is capable of being used to listen to or record aconversation.\n● Private Conversation or activity\n- a conversation or activity by people who indicate thatthey do not want to be overheard or seen, but do not include conversations or actionswhere it is reasonable to expect that their words may be overheard or actions seen (e.g.a public place).\n\nOVERVIEW OF THE ACT\n\n● Listening devices may not be installed unless consent is given or if it is done by a lawenforcement agency\n● Cameras may not be installed to record or observe any private activity, unless consent isobtained or if it is done by a law enforcement agency\n● Listening devices or observational devices may be used if it is the public interest.\n● The above statements apply only if the action or conversation is private\n● Tracking devices may not be used unless consent is given or if it is done by a law\nenforcement agency.\n● Data surveillance devices may not be used unless consent is given or if it is done by alaw enforcement agency\n\nYOUR OVERALL RIGHTS\n\n● You may not be recorded (visually or optically) in a private setting unless you giveconsent (this does not apply to law enforcement agencies).\n● You cannot be tracked, or have a data surveillance device accessing your device unlessconsent is given (again this does not apply to law enforcement agencies)\n\nAccess the act:\nhttps://www.legislation.sa.gov.au/LZ/C/A/SURVEILLANCE%20DEVICES%20ACT%202016/CURRENT/2016.2.AUTH.PDF"

local textObject = display.newText(text, 0, 400, 300, 0, "Helvetica", 14)
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
