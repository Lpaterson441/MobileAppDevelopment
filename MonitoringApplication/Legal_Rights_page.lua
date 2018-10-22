-----------------------------------------------------------------------------------------
--
-- legal_right_page.lua
--
-----------------------------------------------------------------------------------------
local composer = require "composer"
local scene = composer.newScene()
local widget = require "widget"

local button1, button2, button3, button4, button5, button6, button7, button8, button9, button10


local function handleButtonEvent1( self, event )
 
if event.phase == "began" then
	composer.gotoScene( "The_Surveillance_Devices_Act_1999_Vic", "fade", 400  )
        --print( "Button1 was pressed and released" )
		return true
    end
end

local function handleButtonEvent2( self, event )
 
    if event.phase == "began" then
	composer.gotoScene( "The_Listening_Devices_Act_1991_Tas", "fade", 400  )
       -- print( "Button2 was pressed and released" )
		return true
    end
end

local function handleButtonEvent3( self, event )
 
    if event.phase == "began" then
	composer.gotoScene( "Surveillance_Devices_Act_2016_SA", "fade", 400  )
      --  print( "Button3 was pressed and released" )
		return true
    end
end

local function handleButtonEvent4( self, event )
 
    if event.phase == "began" then
	composer.gotoScene( "The_Invasion_of_Privacy_Act_1971_Qld", "fade", 400  )
     --   print( "Button4 was pressed and released" )
		return true
    end
end

local function handleButtonEvent5( self, event )
 
   if event.phase == "began"then
	composer.gotoScene( "The_Surveillance_Devices_Act_2007_NT", "fade", 400  )
      --  print( "Button5 was pressed and released" )
		return true
    end
end

local function handleButtonEvent6( self, event )
 
   if event.phase == "began"then
	composer.gotoScene( "The_Surveillance_Devices_Act_2007_NSW", "fade", 400  )
       -- print( "Button6 was pressed and released" )
		return true
    end
end

local function handleButtonEvent7( self, event )
 
   if event.phase == "began" then
	composer.gotoScene( "The_Listening_Devices_Act_1992_ACT", "fade", 400  )
      --  print( "Button7 was pressed and released" )
		return true
    end
end

local function handleButtonEvent8( self, event )
 
   if event.phase == "began" then
	composer.gotoScene( "The_Surveillance_Device_Act_1998_WA", "fade", 400  )
      --  print( "Button8 was pressed and released" )
		return true
    end
end

local function handleButtonEvent9( self, event )
 
   if event.phase == "began"then
	composer.gotoScene( "Telecommunications_Act_1979", "fade", 400  )
      -- print( "Button9 was pressed and released" )
		return true
    end
end

local function handleButtonEvent10( self, event )
 
    if event.phase == "ended" then
	composer.gotoScene( "Privacy_Act_1988", "fade", 1000  )
      --  print( "Button10 was pressed and released" )
		return true
    end
end
--------------------------------------------------------------------------
function scene:create( event )
 local sceneGroup = self.view
-- Function to handle button events
 

