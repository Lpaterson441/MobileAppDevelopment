-----------------------------------------------------------------------------------------
--
-- complaint_page.lua
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


local text
function scene:create(event)
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
	listener = scrollListener
}

text = "Information for the Office of the Australian Information Commissioner\n\n 1. First complain directly to the agency or organisation (The organisation or agency that you believe intruded your privacy)\n2. If they do not respond within 30 days, or you are dissatisfied with the response you can then bring the complain to the oaic\n3. You can access the privacy complain form on the oaic.gov.au website, if the online form does not work you can download it and complete it in writing\nAddress GPO Box 5218, Sydney NSW 2001\nEmail: enquiries@oaic.gov.au\nYou can also call the enquiries line on 1300 363 992\nYou must include your contact details and any other relevant information\nRelevant information includes the name of the angency and organisation involved"

local textObject = display.newText(text,0,150,300,0,"Helvetica",14)
textObject:setTextColor(0)
textObject.x = display.contentCenterX
scrollView:insert(textObject)
sceneGroup:insert(scrollView)

	
	
end


local function scrollListener(event)
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
	
	backButton:addEventListener("touch",backButton)
	end
	
end

function scene:hide( event )
	
	local phase = event.phase
	
	if "will" == phase then
		backButton:removeEventListener("touch",backButton)
	
	end
	
end

function scene:destroy( event )
composer.removeScene( "complaints_page" )


	
end

---------------------------------------------------------------------------------

-- Listener setup
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )


---------------------------------------------------------------------------------

return scene
