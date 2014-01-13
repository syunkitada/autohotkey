;===============================================================================
;
;		MouseGestureL.ahk - Language Definition Module
;			<< English >>
;														Created by Pyonkichi
;===============================================================================
;-------------------------------------------------------------------------------
; Common
;-------------------------------------------------------------------------------
; Help File
MC_HelpFile = English\MouseGestureL-Help.chm

; Buttons
MC_LngButton001 = &Close
MC_LngButton002 = C&opy to Clipboard

; Messages
MC_LngMessage001 = Do you want to apply examples of the gesture?
MC_LngMessage002 = Help document is not found.
MC_LngMessage003 = You can download the latest help documents from here.
MC_LngMessage004 =
(LTrim
				There might be problem in the settings.
				Find cause of the problem from the following messages,
				and correct the settings with configuration dialog.
				If you cannot do it, restore the configuration file from your backup.
				
				------------------------------------------------------------`n`n
)

if (MG_IsEdit)
{
	Goto SetEdit
}
;-------------------------------------------------------------------------------
; for Application
;-------------------------------------------------------------------------------
; Menus
MG_LngMenu001 = &Enable Gesture
MG_LngMenu002 = Show &Gesture Hints
MG_LngMenu003 = Gesture &Configuration...
MG_LngMenu004 = Edit &User Extension Script
MG_LngMenu005 = &Language...
MG_LngMenu006 = MouseGestureL &Help
MG_LngMenu007 = &About MouseGestureL
MG_LngMenu008 = Gesture &Reload
MG_LngMenu009 = E&xit
MG_LngMenu010 = &Mouse Gesture
MG_LngMenu011 = &Plugins
MG_LngMenu012 = &Open Plugins Folder

; Tooltips
MG_LngTooltip001 = Gesture Enabled
MG_LngTooltip002 = Gesture Disabled
MG_LngTooltip003 = Hints ON
MG_LngTooltip004 = Hints OFF

