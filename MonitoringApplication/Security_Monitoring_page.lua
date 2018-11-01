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

	
	
	
	
end

function scene:show( event )
	
	local phase = event.phase
	
	if "did" == phase then
	
	composer.removeScene( "menu_screen" )
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
