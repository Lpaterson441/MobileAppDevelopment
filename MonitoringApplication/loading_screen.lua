-----------------------------------------------------------------------------------------
--
-- loading_scene.lua
--
-----------------------------------------------------------------------------------------
local composer = require( "composer" )
local scene = composer.newScene()
composer.gotoScene( "menu_screen", "fade", 1000 )


-- Code that checks if login details have already been entered by searching for submission text file
local path = system.pathForFile("SubmissionFile.txt",system.DocumentsDirectory)

local file, errorString = io.open(path,"r")

if not file then
	composer.gotoScene("login_screen","fade",1000)
	
else
	composer.gotoScene("menu_screen","fade",1000)
	io.close(file)
end


function scene:create( event )
	
	
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