; Other Text
MG_LngOthers001 =
(LTrim
				;===============================================================================
				;
				;		User Extension Script for MouseGestureL.ahk
				;
				;	- You can define the Custom Conditions and Subroutines that runs on startup.
				;	- You can also change the Non GUI settings by modification of this script.
				;	- MouseGestureL.ahk must be reloaded when you've modified this script.
				;
				;===============================================================================

)
MG_LngOthers002 = Initialization Process
MG_LngOthers003 = Subroutine Defination
MG_LngOthers004 = Example for option settings of Hint Tips
MG_LngOthers005 = This text is shown.	`; Specify the string to show when gesture matches to defined status. (Replace "RB_U" to any other gesture status string.)

Goto EndLanguage

;-------------------------------------------------------------------------------
; for MG_Edit
;-------------------------------------------------------------------------------
SetEdit:

; Gesture Triggers
Button_LB	= Left-Button Down
Button_RB	= Right-Button Down
Button_MB	= Middle-Button Down
Button_X1B	= Button-4 Down
Button_X2B	= Button-5 Down
Button_X3B	= Button-6 Down
Button_X4B	= Button-7 Down
Button_X5B	= Button-8 Down
Button_X6B	= Button-9 Down
Button_X7B	= Button-10 Down
Button_X8B	= Button-11 Down
Button_X9B	= Button-12 Down
Button_WU	= Wheel-Up
Button_WD	= Wheel-Down
Button_LT	= Wheel-Tilting Left
Button_RT	= Wheel-Tilting Right
Button_ET	= Touch Screen Top (All)
Button_ETA	= Touch Screen Top (Left Half)
Button_ETB	= Touch Screen Top (Right Half)
Button_ET1	= Touch Screen Top (Left 1/3)
Button_ET2	= Touch Screen Top (Center 1/3)
Button_ET3	= Touch Screen Top (Right 1/3)
Button_EB	= Touch Screen Bottom (All)
Button_EBA	= Touch Screen Bottom (Left Half)
Button_EBB	= Touch Screen Bottom (Right Half)
Button_EB1	= Touch Screen Bottom (Left 1/3)
Button_EB2	= Touch Screen Bottom (Center 1/3)
Button_EB3	= Touch Screen Bottom (Right 1/3)
Button_EL	= Touch Screen Left (All)
Button_ELA	= Touch Screen Left (Upper Half)
Button_ELB	= Touch Screen Left (Lower Half)
Button_EL1	= Touch Screen Left (Upper 1/3)
Button_EL2	= Touch Screen Left (Middle 1/3)
Button_EL3	= Touch Screen Left (Lower 1/3)
Button_ER	= Touch Screen Right (All)
Button_ERA	= Touch Screen Right (Upper Half)
Button_ERB	= Touch Screen Right (Lower Half)
Button_ER1	= Touch Screen Right (Upper 1/3)
Button_ER2	= Touch Screen Right (Middle 1/3)
Button_ER3	= Touch Screen Right (Lower 1/3)
Button_CRT	= Touch Screen Right-Top Corner
Button_CLT	= Touch Screen Left-Top Corner
Button_CRB	= Touch Screen Right-Bottom Corner
Button_CLB	= Touch Screen Left-Bottom Corner

; Action Categories
ActionType001 = All
ActionType002 = Input Device Emulation
ActionType003 = Scrolling
ActionType004 = Window Control
ActionType005 = Process Control
ActionType006 = Application Control
ActionType007 = Sound Control
ActionType008 = Script Control
ActionType009 = Hints and Trail
ActionType010 = Others

; Action Templates
ActionName001 = Generate Key Stroke
ActionName002 = Generate Mouse Click
ActionName003 = Generate Wheel Rotation
ActionName004 = Move Cursor
ActionName005 = Scroll
ActionName006 = Drag-Scroll
ActionName007 = Activate Window
ActionName008 = Minimize Window
ActionName009 = Maximize Window
ActionName010 = Restore Window
ActionName011 = Close Window
ActionName012 = Send Window to Bottom
ActionName013 = Turn on Window Topmost
ActionName014 = Turn off Window Topmost
ActionName015 = Toggle Window Topmost
ActionName016 = Move and Resize Window
ActionName017 = Change Window Transparency
ActionName018 = Turn off Window Transparency
ActionName019 = Activate Previous Active Window
ActionName020 = Run Program
ActionName021 = Kill Process
ActionName022 = Execute Toolbar Button Command
ActionName023 = Execute Menubar Commond
ActionName024 = Sound Volume
ActionName025 = Mute Sound
ActionName026 = Play a Sound
ActionName027 = Abort Current Gesture
ActionName028 = Wait for Next Gesture
ActionName029 = Wait
ActionName030 = Execute After Waiting
ActionName031 = Execute After Button Up
ActionName032 = Repeat Until Button Up
ActionName033 = Execute After Recognition Process
ActionName034 = Show Text as Tooltip Hints
ActionName035 = Stop Gesture Hints
ActionName036 = Stop Gesture Trail
ActionName037 = Copy Text to Clipboard
ActionName038 = Post Message
ActionName039 = Send Message

; Action Comments
ActionComment001 = Action to be run immediately after the gesture.
ActionComment002 = Action to be run when the waiting time has elapsed.
ActionComment003 = Action to be repeated while a button is pressed.
ActionComment004 = Action to be run when a button has been released.
ActionComment005 = Action to be run when a button has been released.
ActionComment006 = Action to be run when a recognition has been finished.

; Caption of Dialog Box
ME_LngCapt001 = MouseGestureL
ME_LngCapt002 = MouseGestureL Configuration
ME_LngCapt003 = Confirm Deletion
ME_LngCapt004 = Create New Button
ME_LngCapt005 = Specify a Script Editor
ME_LngCapt006 = Individual Arrow Colors
ME_LngCapt007 = Rectangular Region
ME_LngCapt011 = Add Action
ME_LngCapt012 = Input Keystroke
ME_LngCapt013 = Edit Keystroke Directly
ME_LngCapt014 = Establish Mouse Click
ME_LngCapt015 = Establish Wheel Rotation
ME_LngCapt016 = Establish Cursor Movement
ME_LngCapt017 = Establish Scroll
ME_LngCapt018 = Establish Drag-Scroll
ME_LngCapt019 = Establish Move and Resize Window
ME_LngCapt022 = Specify a Launch File
ME_LngCapt023 = Specify a Sound File
ME_LngCapt024 = Post/SendMessage

; Tabs
ME_LngTab001 = Targets`nGestures`nActions`nRecognition`nHints`nTrail`nOthers

; Menus
ME_LngMenu001 = Window Elements
ME_LngMenu002 = Titlebar
ME_LngMenu003 = Titlebar Icon
ME_LngMenu004 = Minimize Button
ME_LngMenu005 = Maximize Button
ME_LngMenu006 = Close Button
ME_LngMenu007 = Help Button
ME_LngMenu008 = Menubar
ME_LngMenu009 = Vertical Scrollbar
ME_LngMenu010 = Horizontal Scrollbar
ME_LngMenu011 = Window Frame
ME_LngMenu012 = Resizable Corner
ME_LngMenu013 = Other Area
ME_LngMenu014 = Tree/List
ME_LngMenu015 = Mouse Cursor
ME_LngMenu016 = Normal (Arrow)
ME_LngMenu017 = Line (Text Input)
ME_LngMenu018 = Finger (Link Hover)
ME_LngMenu019 = Sand Glass
ME_LngMenu020 = Cross
ME_LngMenu021 = Disabled
ME_LngMenu022 = Arrow + Sand Glass
ME_LngMenu023 = Arrow + Question Mark
ME_LngMenu024 = 4-Direction Arrow
ME_LngMenu025 = Up-Down Arrow
ME_LngMenu026 = Left-Right Arrow
ME_LngMenu027 = UL-DR Arrow
ME_LngMenu028 = UR-DL Arrow
ME_LngMenu029 = Vertical Arrow
ME_LngMenu030 = Any of the above curors
ME_LngMenu031 = Default (Application Specified)
ME_LngMenu032 = Window Status
ME_LngMenu033 = Maximized
ME_LngMenu034 = Normal
ME_LngMenu035 = Transparent
ME_LngMenu036 = Opaque
ME_LngMenu037 = Topmost
ME_LngMenu038 = Non-Topmost
ME_LngMenu039 = Keyboard Status
ME_LngMenu040 = Shift Key Down
ME_LngMenu041 = Shift Key Up
ME_LngMenu042 = Ctrl Key Down
ME_LngMenu043 = Ctrl Key Up
ME_LngMenu044 = Alt Key Down
ME_LngMenu045 = Alt Key Up
ME_LngMenu046 = Rectangular Region
ME_LngMenu047 = Window Relative
ME_LngMenu048 = Screen Absolute
ME_LngMenu049 = Screen Edge Recognition
ME_LngMenu050 = Create New Button
ME_LngMenu051 = Delete

; Static Text
ME_LngText001 = &Name:
ME_LngText002 = &Type:
ME_LngText003 = &Value:
ME_LngText004 = &Rule:
ME_LngText005 = Gesture Triggers:
ME_LngText006 = Cursor Movement:
ME_LngText007 = &Target:
ME_LngText008 = C&ategory:
ME_LngText009 = Button Name:
ME_LngText010 = Key String:
ME_LngText100 = Stroke Sampling Interval (ms):
ME_LngText101 = Detection Start:
ME_LngText102 = 4-Direction "LL" and "RR":
ME_LngText103 = 4-Direction "UU" and "DD":
ME_LngText104 = 8-Direction Long Diagonal:
ME_LngText105 = First Stroke:
ME_LngText106 = After Orthogonal:
ME_LngText107 = After Diagonal:
ME_LngText108 = Cursor Movement to Start Judgment of Timeout (pixels):
ME_LngText109 = Time Threshold (ms):
ME_LngText110 = Time Limit of Double Gesture (ms):
ME_LngText111 = Sampling Interval (ms):
ME_LngText112 = Range of Corners:
ME_LngText113 = Horizontal:
ME_LngText114 = Vertical:
ME_LngText200 = Type of Hints:
ME_LngText201 = Interval of Drawing Process:
ME_LngText202 = Persistence Time of Hints:
ME_LngText203 = Color of Arrows (RRGGBB):
ME_LngText204 = Background Color (RRGGBB):
ME_LngText205 = Transparency (0～255):
ME_LngText206 = Size of Arrows:
ME_LngText207 = Spaces between Arrows:
ME_LngText208 = Margin from Edge:
ME_LngText209 = Distance from Cursor:
ME_LngText210 = Arrow Color:
ME_LngText300 = Text Color 1 (RRGGBB):
ME_LngText301 = Text Color 2 (RRGGBB):
ME_LngText302 = Background Color (RRGGBB):
ME_LngText303 = Transparency (0～255):
ME_LngText304 = Character Size:
ME_LngText305 = Font Name:
ME_LngText306 = Position:
ME_LngText307 = Left Margin:
ME_LngText308 = Right Margin:
ME_LngText309 = Top Margin:
ME_LngText310 = Bottom Margin:
ME_LngText311 = Roundness of Corners:
ME_LngText312 = Distance from Cursor:
ME_LngText313 = Distance from H-Edge:
ME_LngText314 = Distance from V-Edge:
ME_LngText400 = Line Color (RRGGBB):
ME_LngText401 = Line Transparency (0～255):
ME_LngText402 = Line Width:
ME_LngText403 = Cursor Movement to Start Gesture Trail:
ME_LngText404 = Interval of Drawing Process (ms):
ME_LngText451 = Toggle Gesture Enabling:
ME_LngText452 = Toggle Gesture Hints:
ME_LngText453 = User Name:
ME_LngText454 = Password:
ME_LngText455 = Limit of Height (0 for No Limit):
ME_LngText501 = X:
ME_LngText502 = Y:
ME_LngText503 = Width:
ME_LngText504 = Height:
ME_LngText505 = * 0 in Width or Height means whole window size.
ME_LngText506 = Target:
ME_LngText507 = Origin:
ME_LngText508 = Judge in:
ME_LngText521 = Input Key:
ME_LngText522 = Button:
ME_LngText523 = Operation:
ME_LngText524 = Count:
ME_LngText525 = Operation:
ME_LngText526 = Click Count:
ME_LngText527 = Unit of Rotation:
ME_LngText528 = X:
ME_LngText529 = Y:
ME_LngText530 = Origin:
ME_LngText531 = Direction:
ME_LngText532 = Unit of Scroll:
ME_LngText533 = This can scroll the target by cursor movement while a button is pressed.
ME_LngText534 = * This function has to be assigned to the gesture when a button is being`n   pressed.
ME_LngText535 = Vertical Sensitivity:
ME_LngText536 = Horizontal Sensitivity:
ME_LngText537 = (Smaller value is higher sensitivity)
ME_LngText538 = Direction:
ME_LngText539 = Operation:
ME_LngText541 = Specify the upper-left coordinates and size of the window.
ME_LngText542 = - The item which is specified with blank will not be changed.
ME_LngText543 = - If "Relative Value" is checked, the position/size of the`n  window will be increased or decreased from current`n  position/size.
ME_LngText544 = - If "Relative Value" is checked and fractions are specified,`n  the position/size of the window will be determined by ratio`n  to current position/size.
ME_LngText545 = - If "Relative Value" is unchecked and fractions are specified,`n  the position/size of the window will be determined by ratio`n  to the desktop size.`n  (Specify "0" instead of "1/1" to Width and Height.)
ME_LngText546 = Left:
ME_LngText547 = Top:
ME_LngText548 = Width:
ME_LngText549 = Height:
ME_LngText551 = Command Line:
ME_LngText552 = Working Folder:
ME_LngText553 = Window State:
ME_LngText554 = Privilege Level:
ME_LngText555 = * If the MouseGestureL.ahk is running in administrator privilege, the "User`n  Information for External Program" which is in "Others" tab has to be set.
ME_LngText556 = Program Files (*.exe)
ME_LngText557 = Sound Files (*.wav;*.mid)
ME_LngText561 = Message:
ME_LngText562 = wParam:
ME_LngText563 = lParam:

