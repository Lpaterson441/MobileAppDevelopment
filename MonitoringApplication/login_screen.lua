local composer = require("composer")
local scene = composer.newScene()
local widget = require("widget")
local submitButton
local nameField, phoneField, emailField




words = display.newText("Welcome to the security monitoring app",250,0, "Arial", 17)

words.x = display.contentCenterX







function textListener( event ) -- Code to create text listener

	if (event.phase == "began") then
	-- allows user to edit fields, activates when field is selected
		

	elseif (event.phase == "ended" or event.phase == "submitted") then
		print (event.target.text)
	
	elseif (event.phase == "editing") then
		print( event.newCharacters)
		print( event.oldText)
		print(event.startPosition)
		print(event.text)
		print("TESTING") -- Tests if editing phase is running correctly
	
	
	end
end 



--userName code
userName = display.newText("Name", 160,120,"Arial",14)
nameField =  native.newTextField(160,150,200,30)
nameField.align = "left" -- aligns text not box itself


--Phone number code
phoneNum = display.newText("Phone Number",160, 190,"Arial",14)
phoneField = native.newTextField(160,220,200,30)
phoneField.align = "left"
phoneField.inputType = "number" -- Ensures numeric input (corona gives popup message if anything else is entered)

--Email code
email = display.newText("Email", 160, 260, "Arial",14)
emailField = native.newTextField(160,290, 200,30)
emailField.align = "left"

-- Event listener code, gets user input
nameField:addEventListener("userInput", textListener)
phoneField:addEventListener("userInput",textListener)
emailField:addEventListener("userInput", textListener)

--Variables that store user input for saving and later use
namePut = nameField.text
phonePut = phoneField.text
emailPut = emailField.text


return scene


