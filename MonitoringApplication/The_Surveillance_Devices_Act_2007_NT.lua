-----------------------------------------------------------------------------------------
--
-- surveillance device act 2007 NT
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
text = "DESCRIPTION:\n\nAn Act to regulate the installation, use, maintenance and retrieval of surveillancedevices in the Northern Territory.\n\nDEFINITION OF LISTENING DEVICES:\n\n· An electronic device used for secretly listening to or recording someone’s conversations\n· e.g. handheld devices such as mobile phones and tablets, which have inbuilt audio\nrecording capabilities; voice recorders/dictation equipment, audio bug surveillancedevices\nDEFINITION OF OPTICAL SURVEILLANCE DEVICE:\n· Any device capable of being used to record visually or observe an activity\n· e.g. handheld devices such as mobile phones and tablets with a camera, cameras,binoculars, ‘spy cameras’\n\nOVERVIEW OF THE ACT:\n\n· Part 2 of the Act outlines the regulation of installation, use and maintenance ofsurveillance devices\n· Section 11 and 12 of Part 2 includes information on the installation, use and maintenanceof listening devices and of optical surveillance devices\n- The Act states that it is an offence for a person who is not a party to a private conversation tointentionally use a listening device to listen or record that private conversation\n- However, it is also an offence for a person to do so if they are a party to a privateconversation\n- So, listening devices cannot be used to listen to or record private conversations but can beused to listen to or record public conversations\n- The Act also states that it is an offence to intentionally record visually or observe a personand or the carrying on by a person of an activity by knowingly installing, using or maintainingan optical surveillance device on or within a premises/ a vehicle or on any other object\n- So, it is an offence to use an optical surveillance device if it involves entering thepremises/vehicle without that person’s consent and if it involves interfering with a person’svehicle or object (e.g. phone or laptop) without their consent\n\nYOUR OVERALL RIGHTS:\n\n· It is illegal for someone to record or listen to your private conversations using a listeningdevice\n- This includes someone hacking into your own personal mobile phone to record or listen toyour private conversations\n· It is illegal for someone to visually record or observe you using an optical surveillancedevice\n- This includes someone hacking into the camera or webcam of your laptop or mobile phone tovisually record or observe you\n\nAccess the act:\nhttps://legislation.nt.gov.au/en/Legislation/SURVEILLANCE-DEVICES-ACT"


local textObject = display.newText(text, 0, 540, 300, 0, "Helvetica", 14)
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