-- Create the widget
 button1 = widget.newButton(
    {
       left = 5,
		top = display.contentHeight,
		width = display.contentWidth-5,
        height = 40,
		defaultFile = "mustardButton.png",
        id = "button1",
        label = "The Surveillance Devices Act 1999 (Vic)",
        onEvent = handleButtonEvent1
    }
)


 button2 = widget.newButton(
    {
		left = 5,
		top = display.contentHeight - 50,
		width = display.contentWidth-5,
        height = 40,
		defaultFile = "mustardButton.png",
        id = "button2",
        label = "The Listening Devices Act 1991 (Tas)",
        onEvent = handleButtonEvent2
    }
)
	


 button3 = widget.newButton(
    {
        left = 5,
		top = display.contentHeight - 100,
		width = display.contentWidth-5,
        height = 40,
		defaultFile = "mustardButton.png",
        id = "button3",
		 label = "Surveillance Devices Act 2016 (SA)",
        onEvent = handleButtonEvent3
    }
	
)
	


 button4 = widget.newButton(
    {
       left = 5,
		top = display.contentHeight - 150,
		width = display.contentWidth-5,
		height = 40,
		defaultFile = "mustardButton.png",
        id = "button4",
        label = "The Invasion of Privacy Act 1971 (Qld)",
        onEvent = handleButtonEvent4
    }
)
	


 button5 = widget.newButton(
    {
        left = 5,
		top = display.contentHeight - 200,
		width = display.contentWidth-5,
		height = 40,
		defaultFile = "mustardButton.png",
        id = "button5",
        label = "The Surveillance Devices Act 2007 (NT)",
        onEvent = handleButtonEvent5
    }
)
	


 button6 = widget.newButton(
    {
        left = 5,
		top = display.contentHeight - 250,
		width = display.contentWidth-5,
		height = 40,
		defaultFile = "mustardButton.png",
        id = "button6",
		label = "The Surveillance Devices Act 2007 (NSW)",
        onEvent = handleButtonEvent6
    }
)


 button7 = widget.newButton(
    {
        left = 5,
		top = display.contentHeight - 300,
		width = display.contentWidth-5,
		height = 40,
		defaultFile = "mustardButton.png",
        id = "button7",
        label = "The Listening Devices Act 1992 (ACT)",
        onEvent = handleButtonEvent7
    }
)
	


 button8 = widget.newButton(
    {
        left = 5,
		top = display.contentHeight - 350,
		width = display.contentWidth-5,
		height = 40,
		defaultFile = "mustardButton.png",
        id = "button8",
        label = "The Surveillance Device Act 1998 (WA)",
        onEvent = handleButtonEvent8
    }
)
	


 button9 = widget.newButton(
    {
       
		top = display.contentHeight - 400,
		width = display.contentWidth-5,
		height = 40,
		defaultFile = "mustardButton.png",
        id = "button9",
        label = "Telecommunications (interception and access) act 1979",
        onEvent = handleButtonEvent9
    }
)
	


 button10 = widget.newButton(
    {
        left = 5,
		top = display.contentHeight - 450,
		width = display.contentWidth-5,
		height = 40,
        id = "button10",
		defaultFile = "mustardButton.png",
        label = "Privacy Act 1988(Cth)",
        onEvent = handleButtonEvent10
    }
)

 button9.x = display.contentCenterX + 2
 button6.x = display.contentCenterX + 2
 button3.x = display.contentCenterX + 2
	button1._view._label.size = 10
	button2._view._label.size = 10
	button3._view._label.size = 10
	button4._view._label.size = 10
	button5._view._label.size = 10
	button6._view._label.size = 10
	button7._view._label.size = 10
	button8._view._label.size = 10
	button9._view._label.size = 10
	button10._view._label.size = 10
	sceneGroup:insert( button1 )
	sceneGroup:insert( button2 )
	sceneGroup:insert( button3 )
	sceneGroup:insert( button4 )
	sceneGroup:insert( button5 )
	sceneGroup:insert( button6 )
	sceneGroup:insert( button7 )
	sceneGroup:insert( button8 )
	sceneGroup:insert( button9 )
	sceneGroup:insert( button10 )
button1.touch = handleButtonEvent1
button2.touch = handleButtonEvent2
button3.touch = handleButtonEvent3
button4.touch = handleButtonEvent4
button5.touch = handleButtonEvent5
button6.touch = handleButtonEvent6
button7.touch = handleButtonEvent7
button8.touch = handleButtonEvent8
button9.touch = handleButtonEvent9
button10.touch = handleButtonEvent10
end


function scene:show( event )
	
	local phase = event.phase
	
	if "did" == phase then
	composer.removeScene( "menu_screen" )
	button1:addEventListener( "touch", button1 )
	button2:addEventListener( "touch", button2 )
	button3:addEventListener( "touch", button3 )
	button4:addEventListener( "touch", button4 )
	button5:addEventListener( "touch", button5 )
	button6:addEventListener( "touch", button6 )
	button7:addEventListener( "touch", button7 )
	button8:addEventListener( "touch", button8 )
	button9:addEventListener( "touch", button9 )
	button10:addEventListener( "touch", button10 )
	
	end
	
end

function scene:hide( event )
	
	local phase = event.phase
	
	if "will" == phase then
	button1:removeEventListener( "touch", button1 )
	button2:removeEventListener( "touch", button2 )
	button3:removeEventListener( "touch", button3 )
	button4:removeEventListener( "touch", button4 )
	button5:removeEventListener( "touch", button5 )
	button6:removeEventListener( "touch", button6 )
	button7:removeEventListener( "touch", button7 )
	button8:removeEventListener( "touch", button8 )
	button9:removeEventListener( "touch", button9 )
	button10:removeEventListener( "touch", button10 )
		
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