; Buttons
ME_LngButton001 = &OK
ME_LngButton002 = &Cancel
ME_LngButton003 = MouseGestureL &Help
ME_LngButton004 = &Import from Clipboard
ME_LngButton005 = +
ME_LngButton006 = -
ME_LngButton007 = C
ME_LngButton008 := Chr(0xE9)
ME_LngButton009 := Chr(0xEA)
ME_LngButton010 = S
ME_LngButton011 = X
ME_LngButton012 = Change
ME_LngButton013 = Add
ME_LngButton014 = Update
ME_LngButton015 = E
ME_LngButton016 = Helper
ME_LngButton017 = Add Trigger
ME_LngButton018 = Any Button Up
ME_LngButton019 = Remove last one step`nfrom current gesture
ME_LngButton020 = Register to Startup
ME_LngButton021 = Remove from Startup
ME_LngButton022 = Set Individual Arrow Colors
ME_LngButton023 = Edit
ME_LngButton024 = Special Key
ME_LngButton025 = Browse...

; Items of Drop Down List
ME_LngDropDown001 = Match Any Rule`nMatch All Rules
ME_LngDropDown002 = Window Class`nControl Class`nFile Name`nTitle`nCustom Condition`nMatch Other Targets
ME_LngDropDown003 = Match Exact Word`nMatch Partial Word`nMatch Prefix`nMatch Suffix`nRegular Expression
ME_LngDropDown004 = Tooltips`nArrows Type 1`nArrows Type 2`nAdvanced`nNavigation
ME_LngDropDown005 = Cursor Position`nUpper-Left Corner`nUpper-Right Corner`nLower-Left Corner`nLower-Right Corner
ME_LngDropDown101 = Relative Coordinates of Target Window`nRelative Coordinates of Target Control`nAbsolute Coordinates of Screen
ME_LngDropDown102 = Upper-Left`nUpper-Right`nLower-Left`nLower-Right
ME_LngDropDown103 = Gesture Starting Position`nGesture Ending Position
ME_LngDropDown201 = Left Button`nRight Button`nMiddle Button`nX1 Button`nX2 Button
ME_LngDropDown202 = Normal Stroke`nPress Down`nRelease 
ME_LngDropDown203 = Click`nPress Down`nRelease 
ME_LngDropDown204 = Gesture Starting Position`nCurrent Cursor Position
ME_LngDropDown205 = Scroll Up`nScroll Down`nScroll Left`nScroll Right
ME_LngDropDown206 = Same direction of a cursor movement`nOpposite direction of a cursor movement
ME_LngDropDown207 = Scroll as much as the cursor movement`nScroll automatically while a button is pressed
ME_LngDropDown208 = Normal Window`nMinimized`nMaximized`nHidden
ME_LngDropDown209 = Run as User`nRun as Administrator

; Column Titles of ListView
ME_LngListView001 = Type`nValue
ME_LngListView002 = Target`nAction
ME_LngListView003 = Triggers`nColors

