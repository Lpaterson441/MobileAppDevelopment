-----------------------------------------------------------------------------------------
--
-- menu_scene.lua
--
-----------------------------------------------------------------------------------------
local composer = require( "composer" )
local widget = require( "widget" )
local scene = composer.newScene()
local compButton, legalButton, securityButton	
	
-- local function onSceneTouch( self, event )
-- if event.phase == "began" then
		
		-- composer.gotoScene( "complaints_page", "slideLeft", 800  )
		
		-- return true
	-- end
-- end
	
	
	function scene:create( event )
	local sceneGroup = self.view

	compButton = widget.newButton(
{
		defaultFile = "complaints.png",
		overFile = "blacktouch.jpg",
        onEvent = handleCompButtonEvent
})

	legalButton = widget.newButton(
{
		defaultFile = "legalrights.png",
		overFile = "blacktouch.jpg",
        onEvent = handleLegalButtonEvent
})

	securityButton = widget.newButton(
{
		defaultFile = "securitymonitoring.png",
		overFile = "blacktouch.jpg",
        onEvent = handleSecurityButtonEvent
})
	
	compButton.x = display.contentCenterX *1.5
	compButton.y = display.contentCenterY*1.7
	compButton:scale(0.07,0.07)

	sceneGroup:insert( compButton )
	
	legalButton.x = display.contentCenterX
	legalButton.y = display.contentCenterY
	legalButton:scale(0.2,0.2)
	sceneGroup:insert( legalButton )
	
	securityButton.x = display.contentCenterX/2
	securityButton.y = display.contentCenterY/2.5
	securityButton:scale(0.16,0.16)
	sceneGroup:insert( securityButton )
	
	
	
end

function scene:show( event )
	
	local phase = event.phase
	
	if "did" == phase then
	
	CompTimer = timer.performWithDelay( 1000, compImage, 1 )
	LegalTimer = timer.performWithDelay( 5000, legalImage, 1 )
	timer.performWithDelay( 10000, securityImage, 1 )
	
	CompTimer:addEventListener( "touch", CompTimer )
	LegalTimer:addEventListener( "touch", CompTimer )
	securityImage:addEventListener( "touch", CompTimer )
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
