-----------------------------------------------------------------------------------------
--
--Privacy act 1988
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
text = "DESCRIPTION OF THE ACT:\n● This act applies to APP entities, which are agencies (federal government) ororganisations. This act is in place in order to regulate what information can be collected,and how it can be stored. \n \n DEFINITIONS \n \n● APP entities: \n \t ○ Agencies \n \t■ A minister of government (e.g. Michelle Roberts, minister for police) \n■ A government department (e.g. department of finance) \n■ A commonwealth appointed body or tribunal \n■ A body established by the governor-general or by a minister \n■ A federal court \n■ The Australian Federal Police \n■ A Norfolk Island Agency \n■ Some other agencies may be applicable under this act \n \n○ Organisations \n \n■ May refer to any companies, whether an individual, body corporate,partnership, unincorporated association or a trust. \n■ Does not refer to small businesses, who have an annual income of lessthan $3mil. \n \n OVERVIEW OF THE ACT \n \n○ You may remain anonymous or use a fake name when dealing with an APPentity \n○ Personal, sensitive information can be collected, but only when the individual hasgiven consent (unless an exception applies). \n○ An APP entity must inform you why the information is collected, who theinformation is accessed by and how you can see or correct your information. \n○ An APP entity cannot use your information for reasons outside of the originalpurpose of the collection \n○ An APP entity cannot use your information for marketing unless consented to or ifit is reasonably expected \n○ APP entities cannot use or disclose any identifying information that has beenassigned by a government agency (e.g. drivers license number, medicarenumber, passport number & tax file number). \n○ APP entities must provide you with access to your personal information ifrequested (unless an exception applies). \n \nYOUR OVERALL RIGHTS \n \n● In most cases you are not obliged to give information to APP entities, but if you do giveinformation, you are entitled to know what the information is for, and can request tochange or remove it.  \n \nAccess the act: https://www.legislation.gov.au/Details/C2014C00076"

local textObject = display.newText(text, 0, 520, 300, 0, "Helvetica", 14)
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