; Group Box
ME_LngGroupBox001 = General Settings of Recognition Process
ME_LngGroupBox002 = Detection Threshold (pixels)
ME_LngGroupBox003 = Diagonal Angle
ME_LngGroupBox004 = Timeout
ME_LngGroupBox005 = Screen Edge Recognition
ME_LngGroupBox006 = Extra Mouse Buttons
ME_LngGroupBox007 = Common Options
ME_LngGroupBox008 = Arrow Hints
ME_LngGroupBox009 = Advanced Hints
ME_LngGroupBox010 = Gesture Trail
ME_LngGroupBox011 = Hotkeys
ME_LngGroupBox012 = Script Editor
ME_LngGroupBox013 = Startup
ME_LngGroupBox014 = User Information for Program Launch
ME_LngGroupBox015 = Others
ME_LngGroupBox101 = Direction of Wheel Rotation

; Check Box
ME_LngCheckBox001 = Not Match
ME_LngCheckBox002 = 8-Direction Mode
ME_LngCheckBox003 = Always Use Active Window as Target
ME_LngCheckBox004 = Recognize Each Display Area Individually
ME_LngCheckBox005 = Disable Default Behavior of Middle Button
ME_LngCheckBox006 = Disable Default Behavior of X1 Button
ME_LngCheckBox007 = Disable Default Behavior of X2 Button
ME_LngCheckBox008 = Show Gesture Hints by Default
ME_LngCheckBox009 = Transparent Background
ME_LngCheckBox010 = Show Hints when Trigger Button is Pressed
ME_LngCheckBox011 = Show Gesture Trail
ME_LngCheckBox012 = Draw Trail into Overwrapped Window
ME_LngCheckBox013 = Cascade Mouse Gesture Tray Menu
ME_LngCheckBox014 = Adjust Dialog Box Height to the Number of Items
ME_LngCheckBox101 = Shift
ME_LngCheckBox102 = Ctrl
ME_LngCheckBox103 = Alt
ME_LngCheckBox110 = Absolute Coordinates
ME_LngCheckBox111 = Page Scroll
ME_LngCheckBox112 = Relative Value

