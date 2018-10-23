-- login_screen

local composer = require("composer")
local scene = composer.newScene()
local widget = require("widget")
local submitButton, nameField, phoneField, emailField, words

local function onSceneTouch(self,event)
	if event.phase == "began" then
		composer.gotoScene("menu_screen", "slideLeft",800)
		
		return true
	end
end

function scene:create(event)
	sceneGroup = self.view
	
	words = display.newText("Welcome to the security monitoring app",250,0, "Arial", 17)
	
	
	
	userName = display.newText("Name", 160,120,"Arial",14)
	nameField =  native.newTextField(160,150,200,30)
	
	
	phoneNum = display.newText("Phone Number",160, 190,"Arial",14)
	phoneField = native.newTextField(160,220,200,30)
	
	email = display.newText("Email", 160, 260, "Arial",14)
	emailField = native.newTextField(160,290, 200,30)
	
	submitButton = widget.newButton(
	{
		left = 100,
		top = 200,
		id = "submitButton",
		label = "Submit",
		}
	)

	
	words.x = display.contentCenterX
	sceneGroup:insert(words)
	
	nameField.align = "left" -- aligns text not box itself
	sceneGroup:insert(nameField)
	sceneGroup:insert(userName)
	
	phoneField.align = "left"
	phoneField.inputType = "number" -- Ensures numeric input (corona gives popup message if anything else is entered)
	sceneGroup:insert(phoneField)
	sceneGroup:insert(phoneNum)
	
	
	emailField.align = "left"
	sceneGroup:insert(emailField)
	sceneGroup:insert(email)
	
	submitButton.x = display.contentCenterX
	submitButton.y = display.contentCenterY*1.5
	sceneGroup:insert(submitButton)
	
	
	
	--listeners for input
	nameField:addEventListener("userInput", textListener)
	phoneField:addEventListener("userInput",textListener)
	emailField:addEventListener("userInput", textListener)
	submitButton.touch = onSceneTouch
	
	
end

function scene:show(event)

	local phase = event.phase
	if "did" == phase then
	
		submitButton:addEventListener("touch", submitButton)
	end
end

function scene:hide(event)
	local phase = event.phase
	
	if "will" == phase then
		submitButton:removeEventListener("touch", submitButton)
	
	end
end

function scene:destroy(event)
end


function textListener( event ) -- Code to create text listener

	if (event.phase == "began") then
	-- allows user to edit fields, activates when field is selected
		

	elseif (event.phase == "ended" or event.phase == "submitted") then
		print (event.target.text)
		local details = {}
		
		-- variable that hold user input in order to save to file
		var = event.target.text
		table.insert(details,var)
		
		-- loops for length of table and adds table contents to file
		for v in pairs(details) do
			local path = system.pathForFile("SubmissionFile.txt",system.DocumentsDirectory)
			file = io.open(path,"a")
			file:write(details[v]..",")
			io.close(file)
			file = nil
		end	
		
		
	
	elseif (event.phase == "editing") then
		print( event.newCharacters)
		print( event.oldText)
		print( event.startPosition)
		print( event.text)
		
	end
	
end 




--Listener code
scene:addEventListener("create", scene)
scene:addEventListener("show",scene)
scene:addEventListener("hide",scene)
scene:addEventListener("destroy",scene)




return scene


