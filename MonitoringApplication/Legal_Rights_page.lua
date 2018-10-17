-----------------------------------------------------------------------------------------
--
-- complaint_page.lua
--
-----------------------------------------------------------------------------------------
local composer = require "composer"
local scene = composer.newScene()
local widget = require "widget"

function scene:create( event )
	
	
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