; Radio Button
ME_LngRadioBtn001 = Rotation Up
ME_LngRadioBtn002 = Rotation Down

; Messages
ME_LngMessage001 = "[#REPLASE#]"
ME_LngMessage002 := ", "
ME_LngMessage003 := " is assigned to Gesture [#REPLASE#].`n"
ME_LngMessage004 := " is included in Target [#REPLASE#].`n"
ME_LngMessage005 = `nAre you sure to delete this?
ME_LngMessage006 = The Actions are assigned to this Gesture.`nAre you sure to delete this?
ME_LngMessage007 = This button name already exists.
ME_LngMessage008 = Do you want to launch MouseGestureL.ahk as administrator on startup?
ME_LngMessage009 = MouseGestureL.ahk has been registered to startup.
ME_LngMessage010 = MouseGestureL.ahk has been removed from startup.
ME_LngMessage101 = The menu bar item of the application can be executed.`n`n  - There are unsupported applications.`n`nSpcify the menu items (Delimiter: [ , ]   Max: 6 Level Deep):
ME_LngMessage102 = Input program command line or URL.
ME_LngMessage104 = Spcify a transparency.`n`n  0: Transparent  ...  255: Opaque
ME_LngMessage105 = Specify one of the following values.`n`n      0 ... 100	: Set Absolute Value`n     +1 ... +100	: Increment`n     -1 ... -100	: Decrement
ME_LngMessage106 = Specify one of the following characters.`n`n     1 : Mute ON`n     0 : Mute OFF`n     + : Toggle Mute
ME_LngMessage107 = Specify the sound file to be played.`n`n  * The file format that is not supported by OS cannot be played.
ME_LngMessage108 = After the button is released once, the next button-down event will be`naccepted as a continuation of the same gesture until the timeout.`n`n　- This function has to be assigned to the gesture when a button is`n    being pressed.`n`n　<< Example: Right Double Click >>  `n　　1. Assign this function to RB__.`n　　2. Assign the action at the time of right double click to RB__RB__.`n`nSpecify the timeout in millisecond:
ME_LngMessage109 = Script stops until the specified time has elapsed.`n`n  - Next gesture cannot be accepted while waiting.`n    If you need long waiting, you'd better use`n    "Execute After Recognition Process".`n`nSpecify the waiting time in millisecond:
ME_LngMessage110 = The action is delayed until specified time has elapsed since gesture`nwas recognized.`n`n  - If the gesture status is changed before the waiting time has`n    not elapsed, the action will be canceled .`n  - You can assign the action to "Pressing and Holding a Button"`n    by this function.`n`nSpecify the delay time in millisecond:
ME_LngMessage111 = The action is executed when a button has been released`nafter the specified time has elapsed.`n`n　- This function has to be assigned to the gesture when`n    a button is being pressed.`n`nSpecify the waiting time in millisecond:
ME_LngMessage112 = The action is repeated at a specified intervals while`na button is being pressed.`n`n  - This function has to be assigned to the gesture`n    when a button is being pressed.`n`nSpecify the interval in millisecond:
ME_LngMessage113 = The action is executed when the recognition process`nhas been finished.`n`n　- This function is used if the action script is stopped`n    for a long time.`n    For example, a message box is displayed by the script.`n
ME_LngMessage114 = Show the text with Tooltip Hints.`n`n  - This function has to be assigned to the gesture when a button`n    is being pressed.`n  - This does not work if Tooltip Hints is disabled.`n  - If you want to show multiline text, press the "OK" to close`n    this dialog, then edit the inside text of ( ).`n`nInput text to be shown:
ME_LngMessage115 = Set the text to Clipboard`n`n  - Tab is ``t、 Return is ``n`n  - If you want to copy multiline text, press the "OK" to close`n    this dialog, then edit the inside text of ( ).`n`nInput text to be copied:
ME_LngMessage116 = Input key stroke string.`n`n    Format: +^!#{Key Name}	+ :Shift	  ^ :Ctrl`n				! :Alt	  # :Windows`n`n  - The { } surrounding the key name of a single character can be omitted.`n  - {Key Down} for Press Down, {Key Up} for Press Up.`n  - {LButton},{RButton},{MButton},{XButton1} and {XButton2} for a Mouse Click.`n  - If you specify the multiple keys, it will generate the serial key strokes.

; Tooltips
ME_LngTooltip001 = Settings have been copied to clipboard.
ME_LngTooltip002 = Settings have been imported.
ME_LngTooltip003 = Right-Click on Target Window
ME_LngTooltip004 = Right-Click on Target Button
ME_LngTooltip005 = Right-Click on Target Button

; Fonts
ME_ArrowFont	 = Wingdings
ME_ArrowSize	 = S8
ME_ArrowAlignUp	 = +0x0400
ME_ArrowAlignDn	 = +0x0800

;-------------------------------------------------------------------------------
EndLanguage:
	MG_Language := RegExReplace(A_LineFile, "m)^.+\\|\.ahk$")

