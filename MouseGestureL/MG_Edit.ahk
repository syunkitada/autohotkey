;===============================================================================
;
;		MouseGestureL.ahk - Configuration Module
;														Created by lukewarm
;														Modified by Pyonkichi
;===============================================================================
Critical
Menu, Tray, Icon, %A_WinDir%\System32\shell32.dll, 22

MG_IsEdit	  = 1
MG_CmdLineArg = %1%
#Include %A_ScriptDir%\Components\MG_CommonLib.ahk
#Include *i %A_ScriptDir%\Languages\MG_Language.ahk
MG_CheckLanguage()
if ((MG_CmdLineArg != "/ini2ahk")
&&	MG_SearchPlugins())
{
	Reload
}
MG_CheckConfigFiles()

;-------------------------------------------------------------------------------
; Configurations of Recognition Process
ConfRecognition =
(LTrim
	8Dir
	ActiveAsTarget
	Interval
	Threshold
	LongThresholdX
	LongThresholdY
	LongThreshold
	TimeoutThreshold
	Timeout
	DGInterval
	ORangeDefault
	ORangeA
	ORangeB
	EdgeInterval
	EdgeIndiv
	CornerX
	CornerY
	DisableDefMB
	DisableDefX1B
	DisableDefX2B
)
InitConfigs(ConfRecognition)
Config_8Dir				= 0
Config_ActiveAsTarget	= 0
Config_Interval			= 20
Config_Threshold		= 60
Config_LongThresholdX	= 800
Config_LongThresholdY	= 600
Config_LongThreshold	= 700
Config_TimeoutThreshold	= 12
Config_Timeout			= 400
Config_DGInterval		= 0
Config_ORangeDefault	= 3
Config_ORangeA			= 3
Config_ORangeB			= 3
Config_EdgeInterval		= 20
Config_EdgeIndiv		= 0
Config_CornerX			= 1
Config_CornerY			= 1
Config_DisableDefMB		= 0
Config_DisableDefX1B	= 0
Config_DisableDefX2B	= 0

;-------------------------------------------------------------------------------
; Configurations of Gesture Hints
ConfNavi =
(LTrim
	UseNavi
	UseExNavi
	NaviInterval
	NaviPersist
	ExNaviTransBG
	ExNaviFG
	ExNaviBG
	ExNaviTranspcy
	ExNaviSize
	ExNaviSpacing
	ExNaviPadding
	ExNaviMargin
)
InitConfigs(ConfNavi)
Config_UseNavi			= 1
Config_UseExNavi		= 3
Config_NaviInterval		= 10
Config_NaviPersist		= 0
Config_ExNaviTransBG	= 1
Config_ExNaviFG			= 000000
Config_ExNaviBG			= FFFFFF
Config_ExNaviTranspcy	= 255
Config_ExNaviSize		= 24
Config_ExNaviSpacing	= 2
Config_ExNaviPadding	= 4
Config_ExNaviMargin		= 8
;-------------------------------------------------------------------------------
; Configurations of Advanced Gesture Hints
ConfAdNavi =
(LTrim
	AdNaviFG
	AdNaviNI
	AdNaviBG
	AdNaviTranspcy
	AdNaviSize
	AdNaviFont
	AdNaviPosition
	AdNaviPaddingL
	AdNaviPaddingR
	AdNaviPaddingT
	AdNaviPaddingB
	AdNaviRound
	AdNaviMargin
	AdNaviSpaceX
	AdNaviSpaceY
	AdNaviOnClick
)
InitConfigs(ConfAdNavi)
Config_AdNaviFG			= FFFFFF
Config_AdNaviNI			= 7F7F7F
Config_AdNaviBG			= 000000
Config_AdNaviTranspcy	= 220
Config_AdNaviSize		= 12
Config_AdNaviPosition	= 0
Config_AdNaviPaddingL	= 6
Config_AdNaviPaddingR	= 6
Config_AdNaviPaddingT	= 3
Config_AdNaviPaddingB	= 4
Config_AdNaviRound		= 1
Config_AdNaviMargin		= 14
Config_AdNaviSpaceX		= 2
Config_AdNaviSpaceY		= 2
Config_AdNaviOnClick	= 0
if ((A_OSVersion = "WIN_2000")
||	(A_OSVersion = "WIN_2003")
||	(A_OSVersion = "WIN_XP"  )) {
	Config_AdNaviFont := "Tahoma"
}
else {
	Config_AdNaviFont := "Meiryo"
}
;-------------------------------------------------------------------------------
; Configurations of Gesture Trail
ConfTrail =
(LTrim
	ShowTrail
	DrawTrailWnd
	TrailColor
	TrailTranspcy
	TrailWidth
	TrailStartMove
	TrailInterval
)
InitConfigs(ConfTrail)
Config_ShowTrail		= 0
Config_DrawTrailWnd		= 1
Config_TrailColor		= 0000FF
Config_TrailTranspcy	= 255
Config_TrailWidth		= 3
Config_TrailStartMove	= 3
Config_TrailInterval	= 10

;-------------------------------------------------------------------------------
; Other Configurations
ConfOthers =
(LTrim
	HotkeyEnable
	HotkeyNavi
	ScriptEditor
	UserName
	Password
	TraySubmenu
	AdjustDlg
	DlgHeightLimit
	EditCommand
)
InitConfigs(ConfOthers)
Config_TraySubmenu		= 0
Config_AdjustDlg	 	= 0
Config_DlgHeightLimit	= 800

;-------------------------------------------------------------------------------

MG_LoadIniFile(A_ScriptDir . "\Config\MouseGestureL.ini")
if (!MG_IsNewOS()) {
	Config_UserName := ""
	Config_Password := ""
}
RuleType_WClass	 = 1
RuleType_CClass	 = 2
RuleType_Exe	 = 3
RuleType_Title	 = 4
RuleType_Custom	 = 5
RuleType_Include = 6

RuleType_1 = WClass
RuleType_2 = CClass
RuleType_3 = Exe
RuleType_4 = Title
RuleType_5 = Custom
RuleType_6 = Include

MG_AddConditionCategory("HitTest", ME_LngMenu001)
MG_AddCustomCondition("HitTest", ME_LngMenu002, "MG_HitTest()=""Caption""")
MG_AddCustomCondition("HitTest", ME_LngMenu003, "MG_HitTest()=""SysMenu""")
MG_AddCustomCondition("HitTest", ME_LngMenu004, "MG_HitTest()=""MinButton""")
MG_AddCustomCondition("HitTest", ME_LngMenu005, "MG_HitTest()=""MaxButton""")
MG_AddCustomCondition("HitTest", ME_LngMenu006, "MG_HitTest()=""CloseButton""")
MG_AddCustomCondition("HitTest", ME_LngMenu007, "MG_HitTest()=""HelpButton""")
MG_AddCustomCondition("HitTest", "", "")
MG_AddCustomCondition("HitTest", ME_LngMenu008, "MG_HitTest()=""Menu""")
MG_AddCustomCondition("HitTest", ME_LngMenu009, "MG_HitTest()=""VScroll""")
MG_AddCustomCondition("HitTest", ME_LngMenu010, "MG_HitTest()=""HScroll""")
MG_AddCustomCondition("HitTest", ME_LngMenu011, "MG_HitTest()=""Border""")
MG_AddCustomCondition("HitTest", ME_LngMenu012, "MG_HitTest()=""SizeBorder""")
MG_AddCustomCondition("HitTest", ME_LngMenu013, "MG_HitTest()=""Client""")
MG_AddCustomCondition("HitTest", "", "")
MG_AddCustomCondition("HitTest", ME_LngMenu014, "MG_TreeListHitTest()")

MG_AddConditionCategory("Cursor", ME_LngMenu015)
MG_AddCustomCondition("Cursor", ME_LngMenu016, "MG_CheckCursor(32512, 0)")
MG_AddCustomCondition("Cursor", ME_LngMenu017, "MG_CheckCursor(32513, 0)")
MG_AddCustomCondition("Cursor", ME_LngMenu018, "MG_CheckCursor(32649, 0)")
MG_AddCustomCondition("Cursor", ME_LngMenu019, "MG_CheckCursor(32514, 0)")
MG_AddCustomCondition("Cursor", ME_LngMenu020, "MG_CheckCursor(32515, 0)")
MG_AddCustomCondition("Cursor", ME_LngMenu021, "MG_CheckCursor(32648, 0)")
MG_AddCustomCondition("Cursor", ME_LngMenu022, "MG_CheckCursor(32650, 0)")
MG_AddCustomCondition("Cursor", ME_LngMenu023, "MG_CheckCursor(32651, 0)")
MG_AddCustomCondition("Cursor", ME_LngMenu024, "MG_CheckCursor(32646, 0)")
MG_AddCustomCondition("Cursor", ME_LngMenu025, "MG_CheckCursor(32645, 0)")
MG_AddCustomCondition("Cursor", ME_LngMenu026, "MG_CheckCursor(32644, 0)")
MG_AddCustomCondition("Cursor", ME_LngMenu027, "MG_CheckCursor(32642, 0)")
MG_AddCustomCondition("Cursor", ME_LngMenu028, "MG_CheckCursor(32643, 0)")
MG_AddCustomCondition("Cursor", ME_LngMenu029, "MG_CheckCursor(32516, 0)")
MG_AddCustomCondition("Cursor", "", "")
MG_AddCustomCondition("Cursor", ME_LngMenu030, "MG_CheckAllCursor(1, 0)")
MG_AddCustomCondition("Cursor", ME_LngMenu031, "MG_CheckAllCursor(0, 0)")

MG_AddConditionCategory("WinStat", ME_LngMenu032)
MG_AddCustomCondition("WinStat", ME_LngMenu033, "MG_Win(""MinMax"")==1")
MG_AddCustomCondition("WinStat", ME_LngMenu034, "MG_Win(""MinMax"")==0")
MG_AddCustomCondition("WinStat", ME_LngMenu035, "MG_Win(""Transparent"")<255")
MG_AddCustomCondition("WinStat", ME_LngMenu036, "MG_Win(""Transparent"")=""""")
MG_AddCustomCondition("WinStat", ME_LngMenu037, "MG_Win(""ExStyle"")&0x08")
MG_AddCustomCondition("WinStat", ME_LngMenu038, "!(MG_Win(""ExStyle"")&0x08)")

MG_AddConditionCategory("KeyStat", ME_LngMenu039)
MG_AddCustomCondition("KeyStat", ME_LngMenu040, "GetKeyState(""Shift"")")
MG_AddCustomCondition("KeyStat", ME_LngMenu041, "!GetKeyState(""Shift"")")
MG_AddCustomCondition("KeyStat", ME_LngMenu042, "GetKeyState(""Ctrl"")")
MG_AddCustomCondition("KeyStat", ME_LngMenu043, "!GetKeyState(""Ctrl"")")
MG_AddCustomCondition("KeyStat", ME_LngMenu044, "GetKeyState(""Alt"")")
MG_AddCustomCondition("KeyStat", ME_LngMenu045, "!GetKeyState(""Alt"")")

MG_AddConditionCategory("Rect", ME_LngMenu046)
MG_AddCustomCondition("Rect", ME_LngMenu047, "GetRectRelative")
MG_AddCustomCondition("Rect", ME_LngMenu048, "GetRectAbsolute")

MG_DefButtons := "LB`nRB`nMB`nX1B`nX2B`nWU`nWD`nLT`nRT"
#Include *i %A_ScriptDir%\Components\Buttons\MG_MyButtonNames.ahk
LoadButtons()


if (MG_CmdLineArg = "/ini2ahk")
{
	FileDelete, %A_ScriptDir%\Config\MG_Config.ahk
	FileAppend, % ToAhk(), %A_ScriptDir%\Config\MG_Config.ahk, UTF-8
	ExitApp
}





GoSub, CreateGui
GuiControl,, LBButtons, `n%LBButtons%
OnMessage(0x004E, "OnNotify")
OnMessage(0x0100, "OnKeyDown")
OnMessage(0x0205, "OnRButtonUp")

ActionCategory_Count=0
MG_AddActionCategory("All", ActionType001)
MG_AddActionCategory("Input", ActionType002)
MG_AddActionTemplate("Input", ActionName001, "ActKeyStroke")
MG_AddActionTemplate("Input", ActionName002, "ActMouseClick")
MG_AddActionTemplate("Input", ActionName003, "ActSendWheel")
MG_AddActionTemplate("Input", ActionName004, "ActMoveCursor")

MG_AddActionCategory("Scroll", ActionType003)
MG_AddActionTemplate("Scroll", ActionName005, "ActScroll")
MG_AddActionTemplate("Scroll", ActionName006, "ActDragScroll")

MG_AddActionCategory("Window", ActionType004)
MG_AddActionTemplate("Window", ActionName007, "WinActivate")
MG_AddActionTemplate("Window", ActionName008, "WinMinimize")
MG_AddActionTemplate("Window", ActionName009, "WinMaximize")
MG_AddActionTemplate("Window", ActionName010, "WinRestore")
MG_AddActionTemplate("Window", ActionName011, "WinClose")
MG_AddActionTemplate("Window", ActionName012, "WinSet, Bottom")
MG_AddActionTemplate("Window", ActionName013, "WinSet, Topmost, On")
MG_AddActionTemplate("Window", ActionName014, "WinSet, Topmost, Off")
MG_AddActionTemplate("Window", ActionName015, "WinSet, Topmost, Toggle")
MG_AddActionTemplate("Window", ActionName016, "ActMoveWindow")
MG_AddActionTemplate("Window", ActionName017, "WinSet, Trans, %[" . ME_LngMessage104 . "]%")
MG_AddActionTemplate("Window", ActionName018, "WinSet, Trans, Off")
MG_AddActionTemplate("Window", ActionName019, "MG_ActivatePrevWin()")

MG_AddActionCategory("Process", ActionType005)
MG_AddActionTemplate("Process", ActionName020, "ActFileLaunch")
MG_AddActionTemplate("Process", ActionName021, "Process, Close, % MG_Win(""pid"")")

MG_AddActionCategory("Application", ActionType006)
MG_AddActionTemplate("Application", ActionName022, "ButtonIDPicker")
MG_AddActionTemplate("Application", ActionName023, "WinMenuSelectItem,,, %[" . ME_LngMessage101 . "]%")

MG_AddActionCategory("Sound", ActionType007)
MG_AddActionTemplate("Sound", ActionName024, "SoundSet, %[" . ME_LngMessage105 . "]%, MASTER, VOLUME")
MG_AddActionTemplate("Sound", ActionName025, "SoundSet, %[" . ME_LngMessage106 . "]%, MASTER, MUTE")
MG_AddActionTemplate("Sound", ActionName026, "ActSoundPlay")

MG_AddActionCategory("Script", ActionType008)
MG_AddActionTemplate("Script", ActionName027, "MG_Abort()")
MG_AddActionTemplate("Script", ActionName028, "MG_Wait(%[" . ME_LngMessage108 . "%<500>%]%)")
MG_AddActionTemplate("Script", ActionName029, "Sleep, %[" . ME_LngMessage109 . "%<500>%]%")
MG_AddActionTemplate("Script", ActionName030, "if (MG_Timer(-%[" . ME_LngMessage110 . "%<500>%]%)) {`n`t`;" . ActionComment001 . "`n`n}`nelse {`n`t`;" . ActionComment002 . "`n`n}")
MG_AddActionTemplate("Script", ActionName031, "if (!MG_Hold()) {`n`t`;" . ActionComment001 . "`n`n}`nelse if (MG_Hold() > %[" . ME_LngMessage111 . "%<500>%]%) {`n`t`;" . ActionComment005 . "`n`n}")
MG_AddActionTemplate("Script", ActionName032, "if (MG_While(%[" . ME_LngMessage112 . "%<500>%]%)) {`n`t`;" . ActionComment003 . "`n`n}`nelse {`n`t`;" . ActionComment004 . "`n`n}")
MG_AddActionTemplate("Script", ActionName033, "if (MG_Defer()) {`n`t`;" . ActionComment006 . "`n`n}%[" . ME_LngMessage113 . "%<#NoInput#>%]%")

MG_AddActionCategory("Hints", ActionType009)
MG_AddActionTemplate("Hints", ActionName034, "MG_Tooltip=`n(`n%[" . ME_LngMessage114 . "]%`n)")
MG_AddActionTemplate("Hints", ActionName035, "MG_StopNavi()")
MG_AddActionTemplate("Hints", ActionName036, "MG_StopTrail()")

MG_AddActionTemplate("Others", ActionName037, "Clipboard:=""`n(% LTrim RTrim0`n%[" . ME_LngMessage115 . "]%`n)""")
MG_AddActionTemplate("Others", ActionName038, "ActPostMessage")
MG_AddActionTemplate("Others", ActionName039, "ActSendMessage")
#Include *i %A_ScriptDir%\Plugins\MG_Plugin.ahk
MG_AddActionCategory("Others", ActionType010)

CloseActionTemplateReg()
GuiControl, Choose, DDLActionCategory, `n1


Gui, Show, Hide Autosize, %ME_LngCapt002%
ShowTargets()
ShowGestures()
ShowConfig()
Gosub, On8DirChange
Gosub, OnNaviChange
Gosub, OnNaviPosChange
Gosub, OnShowTrailChange
Gosub, OnAdjustDlgHeight

Critical,Off
Gui, Show

return






CreateGui:
Gui,+Delimiter`n
Gui,Add,Tab2,x8 y2 w468 h498 vMainTab gOnTabChange AltSubmit, %ME_LngTab001%
MainTabIdx := 1
MG_DDLHeight := GetDesktopHeight()

;-------------------------------------------------------------------------------
; Targets : ターゲット
;-------------------------------------------------------------------------------
Gui,Tab,1

Gui,Add,Button, Section w25 h22 gTargetNew, %ME_LngButton005%
Gui,Add,Button,		x+0 w25 h22 gTargetDelete vBTargetDelete Disabled, %ME_LngButton006%
Gui, Font, %ME_ArrowSize%, %ME_ArrowFont%
Gui,Add,Button,		x+0 w25 h22 gTargetUp	%ME_ArrowAlignUp%, %ME_LngButton008%
Gui,Add,Button,		x+0 w25 h22 gTargetDown	%ME_ArrowAlignDn%, %ME_LngButton009%
Gui, Font
Gui,Add,Button,		x+0 w25 h22 gTargetSort, %ME_LngButton010%
Gui,Add,Button,		x+0 w25 h22 gCopyTarget vBCopyTarget Disabled, %ME_LngButton007%
Gui,Add,ListBox, xs y+2 w150 h440 vLBTarget gLBTargetSelect AltSubmit
GuiControlGet, rcCtrl, Pos, LBTarget
DefLBHeight := rcCtrlH

tblText := Array(ME_LngText001)
width := 213 - GetMaxTextLength(tblText)
Gui,Add,Text,	x+8 ys+1 vLabel1 Section, %ME_LngText001%
Gui,Add,Edit,	x+8	w%width% vETargetName   gETargetNameChange
Gui,Add,Button,	x+2	yp-1 w60 h22 vBTargetRename gTargetRename Disabled, %ME_LngButton012%

Gui,Add,ListView,xs y+2 w262 h297 Section -Multi NoSortHdr vLVRule gLVRuleSelect AltSubmit,%ME_LngListView001%
LV_ModifyCol(1, 70)
LV_ModifyCol(2,186)
Gui, Font, %ME_ArrowSize%, %ME_ArrowFont%
Gui,Add,Button,	x+1 yp+23 w20 h20 vBRuleUp	  gRuleUp	  Disabled %ME_ArrowAlignUp%, %ME_LngButton008%
Gui, Font
Gui,Add,Button,	y+20 w20 h20 vBRuleDelete gRuleDelete Disabled, %ME_LngButton011%
Gui, Font, %ME_ArrowSize%, %ME_ArrowFont%
Gui,Add,Button,	y+20 w20 h20 vBRuleDown	  gRuleDown	  Disabled %ME_ArrowAlignDn%, %ME_LngButton009%
Gui, Font

GuiControlGet, rcCtrl, Pos, LVRule
rcCtrlY += (rcCtrlH + 4)
Gui,Add,DropDownList,xs y%rcCtrlY% w179 vDDLLogic gDDLLogicChoose	Choose1	AltSubmit, %ME_LngDropDown001%
Gui,Add,Button,	x+2 yp-1 w50 h22 vBAddRule	  gBAddRulePress	Disabled, %ME_LngButton013%
Gui,Add,Button,	x+2		 w50 h22 vBUpdateRule gBUpdateRulePress Disabled, %ME_LngButton014%

tblText := Array(ME_LngText002, ME_LngText003, ME_LngText004)
width := GetMaxTextLength(tblText)
Gui,Add,Text,	xs y+6 w%width% vLabel2, %ME_LngText002%
width2 := 213 - width
Gui,Add,DropDownList,x+8 w%width2% vDDLRuleType gOnRuleTypeChange Choose1 AltSubmit, %ME_LngDropDown002%
Gui,Add,Button,	x+2 yp-1 w60 h22 vBRulePicker gBRulePickerPressed Disabled, %ME_LngButton016%

Gui,Add,Text,	xs y+6 w%width% vLabel3, %ME_LngText003%
width2 := 250 - width
Gui,Add,Edit,	x+8 w%width2% vERuleValue gOnRuleEditModify Disabled
Gui,Add,Button,	x+0	yp-1 w22 h22 vBClearRule gClearRulePress, %ME_LngButton011%

Gui,Add,Text,	xs y+8 w%width% vLabel4 Disabled, %ME_LngText004%
width2 := 274 - width
Gui,Add,DropDownList,x+8 w%width2% vDDLMatchRule gOnRuleTypeChange Choose1 AltSubmit Disabled, %ME_LngDropDown003%

Gui,Add,CheckBox,xp+0 y+8 vChkNotMatch gOnRuleTypeChange Disabled, %ME_LngCheckBox001%

;-------------------------------------------------------------------------------
; Gestures : ジェスチャー
;-------------------------------------------------------------------------------
Gui,Tab,2

Gui,Add,Button, Section w25 h22 gGestureNew, %ME_LngButton005%
Gui,Add,Button,		x+0 w25 h22 gGestureDelete vBGestureDelete1 Disabled, %ME_LngButton006%
Gui, Font, %ME_ArrowSize%, %ME_ArrowFont%
Gui,Add,Button,		x+0 w25 h22 gGestureUp	 %ME_ArrowAlignUp%, %ME_LngButton008%
Gui,Add,Button,		x+0 w25 h22 gGestureDown %ME_ArrowAlignDn%, %ME_LngButton009%
Gui, Font
Gui,Add,Button,		x+0 w25 h22 gGestureSort, %ME_LngButton010%
Gui,Add,Button,		x+0 w25 h22 gCopyGesture vBCopyGesture1 Disabled, %ME_LngButton007%
Gui,Add,ListBox,xs y+2 w150 h440 vLBGesture1 gLBGestureSelect AltSubmit

tblText := Array(ME_LngText001)
width := 213 - GetMaxTextLength(tblText)
Gui,Add,Text,	x+8 ys+1 vLabel5 Section, %ME_LngText001%
Gui,Add,Edit,	x+8 w%width% vEGestureName1
Gui,Add,Button,	x+2 yp-1 w60 h22 vBGestureRename1 gGestureRename Disabled, %ME_LngButton012%

Gui,Add,ListBox,xs y+2 w262 h100 vLBGesturePattern		gLBGesturePatternSelect	Section AltSubmit,

Gui, Font, %ME_ArrowSize%, %ME_ArrowFont%
Gui,Add,Button,	x+1	w20  h20	vBGesturePatternUp		gGesturePatternUp		Disabled %ME_ArrowAlignUp%, %ME_LngButton008%
Gui, Font
Gui,Add,Button,	y+20 w20  h20	vBGesturePatternDelete	gGesturePatternDelete	Disabled, %ME_LngButton011%
Gui, Font, %ME_ArrowSize%, %ME_ArrowFont%
Gui,Add,Button,	y+20 w20  h20	vBGesturePatternDown	gGesturePatternDown		Disabled %ME_ArrowAlignDn%, %ME_LngButton009%
Gui, Font

Gui,Add,Edit,	xs ys+105 w157 vEGesture					gEGestureChange			Disabled
Gui,Add,Button,	x+0	yp-1 w22 h22 vBClearGesture				gClearGesturePress, 	%ME_LngButton011%
Gui,Add,Button,	x+2	yp-1 w50 h22 vBAddGesturePattern		gAddGesturePattern		Disabled, %ME_LngButton013%
Gui,Add,Button,	x+2		 w50 h22 vBUpdateGesturePattern		gUpdateGesturePattern	Disabled, %ME_LngButton014%

Gui,Add,Text,	xs y+10 vLabel6 Section,%ME_LngText005%
Gui,Add,ListBox,xs y+8 w282 h145 vLBButtons gLBButtons AltSubmit
Gui,Add,Button,	xs+153 y+2 w130 vBAddTrigger gOnAddTriggerPress, %ME_LngButton017%

Gui,Add,Text,	xs y+0 vLabel7 Section, %ME_LngText006%
Gui, Font, S14, Wingdings
Gui,Add,Button, xs	  ys+20	w32 h32 vBStrokeUL	gDir7 Disabled,			% Chr(0xEB)
Gui,Add,Button, x+1			w32	h32 vBStrokeU	gDir8 Disabled +0x0400,	% Chr(0xE9)
Gui,Add,Button, x+1			w32	h32 vBStrokeUR	gDir9 Disabled,			% Chr(0xEC)
Gui,Add,Button, xs	  y+2	w32 h32 vBStrokeL	gDir4 Disabled,			% Chr(0xE7)
Gui,Add,Button, x+34		w32	h32 vBStrokeR	gDir6 Disabled,			% Chr(0xE8)
Gui,Add,Button, xs	  y+2	w32 h32 vBStrokeDL	gDir1 Disabled,			% Chr(0xED)
Gui,Add,Button, x+1			w32	h32 vBStrokeD	gDir2 Disabled +0x0800, % Chr(0xEA)
Gui,Add,Button, x+1			w32	h32 vBStrokeDR	gDir3 Disabled,			% Chr(0xEE)
Gui, Font

Gui,Add,Button,	x+10  ys+20	w175 h45 vBButtonUp	gBButtonUp Disabled, %ME_LngButton018%
Gui,Add,Button,		   y+10 w175 h45 vBGesturePatternBS gGesturePatternBS Disabled, %ME_LngButton019%


;-------------------------------------------------------------------------------
; Actions : アクション
;-------------------------------------------------------------------------------
Gui,Tab,3

Gui,Add,Button, Section w25 h22 gGestureNew, %ME_LngButton005%
Gui,Add,Button,		x+0 w25 h22 gGestureDelete vBGestureDelete2 Disabled, %ME_LngButton006%
Gui, Font, %ME_ArrowSize%, %ME_ArrowFont%
Gui,Add,Button,		x+0 w25 h22 gGestureUp	 %ME_ArrowAlignUp%, %ME_LngButton008%
Gui,Add,Button,		x+0 w25 h22 gGestureDown %ME_ArrowAlignDn%, %ME_LngButton009%
Gui, Font
Gui,Add,Button,		x+0 w25 h22 gGestureSort, %ME_LngButton010%
Gui,Add,Button,		x+0 w25 h22 gCopyGesture vBCopyGesture2 Disabled, %ME_LngButton007%
Gui,Add,ListBox, xs y+2 w150 h440 vLBGesture2 gLBGestureSelect AltSubmit

tblText := Array(ME_LngText001)
width := 213 - GetMaxTextLength(tblText)
Gui,Add,Text,	x+8 ys+1 vLabel8 Section, %ME_LngText001%
Gui,Add,Edit,	x+8 w%width% vEGestureName2
Gui,Add,Button,	x+2 yp-1 w60 h22 vBGestureRename2 gGestureRename Disabled, %ME_LngButton012%

Gui,Add,ListView,xs y+2 w262 h128 Section vLVAction gLVActionSelect -Multi NoSortHdr AltSubmit,%ME_LngListView002%
LV_ModifyCol(1, 90)
LV_ModifyCol(2,166)
Gui, Font, %ME_ArrowSize%, %ME_ArrowFont%
Gui,Add,Button, x+1 yp+23 w20 h20 vBActionUp		gActionUp	  Disabled %ME_ArrowAlignUp%, %ME_LngButton008%
Gui, Font
Gui,Add,Button, y+20 w20 h20 vBActionDelete	gActionDelete Disabled, %ME_LngButton011%
Gui, Font, %ME_ArrowSize%, %ME_ArrowFont%
Gui,Add,Button, y+20 w20 h20 vBActionDown	gActionDown	  Disabled %ME_ArrowAlignDn%, %ME_LngButton009%
Gui, Font

tblText := Array(ME_LngText007)
width := 171 - GetMaxTextLength(tblText)
Gui,Add,Text,	xs ys+135 vLabel9, %ME_LngText007%
Gui,Add,DropDownList, x+8 w%width% h%MG_DDLHeight% vDDLTarget gOnTargetChange
Gui,Add,Button,	x+2 yp-1 w50 h22 vBAddAction	gBAddActionPress	Disabled, %ME_LngButton013%
Gui,Add,Button,	x+2		 w50 h22 vBUpdateAction	gBUpdateActionPress	Disabled, %ME_LngButton014%

Gui,Add,Edit,	xs w262 h218 Section vEAction	gOnActionEditModify -Wrap WantTab T8 +0x00100000 Disabled
Gui,Add,Button, x+1	   w20 h20	vBEditAction	gOnEditActionPress	Disabled, %ME_LngButton015%
Gui,Add,Button, xp y+4 w20 h20	vBClearAction	gOnClearActionPress	Disabled,%ME_LngButton011%

Gui,Add,Text,	xs ys+226 w56	vLabel10, %ME_LngText008%
Gui,Add,DropDownList, x+2 w224 h%MG_DDLHeight% vDDLActionCategory gOnActionCategoryChange AltSubmit

Gui,Add,DropDownList, xs y+8 w231 h%MG_DDLHeight% vDDLActionTemplate AltSubmit
Gui,Add,Button,	x+2 yp-1 w50 h22 vBAddActionLine	gBAddActionLinePress Disabled, %ME_LngButton013%

;-------------------------------------------------------------------------------
; Recognition : 認識設定
;-------------------------------------------------------------------------------
Gui,Tab,4
GuiControlGet, rcTab, Pos, MainTab
rcTabW -= 26
tblText := Array(ME_LngText100, ME_LngText101, ME_LngText102, ME_LngText103, ME_LngText104)
width := GetMaxTextLength(tblText)+8

Gui,Add,GroupBox,xm+10 y+8 w%rcTabW% h88 Section, %ME_LngGroupBox001%
Gui,Add,CheckBox,xs+12 yp+20 vConfig_8Dir gOn8DirChange, %ME_LngCheckBox002%
Gui,Add,CheckBox,xs+12 y+8 vConfig_ActiveAsTarget, %ME_LngCheckBox003%

Gui,Add,Text,xs+12 y+8 w%width% vLabel11, %ME_LngText100%
Gui,Add,Edit,x+2 w48 vConfig_Interval
Gui,Add,UpDown, Range0-10000 128


width2 := rcTabW - 180 - 12
Gui,Add,GroupBox,xm+10 ys+96 w%width2% h124 Section, %ME_LngGroupBox002%
Gui,Add,Text,xs+12 yp+18 w%width%  vLabel12, %ME_LngText101%
Gui,Add,Edit,x+2 w48 vConfig_Threshold
Gui,Add,UpDown, Range0-1000 128

Gui,Add,Text,xs+12 y+6 w%width%  vLabel13, %ME_LngText102%
Gui,Add,Edit,x+2 w48 vConfig_LongThresholdX
Gui,Add,UpDown, Range0-10000 128

Gui,Add,Text,xs+12 y+6 w%width%  vLabel14, %ME_LngText103%
Gui,Add,Edit,x+2 w48  vConfig_LongThresholdY
Gui,Add,UpDown, Range0-10000 128

Gui,Add,Text,xs+12 y+6 w%width%  vLabel15,%ME_LngText104%
Gui,Add,Edit,x+2 w48 vConfig_LongThreshold
Gui,Add,UpDown, Range0-10000 128 vUDLongThreshold


left := width2+12
width2 := rcTabW - left
Gui,Add,GroupBox,xs+%left% ys w%width2% h124 Section, %ME_LngGroupBox003%
Gui,Add,Text,xs+12 yp+22 w96 vLabel16,%ME_LngText105%
Gui,Add,DropDownList,x+0 w41 vConfig_ORangeDefault Choose%Config_ORangeDefault% AltSubmit,0`n30`n45`n60`n90
Config_ORangeDefault:=""

Gui,Add,Text,xs+12 y+12 w96 vLabel17,%ME_LngText106%
Gui,Add,DropDownList,x+0 w41 vConfig_ORangeA Choose%Config_ORangeA% AltSubmit,0`n30`n45`n60`n90
Config_ORangeA:=""

Gui,Add,Text,xs+12 y+12 w96 vLabel18,%ME_LngText107%
Gui,Add,DropDownList,x+0 w41 vConfig_ORangeB Choose%Config_ORangeB% AltSubmit,0`n30`n45`n60`n90
Config_ORangeB:=""


tblText := Array(ME_LngText108, ME_LngText109, ME_LngText110)
width := GetMaxTextLength(tblText)+8
Gui,Add,GroupBox, xm+10 ys+132 w%rcTabW% h100 Section, %ME_LngGroupBox004%
Gui,Add,Text,xs+12 yp+18 w%width% vLabel19,%ME_LngText108%
Gui,Add,Edit,x+2 w48 vConfig_TimeoutThreshold
Gui,Add,UpDown, Range0-1000 128

Gui,Add,Text,xs+12 y+6 w%width% vLabel20,%ME_LngText109%
Gui,Add,Edit,x+2 w48 vConfig_Timeout
Gui,Add,UpDown, Range0-10000 128

Gui,Add,Text,xs+12 y+6 w%width% vLabel21,%ME_LngText110%
Gui,Add,Edit,x+2 w48 vConfig_DGInterval
Gui,Add,UpDown, Range0-10000 128


width2 := rcTabW - 180 - 12
Gui,Add,GroupBox, xm+10 ys+108 w%width2% h114 Section, %ME_LngGroupBox005%
Gui,Add,Text,xs+12 yp+18 vLabel22, %ME_LngText111%
Gui,Add,Edit,x+16 w48 vConfig_EdgeInterval
Gui,Add,UpDown, Range0-10000 128

Gui,Add,Text,xs+12 y+2 w140  vLabel23, %ME_LngText112%
Gui,Add,Text,xs+12 y+10 w65 Right vLabel24, %ME_LngText113%
Gui,Add,Edit,x+6 w48 vConfig_CornerX
Gui,Add,UpDown, Range1-10000 128

Gui,Add,Text,x+12 yp vLabel25, %ME_LngText114%
Gui,Add,Edit,x+6 w48 vConfig_CornerY
Gui,Add,UpDown, Range1-10000 128

Gui,Add,CheckBox,xs+12 y+10 vConfig_EdgeIndiv, %ME_LngCheckBox004%


left := width2+12
width2 := rcTabW - left
Gui,Add,GroupBox,xs+%left% ys w%width2% h114 Section,%ME_LngGroupBox006%
width2 -= 24
Gui,Add,CheckBox,xp+12 yp+18 w%width2% vConfig_DisableDefMB,  %ME_LngCheckBox005%
Gui,Add,CheckBox,      y+8   w%width2% vConfig_DisableDefX1B, %ME_LngCheckBox006%
Gui,Add,CheckBox,      y+8   w%width2% vConfig_DisableDefX2B, %ME_LngCheckBox007%

;-------------------------------------------------------------------------------
; Hints : ナビ
;-------------------------------------------------------------------------------
Gui,Tab,5

Gui,Add,GroupBox,y+8 w%rcTabW% h70 Section, %ME_LngGroupBox007%
Gui,Add,CheckBox,xs+12 yp+20 vConfig_UseNavi, %ME_LngCheckBox008%

Gui,Add,Text,xs+12 y+10 vLabel26, %ME_LngText200%
Gui,Add,DropDownList,x+10 w126 vConfig_UseExNavi gOnNaviChange AltSubmit, %ME_LngDropDown004%
GuiControl,Choose, Config_UseExNavi, % Config_UseExNavi+1
Config_UseExNavi:=""

Gui,Add,Text,xs+229 ys+16 w155 vLabel27, %ME_LngText201%
Gui,Add,Edit,x+0 w48 vConfig_NaviInterval
Gui,Add,UpDown, Range0-10000 128

Gui,Add,Text,xs+229 y+6 w155  vLabel28, %ME_LngText202%
Gui,Add,Edit,x+0 w48 vConfig_NaviPersist
Gui,Add,UpDown, Range0-10000 128


Gui,Add,GroupBox, xs y+12 w%rcTabW% h150 Section, %ME_LngGroupBox008%
Gui,Add,CheckBox,xs+12 yp+20 vConfig_ExNaviTransBG gOnExNaviTransBGChange, %ME_LngCheckBox009%

Gui,Add,Text,xs+12 y+10 w160 vLabel29, %ME_LngText203%
Gui,Add,Edit,x+0 w58 vConfig_ExNaviFG

Gui,Add,Text,xs+12 y+6 w160 vLabel30, %ME_LngText204%
Gui,Add,Edit,x+0 w58 vConfig_ExNaviBG

Gui,Add,Button,xs+20 y+16 w202 h24 vExNaviIdvClr gOnExNaviIdvClr, %ME_LngButton022%

Gui,Add,Text,xs+252 ys+18 w132 vLabel31, %ME_LngText205%
Gui,Add,Edit,x+0 w48 vConfig_ExNaviTranspcy
Gui,Add, UpDown, Range0-255 128 vUDExNaviTranspcy

Gui,Add,Text,xs+252 y+6 w132 vLabel32, %ME_LngText206%
Gui,Add,Edit,x+0 w48 vConfig_ExNaviSize
Gui,Add, UpDown, Range0-1000 128 vUDExNaviSize

Gui,Add,Text,xs+252 y+6 w132 vLabel33, %ME_LngText207%
Gui,Add,Edit,x+0 w48 vConfig_ExNaviSpacing
Gui,Add, UpDown, Range-1000-1000 128 vUDExNaviSpacing

Gui,Add,Text,xs+252 y+6 w132 vLabel34, %ME_LngText208%
Gui,Add,Edit,x+0 w48 vConfig_ExNaviPadding
Gui,Add, UpDown, Range0-1000 128 vUDExNaviPadding

Gui,Add,Text,xs+252 y+6 w132 vLabel35, %ME_LngText209%
Gui,Add,Edit,x+0 w48 vConfig_ExNaviMargin
Gui,Add, UpDown, Range-1-1000 128 vUDExNaviMargin


Gui,Add,GroupBox, xs y+12 w%rcTabW% h228 Section, %ME_LngGroupBox009%
Gui,Add,Text,xs+12 yp+18 w160 vLabel36, %ME_LngText300%
Gui,Add,Edit,x+0 w58 vConfig_AdNaviFG

Gui,Add,Text,xs+12 y+6 w160 vLabel37, %ME_LngText301%
Gui,Add,Edit,x+0 w58 vConfig_AdNaviNI

Gui,Add,Text,xs+12 y+6 w160 vLabel38, %ME_LngText302%
Gui,Add,Edit,x+0 w58 vConfig_AdNaviBG

Gui,Add,Text,xs+12 y+6 w170 vLabel39, %ME_LngText303%
Gui,Add,Edit,x+0 w48 vConfig_AdNaviTranspcy
Gui,Add, UpDown, Range0-255 128 vUDAdNaviTranspcy

Gui,Add,Text,xs+12 y+6 w170 vLabel40, %ME_LngText304%
Gui,Add,Edit,x+0 w48 vConfig_AdNaviSize
Gui,Add, UpDown, Range0-1000 128 vUDAdNaviSize

Gui,Add,Text,xs+12 y+6 w68 vLabel41, %ME_LngText305%
Gui,Add,Edit,x+0 w150 vConfig_AdNaviFont

Gui,Add,Text,xs+12 y+6 w67 vLabel42, %ME_LngText306%
Gui,Add,DropDownList,x+0 w150 vConfig_AdNaviPosition gOnNaviPosChange AltSubmit, %ME_LngDropDown005%
GuiControl,Choose, Config_AdNaviPosition, % Config_AdNaviPosition+1
Config_AdNaviPosition:=""

Gui,Add,CheckBox,xs+12 y+10 vConfig_AdNaviOnClick, %ME_LngCheckBox010%

Gui,Add,Text,xs+252 ys+18 w132 vLabel43, %ME_LngText307%
Gui,Add,Edit,x+0 w48 vConfig_AdNaviPaddingL
Gui,Add, UpDown, Range0-1000 128 vUDAdNaviPaddingL

Gui,Add,Text,xs+252 y+6 w132 vLabel44, %ME_LngText308%
Gui,Add,Edit,x+0 w48 vConfig_AdNaviPaddingR
Gui,Add, UpDown, Range0-1000 128 vUDAdNaviPaddingR

Gui,Add,Text,xs+252 y+6 w132 vLabel45, %ME_LngText309%
Gui,Add,Edit,x+0 w48 vConfig_AdNaviPaddingT
Gui,Add, UpDown, Range0-1000 128 vUDAdNaviPaddingT

Gui,Add,Text,xs+252 y+6 w132 vLabel46, %ME_LngText310%
Gui,Add,Edit,x+0 w48 vConfig_AdNaviPaddingB
Gui,Add, UpDown, Range0-1000 128 vUDAdNaviPaddingB

Gui,Add,Text,xs+252 y+6 w132 vLabel47, %ME_LngText311%
Gui,Add,Edit,x+0 w48 vConfig_AdNaviRound
Gui,Add, UpDown, Range0-1000 128 vUDAdNaviRound

Gui,Add,Text,xs+252 y+6 w132 vLabel48, %ME_LngText312%
Gui,Add,Edit,x+0 w48 vConfig_AdNaviMargin
Gui,Add, UpDown, Range-1-1000 128 vUDAdNaviMargin

Gui,Add,Text,xs+252 yp w132 vLabel49, %ME_LngText313%
Gui,Add,Edit,x+0 w48 vConfig_AdNaviSpaceX
Gui,Add, UpDown, Range-10000-10000 128 vUDAdNaviSpaceX

Gui,Add,Text,xs+252 y+6 w132 vLabel50, %ME_LngText314%
Gui,Add,Edit,x+0 w48 vConfig_AdNaviSpaceY
Gui,Add, UpDown, Range-10000-10000 128 vUDAdNaviSpaceY

;-------------------------------------------------------------------------------
; Trail : 軌跡
;-------------------------------------------------------------------------------
Gui,Tab,6

Gui,Add,GroupBox,y+8 w%rcTabW% h232 Section, %ME_LngGroupBox010%
Gui,Add,CheckBox,xs+12 yp+20 vConfig_ShowTrail gOnShowTrailChange, %ME_LngCheckBox011%
Gui,Add,CheckBox,xs+24 y+14	 vConfig_DrawTrailWnd, %ME_LngCheckBox012%

Gui,Add,Text,xs+24 y+12 w210 vLabel51, %ME_LngText400%
Gui,Add,Edit,x+0 w58 vConfig_TrailColor

Gui,Add,Text,xs+24 y+12 w220 vLabel52, %ME_LngText401%
Gui,Add,Edit,x+0 w48 vConfig_TrailTranspcy
Gui,Add, UpDown, Range0-255 128 vUDTrailTranspcy

Gui,Add,Text,xs+24 y+12 w220 vLabel53, %ME_LngText402%
Gui,Add,Edit,x+0 w48 vConfig_TrailWidth
Gui,Add, UpDown, Range0-100 128 vUDTrailWidth

Gui,Add,Text,xs+24 y+12 w220 vLabel54, %ME_LngText403%
Gui,Add,Edit,x+0 w48 vConfig_TrailStartMove
Gui,Add, UpDown, Range0-1000 128 vUDTrailStartMove

Gui,Add,Text,xs+24 y+12 w220 vLabel55, %ME_LngText404%
Gui,Add,Edit,x+0 w48 vConfig_TrailInterval
Gui,Add, UpDown, Range0-10000 128 vUDTrailInterval

;-------------------------------------------------------------------------------
; Others : その他
;-------------------------------------------------------------------------------
Gui,Tab,7
tblText := Array(ME_LngText451, ME_LngText452)
width := GetMaxTextLength(tblText)+8

Gui,Add,GroupBox, y+8 w%rcTabW% h80 Section,%ME_LngGroupBox011%
Gui,Add,Text,xs+12 yp+20 w%width% vLabel56,%ME_LngText451%
Gui,Add,Hotkey,x+0 w160 vConfig_HotkeyEnable gOnHotkeyChange

Gui,Add,Text,xs+12 y+8 w%width% vLabel57,%ME_LngText452%
Gui,Add,Hotkey,x+0 w160 vConfig_HotkeyNavi gOnHotkeyChange


Gui,Add,GroupBox,xs y+20 w%rcTabW% h52, %ME_LngGroupBox012%
width := rcTabW-12*2-62
Gui,Add,Edit,xs+12 yp+20 w%width% vConfig_ScriptEditor
Gui,Add,Button,x+2 yp-1 w60 h22 gOnBrowseEditor, %ME_LngButton025%


Gui,Add,GroupBox,xs y+20 w%rcTabW% h62, %ME_LngGroupBox013%
Gui,Add,Button,xs+18 yp+20 w160 h30 gOnRegStartup, %ME_LngButton020%
Gui,Add,Button,x+14 w160 h30 gOnDelStartup, %ME_LngButton021%

if (MG_IsNewOS())
{
	Gui,Add,GroupBox,xs y+21 w%rcTabW% h52, %ME_LngGroupBox014%
	Gui,Add,Text,xs+12 yp+20 vLabel58, %ME_LngText453%
	Gui,Add,Edit,x+8 w135 vConfig_UserName
	Gui,Add,Text,x+16 vLabel59, %ME_LngText454%
	Gui,Add,Edit,x+8 w135 vConfig_Password Password
}

Gui,Add,GroupBox,xs y+21 w%rcTabW% h102, %ME_LngGroupBox015%
Gui,Add,CheckBox,xs+17 yp+24 vConfig_TraySubmenu, %ME_LngCheckBox013%

Gui,Add,CheckBox,xs+17 y+14 vConfig_AdjustDlg gOnAdjustDlgHeight, %ME_LngCheckBox014%
Gui,Add,Text,xs+40 y+6 vLabel60, %ME_LngText455%
Gui,Add,Edit,x+8 w60 vConfig_DlgHeightLimit gOnAdjustDlgHeight
Gui,Add, UpDown, Range0-10000 128 vUDDlgHeightLimit


;-------------------------------------------------------------------------------
; Common buttons : 共通ボタン
;-------------------------------------------------------------------------------
Gui,Tab
GuiControlGet, rcTab, Pos, MainTab
tabRight  := rcTabX + rcTabW
tabBottom := rcTabY + rcTabH
top  := tabBottom + 8
Gui, Add, Button, x%rcTabX% y%top% w160 h24 vBFromClipboard gImportFromClipboard, %ME_LngButton004%
Gui, Add, Button, x+6 w130 h24 vBHelp gShowHelp, %ME_LngButton003%

width=80
spc=6
left := tabRight - (width*2+spc)
Gui, Add, Button, x%left% y%top% w%width% h24 vBSaveExit gSaveExit, %ME_LngButton001%
Gui, Add, Button, x+%spc% w%width% h24 vBExit gExit, %ME_LngButton002%

;-------------------------------------------------------------------------------
; Adjust Position of Static Text
;-------------------------------------------------------------------------------
Loop, 60
{
	GuiControlGet, pos, pos, Label%A_Index%
	if (!ErrorLevel)
	{
		posY+=4
		posX+=2
		GuiControl, Move, Label%A_Index%, x%posX% y%posY%
	}
}
return

;-------------------------------------------------------------------------------



GuiClose:
GuiEscape:
Exit:
ExitApp



Dummy:
return


;-------------------------------------------------------------------------------
; WM_NOTIFY Message Handler
;														Implemented by Pyonkichi
;-------------------------------------------------------------------------------
OnNotify(wParam, lParam)
{
	global MainTab
	if (NumGet(lParam+0, A_PtrSize*2, "Ptr") == -552)
	{
		GuiControlGet, hTab, Hwnd, MainTab
		if (NumGet(lParam+0, 0, "Ptr") == hTab)
		{
			SaveModification()
		}
	}
}

;-------------------------------------------------------------------------------
; WM_KEYDOWN Message Handler
;														Implemented by Pyonkichi
;-------------------------------------------------------------------------------
OnKeyDown(wParam, lParam)
{
	global
	if ((A_GuiControl != "LBButtons")
	||	(wParam != 0x2E))
	{
		return
	}
	DeleteTrigger()
}

;-------------------------------------------------------------------------------
; WM_RBUTTONUP Message Handler
;														Implemented by Pyonkichi
;-------------------------------------------------------------------------------
OnRButtonUp(wParam, lParam)
{
	global
	if (A_GuiControl != "LBButtons")
	{
		return
	}
	MouseClick, LEFT
	Gui, Submit, Nohide
	if (!LBButtons) {
		return
	}
	local szTrigger := % Button_%LBButtons%
	Loop, Parse, MG_DefButtons, `n
	{
		if (A_LoopField = szTrigger) {
			return
		}
	}
	Menu, menuDelete, Add
	Menu, menuDelete, DeleteAll
	Menu, menuDelete, Add, %ME_LngMenu051%, OnDelTriggerSelect
	Menu, menuDelete, Show
}

;-------------------------------------------------------------------------------
; Get Desktop Height
;														Implemented by Pyonkichi
;-------------------------------------------------------------------------------
GetDesktopHeight()
{
	MG_GetMonitorRect(0,0,, dtT,, dtB, true)
	return dtB-dtT
}

;-------------------------------------------------------------------------------
; Own InputBox
;														Implemented by Pyonkichi
;-------------------------------------------------------------------------------
MG_InputBox(ByRef OutputVar, Title, Prompt, Default, OwnerWin="1")
{
	global
	Gui, MGW_InBox:-MaximizeBox -MinimizeBox +HWNDhMGW_InBox +Owner%OwnerWin% +Delimiter`n
	Gui, MGW_InBox:Margin , 10, 10
	Gui, MGW_InBox:Font, S11
	GUI, MGW_InBox:Add, Text, vIbText, %Prompt%
	GUI, MGW_InBox:Show, Hide

	GuiControlGet, rcCtrl, MGW_InBox:Pos, IbText
	local width := (rcCtrlW >= 300) ? rcCtrlW : 300
	if (Default != "#NoInput#") {
		GUI, MGW_InBox:Add, Edit, y+8 w%width% vIbValue, %Default%
	}
	local left := width-157
	Gui, MGW_InBox:Font
	Gui, MGW_InBox:Add, Button, vAcceptValue gOnAcceptValue x%left% y+8 w80 Default, %ME_LngButton001%
	Gui, MGW_InBox:Add, Button, gOnCancelValue x+8 yp+0 w80,						 %ME_LngButton002%

	local fOK := false
	Gui, MGW_InBox:Show, AutoSize, %Title%
	WinWaitClose,  ahk_id %hMGW_InBox%
	return fOK

	;---------------------------------------------------------------------------
	; Accepted
OnAcceptValue:
	fOK := true
	GuiControlGet, OutputVar, MGW_InBox:, IbValue
	Gui, MGW_InBox:Destroy
	return

	;---------------------------------------------------------------------------
	; Canceled
OnCancelValue:
MGW_InBoxGuiClose:
MGW_InBoxGuiEscape:
	Gui, MGW_InBox:Destroy
	return
}

;-------------------------------------------------------------------------------
; Get Maximum Text Length
;														Implemented by Pyonkichi
;-------------------------------------------------------------------------------
GetMaxTextLength(tblText)
{
	global
	Loop, % tblText.MaxIndex()
	{
		Gui, MGW_Dummy:Add, Text, vDmyTxt%A_Index%, % tblText[A_Index]
	}
	Gui, MGW_Dummy:Show, Hide
	local max:=0
	Loop, % tblText.MaxIndex()
	{
		GuiControlGet, rcCtrl, MGW_Dummy:Pos, DmyTxt%A_Index%
		if (rcCtrlW > max) {
			max := rcCtrlW
		}
	}
	Gui, MGW_Dummy:Destroy
	return max
}

;-------------------------------------------------------------------------------
; Adjust the dialog box height to the number of items
;														Implemented by Pyonkichi
;-------------------------------------------------------------------------------
AdjustDialogHeight(fDefault=false)
{
	local chk, height
	GuiControlGet, chk,, Config_AdjustDlg
	if (!chk && !fDefault) {
		return
	}
	GuiControlGet, rcCtrl, Pos, LBTarget
	;---------------------------------------------------------------------------
	; Reset to the default height
	if (fDefault)
	{
		if (rcCtrlH == DefLBHeight) {
			return
		}
		height := DefLBHeight
	}
	;---------------------------------------------------------------------------
	; Decide the dialog box height
	else
	{
		local winY, winH, hLB
		Gui,+LastFound
		WinGetPos,,winY,,winH
		GuiControlGet, hLB, Hwnd, LBTarget
		SendMessage, 0x01A1,,,, ahk_id %hLB%
		local itemH := ErrorLevel
		local framW := Mod(rcCtrlH, itemH)
		local need1 := itemH * Target_Count + framW
		local need2 := itemH * Gesture_Count + framW
		height := (need1>=need2) ? need1 : need2
		local extra := winH - rcCtrlH

		local x, y, dtT, dtB, limit, limSet
		CoordMode, Mouse, Screen
		MouseGetPos, x, y
		MG_GetMonitorRect(x, y,, dtT,, dtB, true)
		limit := dtB - dtT
		GuiControlGet, limSet,, Config_DlgHeightLimit
		if ((limSet > 0) && (limSet < limit)) {
			limit := (limSet > DefLBHeight+extra) ? limSet : DefLBHeight+extra
		}
		if (height+extra > limit) {
			height := (limit-extra)//itemH * itemH + framW
		}
		if (winY+extra+height > dtB) {
			winY := dtB - extra - height
			WinMove,,winY
		}
		if (rcCtrlH >= height)
		{
			if (rcCtrlH == DefLBHeight) {
				return
			}
			else if (height < DefLBHeight) {
				height := DefLBHeight
			}
		}
	}
	;---------------------------------------------------------------------------
	; Adjust the dialog box height
	GuiControl, Move, LBTarget, h%height%
	GuiControl, Move, LBGesture1, h%height%
	GuiControl, Move, LBGesture2, h%height%

	static tblH := [ "MainTab", "LVRule", "LBGesturePattern", "LVAction" ]
	static tblY := [ "BFromClipboard", "BHelp", "BSaveExit", "BExit"
				   , "DDLLogic", "BAddRule", "BUpdateRule", "Label2", "DDLRuleType"
				   , "BRulePicker", "Label3", "ERuleValue", "BClearRule", "Label4"
				   , "DDLMatchRule", "ChkNotMatch", "EGesture", "BClearGesture"
				   , "BAddGesturePattern", "BUpdateGesturePattern", "Label6", "LBButtons"
				   , "BAddTrigger", "Label7", "BStrokeUL", "BStrokeU", "BStrokeUR"
				   , "BStrokeL", "BStrokeR", "BStrokeDL", "BStrokeD", "BStrokeDR"
				   , "BButtonUp", "BGesturePatternBS", "Label9", "DDLTarget", "BAddAction"
				   , "BUpdateAction", "EAction", "BEditAction", "BClearAction", "Label10"
				   , "DDLActionCategory", "DDLActionTemplate", "BAddActionLine" ]
	local diff := height - rcCtrlH
	; Resize Controls
	Loop, % tblH.MaxIndex()
	{
		GuiControlGet, rcCtrl, Pos, % tblH[A_Index]
		GuiControl, Move, % tblH[A_Index], % "h" rcCtrlH+diff
	}
	; Move Controls
	Loop, % tblY.MaxIndex()
	{
		GuiControlGet, rcCtrl, Pos, % tblY[A_Index]
		GuiControl, Move, % tblY[A_Index], % "y" rcCtrlY+diff
	}
	Gui, Show, Autosize
}

;-------------------------------------------------------------------------------
; Save the Modification
;														Implemented by Pyonkichi
;-------------------------------------------------------------------------------
SaveModification(ope="Check", edit="")
{
	global
	static fModified:=0
	Critical
	if (ope = "Modified")
	{
		if ((Target_Editing  && (edit="ERuleValue"))
		||	(Gesture_Editing && (edit="EGesture" || edit="EAction")))
		{
			fModified := 1
		}
	}
	else if (ope = "Reset")
	{
		fModified := 0
	}
	else if (ope = "Check" && fModified)
	{
		fModified := 0
		if (MainTabIdx==3)
		{
			GuiControlGet, EAction,, EAction
			if (EAction = "") {
				Critical, Off
				return
			}
		}
		local  idxEdt := [ Target_Editing,		Gesture_Editing,		 Gesture_Editing	  ]
		static btnUpd := [ "BUpdateRule",		"BUpdateGesturePattern", "BUpdateAction"	  ]
		static subUpd := [ "BUpdateRulePress",	"UpdateGesturePattern",	 "BUpdateActionPress" ]
		static btnAdd := [ "BAddRule",			"BAddGesturePattern",	 "BAddAction"		  ]
		static subAdd := [ "BAddRulePress",		"AddGesturePattern",	 "BAddActionPress"	  ]
		local iEditing := idxEdt[MainTabIdx]
		if (MainTabIdx<=3 && iEditing)
		{
			GuiControlGet, MG_CtrlStat, Enabled, % btnUpd[MainTabIdx]
			if (MG_CtrlStat)
			{
				Gosub, % subUpd[MainTabIdx]
			}
			else
			{
				GuiControlGet, MG_CtrlStat, Enabled, % btnAdd[MainTabIdx]
				if (MG_CtrlStat) {
					Gosub, % subAdd[MainTabIdx]
				}
			}
		}
	}
	Critical, Off
}

;-------------------------------------------------------------------------------
; On Main Tab Change
;														Implemented by Pyonkichi
;-------------------------------------------------------------------------------
OnTabChange:
	SaveModification("Reset")
	GuiControlGet, MainTabIdx, , MainTab
return

;-------------------------------------------------------------------------------
; On "Add Trigger" Button Press
;														Implemented by Pyonkichi
;-------------------------------------------------------------------------------
OnAddTriggerPress:
	OnAddTriggerPress()
return
OnAddTriggerPress()
{
	global
	ScreenEdges := ""
	Menu, menuTrigger, Add
	Menu, menuTrigger, DeleteAll
	Menu, menuEdge, Add
	Menu, menuEdge, DeleteAll
	Loop, %A_ScriptDir%\Components\Buttons\ScreenEdges\*.ahk
	{
		local szEdgeName := RegExReplace(A_LoopFileName, "\.ahk")
		Join(ScreenEdges, szEdgeName)
		szEdgeName := "Button_" . szEdgeName
		szEdgeName := %szEdgeName%
		Menu, menuEdge, Add, %szEdgeName%, AddScreenEdge
	}
	Menu, menuTrigger, Add, %ME_LngMenu049%, :menuEdge
	Menu, menuTrigger, Add
	Menu, menuTrigger, Add, %ME_LngMenu050%, DefineNewButton
	Menu, menuTrigger, Show
}

;---------------------------------------------------------------------------
; Add Screen Edge Recognition Module to List Box
;														Implemented by Pyonkichi
;-------------------------------------------------------------------------------
AddScreenEdge:
	AddScreenEdge()
return
AddScreenEdge()
{
	global
	Loop, Parse, ScreenEdges, `n
	{
		local szEdgeName := "Button_" . A_LoopField
		szEdgeName := %szEdgeName%
		if (A_ThisMenuItem = szEdgeName)
		{
			FileCopy, %A_ScriptDir%\Components\Buttons\ScreenEdges\%A_LoopField%.ahk
					, %A_ScriptDir%\Components\Buttons\%A_LoopField%.ahk, 1
			break
		}
	}
	LoadButtons()
	GuiControl,, LBButtons, `n%LBButtons%
}


;---------------------------------------------------------------------------
; Define New Button
;														Implemented by Pyonkichi
;-------------------------------------------------------------------------------
DefineNewButton:
	DefineNewButton()
return
DefineNewButton()
{
	global
	Gui, MGW_Trg:-MaximizeBox -MinimizeBox +HWNDhMGW_Trg +Owner1 +Delimiter`n +LastFound

	local tblText := Array(ME_LngText009, ME_LngText010)
	local width := GetMaxTextLength(tblText)+8
	Gui, MGW_Trg:Add, Text,x12 y20 w%width%, %ME_LngText009%
	Gui, MGW_Trg:Add, Edit,x+0 yp-4 w174 vTriggerName gOnEditTrigger

	Gui, MGW_Trg:Add, Text, x12 y+12 w%width%, %ME_LngText010%
	Gui, MGW_Trg:Add, Edit, x+0 yp-4 w151 vTriggerKey gOnEditTrigger
	Gui, MGW_Trg:Add, Button, x+2 yp-1 w22 h22 gOnTriggerInput, ...

	GUI, MGW_Trg:Show, Hide
	local width
	WinGetPos,,,width
	local left := width - 185
	Gui, MGW_Trg:Add, Button, vAcceptTrigger gOnAcceptTrigger x%left% y+14 w80 Default Disabled, %ME_LngButton001%
	Gui, MGW_Trg:Add, Button, gOnCancelTrigger x+8 yp+0 w80, %ME_LngButton002%
	Gui, MGW_Trg:Show, AutoSize, %ME_LngCapt004%

	WinWaitClose,  ahk_id %hMGW_Trg%
	return

	;---------------------------------------------------------------------------
	; On Edit Trigger
OnEditTrigger:
	Gui, MGW_Trg:Submit, Nohide
	local stat := (TriggerName="" || TriggerKey="") ? "Disable" : "Enable"
	GuiControl, MGW_Trg:%stat%, AcceptTrigger
	return

	;---------------------------------------------------------------------------
	; On Input Key button press
OnTriggerInput:
	local szKey
	DlgKeyInput(szKey)
	szKey := RegExReplace(szKey, "[{}]")
	GuiControl, MGW_Trg:, TriggerKey, %szKey%
	return

	;---------------------------------------------------------------------------
	; Accepted
OnAcceptTrigger:
	Gui, MGW_Trg:Submit, Nohide
	if (TriggerName!="" && TriggerKey!="")
	{
		if (AddButton(TriggerName, TriggerKey)) {
			Gui, MGW_Trg:Destroy
		}
	}
	return

	;---------------------------------------------------------------------------
	; Canceled
OnCancelTrigger:
MGW_TrgGuiClose:
MGW_TrgGuiEscape:
	Gui, MGW_Trg:Destroy
	return
}


;-------------------------------------------------------------------------------
; Add New Trigger Button
;														Implemented by lukewarm
;														Modified by Pyonkichi
;-------------------------------------------------------------------------------
AddButton(name, key)
{
	global
	local szKey := RegExReplace("^~","",key)
	local szPathBtn  := A_ScriptDir . "\Components\Buttons\" . name . ".ahk"
	local szPathEdge := A_ScriptDir . "\Components\Buttons\ScreenEdges\" . name . ".ahk"
	if (!FileExist(szPathBtn) && !FileExist(szPathEdge))
	{
		local szBtn
		szBtn = 
(LTrim
		Goto,MG_%name%_End

		MG_%name%_Enable:
		`tHotkey,*%key%,MG_%name%_DownHotkey,On
		`tHotkey,*%key% up,MG_%name%_UpHotkey,On
		return

		MG_%name%_Disable:
		`tHotkey,*%key%,MG_%name%_DownHotkey,Off
		`tHotkey,*%key% up,MG_%name%_UpHotkey,Off
		return

		MG_%name%_DownHotkey:
		`tMG_TriggerDown("%name%")
		return

		MG_%name%_UpHotkey:
		`tMG_TriggerUp("%name%")
		return

		MG_%name%_Down:
		`tSetMouseDelay,-1
		`tSend,{Blind}{%szKey% Down}
		return

		MG_%name%_Up:
		`tSetMouseDelay,-1
		`tSend,{Blind}{%szKey% Up}
		return

		MG_%name%_End:

)
		FileAppend, %szBtn%, %szPathBtn%, UTF-8
		LoadButtons()
		GuiControl, 1:, LBButtons, `n%LBButtons%
		return true
	}
	else
	{
		MsgBox, 0x30, %ME_LngCapt004%, %ME_LngMessage007%
		return false
	}
}


;-------------------------------------------------------------------------------
; Delete Defined Trigger
;														Implemented by Pyonkichi
;-------------------------------------------------------------------------------
OnDelTriggerSelect:
	DeleteTrigger()
return
DeleteTrigger()
{
	global
	Gui, Submit, Nohide
	if (!LBButtons) {
		return
	}
	local szTrigger := % Button_%LBButtons%
	Loop, Parse, MG_DefButtons, `n
	{
		if (A_LoopField = szTrigger) {
			return
		}
	}
	local szPath = A_ScriptDir . "\Components\Buttons\" . szTrigger . ".ahk"
	FileDelete, %szPath%

	local sel := LBButtons
	LoadButtons()
	GuiControl,, LBButtons, `n%LBButtons%
	GuiControl, Choose, LBButtons, %sel%
}

;-------------------------------------------------------------------------------
; On Edit Action Press
;														Implemented by Pyonkichi
;-------------------------------------------------------------------------------
OnEditActionPress:
	EditAction()
return
EditAction()
{
	global EAction
	Gui, Submit, Nohide
	szActTemp := A_Temp . "\~MG_ActTmp.ahk"
	file := FileOpen(szActTemp, "w `n", "UTF-8")
	if (!file) {
		return
	}
	file.Write(EAction)
	file.Close

	GuiControlGet, szEditor,, Config_ScriptEditor
	GuiControlGet, szUserName,, Config_UserName
	GuiControlGet, szPassword,, Config_Password
	if (szEditor != "") {
		szEditor := """" . szEditor . """"
	}
	else {
		szEditor := "notepad"
	}
	DisableActionControls(true)
	if (szUserName) {
		RunAs, %szUserName%, %szPassword%
	}
	RunWait, % szEditor . " " . szActTemp,, UseErrorLevel
	RunAs
	DisableActionControls(false)

	file := FileOpen(szActTemp, "r `n", "UTF-8")
	if (file)
	{
		szNewAction := file.Read(file.Length)
		file.Close
		if (szNewAction != EAction)
		{
			GuiControl,, EAction, %szNewAction%
			SaveModification("Modified", "EAction")
		}
	}
	FileDelete, %szActTemp%
}


;-------------------------------------------------------------------------------
; On Clear Action Press
;														Implemented by Pyonkichi
;-------------------------------------------------------------------------------
OnClearActionPress:
	GuiControl,, EAction,
	SaveModification("Modified", "EAction")
return


;-------------------------------------------------------------------------------
; Disable Action Controls
;														Implemented by Pyonkichi
;-------------------------------------------------------------------------------
DisableActionControls(fDisable)
{
	local szStat := fDisable ? "Disable" : "Enable"
	GuiControl, %szStat%, LBGesture1
	GuiControl, %szStat%, LBGesture2
	GuiControl, %szStat%, LVAction
	GuiControl, %szStat%, BActionUp
	GuiControl, %szStat%, BActionDelete
	GuiControl, %szStat%, BActionDown
	GuiControl, %szStat%, EAction
	GuiControl, %szStat%, BEditAction
	GuiControl, %szStat%, BClearAction
	GuiControl, %szStat%, BAddActionLine
}


;-------------------------------------------------------------------------------
; On 8-Dir Change
;														Implemented by Pyonkichi
;-------------------------------------------------------------------------------
On8DirChange:
	GuiControlGet, chk,, Config_8Dir
	MG_CtrlStat := chk ? "Enable" : "Disable"
	GuiControl, %MG_CtrlStat%, Label15
	GuiControl, %MG_CtrlStat%, Config_LongThreshold
	GuiControl, %MG_CtrlStat%, UDLongThreshold
	GuiControl, %MG_CtrlStat%, Label16
	GuiControl, %MG_CtrlStat%, Config_ORangeDefault
	GuiControl, %MG_CtrlStat%, Label17
	GuiControl, %MG_CtrlStat%, Config_ORangeA
	GuiControl, %MG_CtrlStat%, Label18
	GuiControl, %MG_CtrlStat%, Config_ORangeB
return

;-------------------------------------------------------------------------------
; On Hotkey Change
;														Implemented by Pyonkichi
;-------------------------------------------------------------------------------
OnHotkeyChange:
	Gui, Submit, Nohide
	if (Config_HotkeyEnable = Config_HotkeyNavi)
	{
		if (A_GuiControl = "Config_HotkeyEnable") {
			GuiControl, , Config_HotkeyNavi
		}
		else {
			GuiControl, , Config_HotkeyEnable
		}
	}
return

;-------------------------------------------------------------------------------
; On Browse Script Editor Press
;														Implemented by Pyonkichi
;-------------------------------------------------------------------------------
OnBrowseEditor:
	FileSelectFile, Config_ScriptEditor,,, %ME_LngCapt005%, %ME_LngText556%
	if (Config_ScriptEditor) {
		GuiControl,, Config_ScriptEditor, %Config_ScriptEditor%
	}
return


;-------------------------------------------------------------------------------
; On Adjust Dialog Height Change
;														Implemented by Pyonkichi
;-------------------------------------------------------------------------------
OnAdjustDlgHeight:
	GuiControlGet, chk,, Config_AdjustDlg
	MG_CtrlStat := chk ? "Enable" : "Disable"
	GuiControl, %MG_CtrlStat%, Label58
	GuiControl, %MG_CtrlStat%, Config_DlgHeightLimit
	GuiControl, %MG_CtrlStat%, UDDlgHeightLimit
	AdjustDialogHeight(!chk)
return

;-------------------------------------------------------------------------------
; On Register to Startup
;														Implemented by Pyonkichi
;-------------------------------------------------------------------------------
OnRegStartup:
	bAdmin:=false
	if (MG_IsNewOS())
	{
		MsgBox, 4, %ME_LngCapt001%, %ME_LngMessage008%
		IfMsgBox, Yes
		{
			bAdmin:=true
		}
	}
	if (bAdmin) {
		FileDelete, %A_Startup%\MouseGestureL.lnk
		bResult := RegisterTaskScheduler(A_ScriptDir . "\MouseGestureL.ahk")
	}
	else {
		RegisterTaskScheduler("Delete")
		bResult := RegisterStartup()
	}
	if (bResult) {
		MsgBox,, %ME_LngCapt001%, %ME_LngMessage009%
	}
return

RegisterTaskScheduler(szMGL)
{
	if (!MG_IsNewOS()) {
		return
	}
	szPath := A_Temp . "\~MG_SchTasks.bat"
	file := FileOpen(szPath, "w `n")
	if (!file) {
		return
	}
	if (szMGL != "Delete") {
		szCommand := "SCHTASKS /Create /TN ""MouseGestureL.ahk"" /TR ""\"""
		szCommand .= A_AhkPath . "\"" \""" . szMGL
		szCommand .= "\"""" /SC ONLOGON /RL HIGHEST /F`n"
	}
	else {
		szCommand := "SCHTASKS /Delete /TN ""MouseGestureL.ahk"" /F`n"
	}
	szCommand .= "EXIT /B %ERRORLEVEL%"
	file.Write(szCommand)
	file.Close

	RunWait, *runas %szPath%,, Hide UseErrorLevel
	bResult := !ErrorLevel
	FileDelete, %szPath%
	return bResult
}

RegisterStartup()
{
	if (A_AhkPath = (A_ScriptDir . "\MouseGestureL.exe")) {
		szPath := A_AhkPath
	} else {
		szPath := A_ScriptDir . "\MouseGestureL.ahk"
	}
	FileCreateShortcut, %szPath%, %A_Startup%\MouseGestureL.lnk, %A_ScriptDir%,, MouseGestureL.ahk
	return % !ErrorLevel
}

;-------------------------------------------------------------------------------
; On Remove from Startup
;														Implemented by Pyonkichi
;-------------------------------------------------------------------------------
OnDelStartup:
	FileDelete, %A_Startup%\MouseGestureL.lnk
	bResult := !ErrorLevel
	bResult |= RegisterTaskScheduler("Delete")
	if (bResult) {
		MsgBox,, %ME_LngCapt001%, %ME_LngMessage010%
	}
return

;-------------------------------------------------------------------------------
; On Hint Type Change
;														Implemented by Pyonkichi
;-------------------------------------------------------------------------------
OnNaviChange:
	GuiControlGet, idx, , Config_UseExNavi

	MG_CtrlStat := (idx==2 || idx==3) ? "Enable" : "Disable"
	GuiControl, %MG_CtrlStat%, Config_ExNaviTransBG
	GuiControl, %MG_CtrlStat%, Label29
	GuiControl, %MG_CtrlStat%, Config_ExNaviFG
	GuiControl, %MG_CtrlStat%, Label30
	GuiControl, %MG_CtrlStat%, Config_ExNaviBG
	GuiControl, %MG_CtrlStat%, ExNaviIdvClr
	GuiControl, %MG_CtrlStat%, Label31
	GuiControl, %MG_CtrlStat%, Config_ExNaviTranspcy
	GuiControl, %MG_CtrlStat%, UDExNaviTranspcy
	GuiControl, %MG_CtrlStat%, Label32
	GuiControl, %MG_CtrlStat%, Config_ExNaviSize
	GuiControl, %MG_CtrlStat%, UDExNaviSize
	GuiControl, %MG_CtrlStat%, Label33
	GuiControl, %MG_CtrlStat%, Config_ExNaviSpacing
	GuiControl, %MG_CtrlStat%, UDExNaviSpacing
	GuiControl, %MG_CtrlStat%, Label34
	GuiControl, %MG_CtrlStat%, Config_ExNaviPadding
	GuiControl, %MG_CtrlStat%, UDExNaviPadding
	GuiControl, %MG_CtrlStat%, Label35
	GuiControl, %MG_CtrlStat%, Config_ExNaviMargin
	GuiControl, %MG_CtrlStat%, UDExNaviMargin

	MG_CtrlStat := (idx==4 || idx==5) ? "Enable" : "Disable"
	GuiControl, %MG_CtrlStat%, Config_AdNaviOnClick
	GuiControl, %MG_CtrlStat%, Label36
	GuiControl, %MG_CtrlStat%, Config_AdNaviFG
	GuiControl, %MG_CtrlStat%, Label37
	GuiControl, %MG_CtrlStat%, Config_AdNaviNI
	GuiControl, %MG_CtrlStat%, Label38
	GuiControl, %MG_CtrlStat%, Config_AdNaviBG
	GuiControl, %MG_CtrlStat%, Label39
	GuiControl, %MG_CtrlStat%, Config_AdNaviTranspcy
	GuiControl, %MG_CtrlStat%, UDAdNaviTranspcy
	GuiControl, %MG_CtrlStat%, Label40
	GuiControl, %MG_CtrlStat%, Config_AdNaviFont
	GuiControl, %MG_CtrlStat%, Label41
	GuiControl, %MG_CtrlStat%, Config_AdNaviSize
	GuiControl, %MG_CtrlStat%, UDAdNaviSize
	GuiControl, %MG_CtrlStat%, Label42
	GuiControl, %MG_CtrlStat%, Config_AdNaviPosition
	GuiControl, %MG_CtrlStat%, Label43
	GuiControl, %MG_CtrlStat%, Config_AdNaviPaddingL
	GuiControl, %MG_CtrlStat%, UDAdNaviPaddingL
	GuiControl, %MG_CtrlStat%, Label44
	GuiControl, %MG_CtrlStat%, Config_AdNaviPaddingR
	GuiControl, %MG_CtrlStat%, UDAdNaviPaddingR
	GuiControl, %MG_CtrlStat%, Label45
	GuiControl, %MG_CtrlStat%, Config_AdNaviPaddingT
	GuiControl, %MG_CtrlStat%, UDAdNaviPaddingT
	GuiControl, %MG_CtrlStat%, Label46
	GuiControl, %MG_CtrlStat%, Config_AdNaviPaddingB
	GuiControl, %MG_CtrlStat%, UDAdNaviPaddingB
	GuiControl, %MG_CtrlStat%, Label47
	GuiControl, %MG_CtrlStat%, Config_AdNaviRound
	GuiControl, %MG_CtrlStat%, UDAdNaviRound
	GuiControl, %MG_CtrlStat%, Label48
	GuiControl, %MG_CtrlStat%, Config_AdNaviMargin
	GuiControl, %MG_CtrlStat%, UDAdNaviMargin
	GuiControl, %MG_CtrlStat%, Label49
	GuiControl, %MG_CtrlStat%, Config_AdNaviSpaceX
	GuiControl, %MG_CtrlStat%, UDAdNaviSpaceX
	GuiControl, %MG_CtrlStat%, Label50
	GuiControl, %MG_CtrlStat%, Config_AdNaviSpaceY
	GuiControl, %MG_CtrlStat%, UDAdNaviSpaceY

	Gosub, OnExNaviTransBGChange
return

;-------------------------------------------------------------------------------
; On Arrow Hints Transparent Background Change
;														Implemented by Pyonkichi
;-------------------------------------------------------------------------------
OnExNaviTransBGChange:
	MG_CtrlStat := "Disable"
	GuiControlGet, idx, , Config_UseExNavi
	if (idx==2 || idx==3)
	{
		GuiControlGet, chk,, Config_ExNaviTransBG
		MG_CtrlStat := chk ? "Disable" : "Enable"
	}
	GuiControl, %MG_CtrlStat%, Label30
	GuiControl, %MG_CtrlStat%, Config_ExNaviBG
return

;-------------------------------------------------------------------------------
; Set Individual Colors of Arrow Hints
;														Implemented by Pyonkichi
;-------------------------------------------------------------------------------
OnExNaviIdvClr:
	DlgExNaviIndividualColor()
return
DlgExNaviIndividualColor()
{
	global
	static idxRow
	idxRow := 0
	Gui, MGW_Color:New
	Gui, MGW_Color:Default
	Gui, MGW_Color:+Delimiter`n -MaximizeBox -MinimizeBox +HWNDhMGW_Color +Owner1
	Gui, MGW_Color:Add, ListView, x10 y10 w184 h172 LV1 section -Multi NoSortHdr vLVColors gOnTriggerSelect AltSubmit, %ME_LngListView003%
	LV_ModifyCol(1, 70)
	LV_ModifyCol(2, 90)
	Gui, MGW_Color:ListView, LVColors
	GuiControl, MGW_Color: -Redraw, LVColors
	LV_Delete()
	local szColor
	Loop, Parse, Buttons, `n
	{
		szColor := Config_ExNaviFG_%A_LoopField%
		LV_Add("", A_LoopField, szColor)
	}
	GuiControl, MGW_Color: +Redraw, LVColors
	Gui, MGW_Color:Add, Text, xs-2 y+10 w68 Right, %ME_LngText210%
	Gui, MGW_Color:Add, Edit, x+6 yp-4 w91 Limit6 Disabled vEArrowColor gOnArrowColorChanged
	Gui, MGW_Color:Add, TreeView, x+1 w20 h20 vColorBox
	Gui, MGW_Color:Add, Button, gOnAcceptColor x+-168 y+10 w80, %ME_LngButton001%
	Gui, MGW_Color:Add, Button, gOnCancelColor x+8 yp+0 w80, %ME_LngButton002%
	Gui, MGW_Color:Show,, %ME_LngCapt006%

	WinWaitClose,  ahk_id %hMGW_Color%
	Gui, 1:Default
	return

	;---------------------------------------------------------------------------
	; Trigger is selected
OnTriggerSelect:
	idxRow := LV_GetNext()
	if (!idxRow)
	{
		GuiControl, MGW_Color: Disable, EArrowColor
		GuiControl, MGW_Color:, EArrowColor,
		GuiControl, MGW_Color: +BackgroundFFFFFF, ColorBox
		return
	}
	if (A_GuiEvent!="Normal" && A_GuiEvent!="K") {
		return
	}
	GuiControl, MGW_Color: Enable, EArrowColor
	LV_GetText(szColor, idxRow, 2)
	GuiControl, MGW_Color:, EArrowColor, %szColor%
	return

	;---------------------------------------------------------------------------
	; On Arrow Color Change
OnArrowColorChanged:
	if (!idxRow) {
		return
	}
	GuiControlGet, szColor, MGW_Color:, EArrowColor
	LV_Modify(idxRow, "Col2", szColor)
	if (szColor = "") {
		szColor := "FFFFFF"
	}
	GuiControl, MGW_Color: +Background%szColor%, ColorBox
	return

	;---------------------------------------------------------------------------
	; Accepted
OnAcceptColor:
	Loop, % LV_GetCount()
	{
		LV_GetText(szColor, A_Index, 2)
		local szTrigger
		LV_GetText(szTrigger, A_Index, 1)
		if (szColor != "")
		{
			CorrectColorHex(szColor, true)
			Config_ExNaviFG_%szTrigger% := szColor
		}
		else if (Config_ExNaviFG_%szTrigger%)
		{
			Config_ExNaviFG_%szTrigger% := ""
		}
	}
	Gui, MGW_Color:Destroy
	return

	;---------------------------------------------------------------------------
	; Canceled
OnCancelColor:
MGW_ColorGuiClose:
MGW_ColorGuiEscape:
	Gui, MGW_Color:Destroy
	return
}

;-------------------------------------------------------------------------------
; Correct Color Hex String
;														Implemented by Pyonkichi
;-------------------------------------------------------------------------------
CorrectColorHex(ByRef szColor, fLength=false)
{
	StringUpper, szColor, szColor
	szColor := RegExReplace(szColor, "[^0-9A-F]")
	if (fLength)
	{
		len := StrLen(szColor)
		Loop, % (6 - len)
		{
			szColor := "0" . szColor
		}
	}
}

;-------------------------------------------------------------------------------
; On Hint Display Position Change
;														Implemented by Pyonkichi
;-------------------------------------------------------------------------------
OnNaviPosChange:
	GuiControlGet, idx, , Config_AdNaviPosition
	stat := (idx==1) ? "Show" : "Hide"
	GuiControl, %stat%, Label48
	GuiControl, %stat%, Config_AdNaviMargin
	GuiControl, %stat%, UDAdNaviMargin
	stat := (idx==1) ? "Hide" : "Show"
	GuiControl, %stat%, Label49
	GuiControl, %stat%, Config_AdNaviSpaceX
	GuiControl, %stat%, UDAdNaviSpaceX
	GuiControl, %stat%, Label50
	GuiControl, %stat%, Config_AdNaviSpaceY
	GuiControl, %stat%, UDAdNaviSpaceY
return

;-------------------------------------------------------------------------------
; On Show Trail Change
;														Implemented by Pyonkichi
;-------------------------------------------------------------------------------
OnShowTrailChange:
	GuiControlGet, chk, , Config_ShowTrail
	MG_CtrlStat := chk ? "Enable" : "Disable"
	GuiControl, %MG_CtrlStat%, Config_DrawTrailWnd
	GuiControl, %MG_CtrlStat%, Label51
	GuiControl, %MG_CtrlStat%, Config_TrailColor
	GuiControl, %MG_CtrlStat%, Label52
	GuiControl, %MG_CtrlStat%, Config_TrailTranspcy
	GuiControl, %MG_CtrlStat%, UDTrailTranspcy
	GuiControl, %MG_CtrlStat%, Label53
	GuiControl, %MG_CtrlStat%, Config_TrailWidth
	GuiControl, %MG_CtrlStat%, UDTrailWidth
	GuiControl, %MG_CtrlStat%, Label54
	GuiControl, %MG_CtrlStat%, Config_TrailStartMove
	GuiControl, %MG_CtrlStat%, UDTrailStartMove
	GuiControl, %MG_CtrlStat%, Label55
	GuiControl, %MG_CtrlStat%, Config_TrailInterval
	GuiControl, %MG_CtrlStat%, UDTrailInterval
return

;-------------------------------------------------------------------------------
; Show Help Document
;														Implemented by Pyonkichi
;-------------------------------------------------------------------------------
ShowHelp:
	MG_ShowHelp()
return




Dir1:
	Gui,Submit,NoHide
	if(Config_8Dir){
		GuiControl,,EGesture,%EGesture%1
	}
return

Dir2:
	Gui,Submit,NoHide
	if(Config_8Dir){
		GuiControl,,EGesture,%EGesture%2
	}else{
		GuiControl,,EGesture,%EGesture%D
	}
return

Dir3:
	Gui,Submit,NoHide
	if(Config_8Dir){
		GuiControl,,EGesture,%EGesture%3
	}
return

Dir4:
	Gui,Submit,NoHide
	if(Config_8Dir){
		GuiControl,,EGesture,%EGesture%4
	}else{
		GuiControl,,EGesture,%EGesture%L
	}
return

Dir6:
	Gui,Submit,NoHide
	if(Config_8Dir){
		GuiControl,,EGesture,%EGesture%6
	}else{
		GuiControl,,EGesture,%EGesture%R
	}
return

Dir7:
	Gui,Submit,NoHide
	if(Config_8Dir){
		GuiControl,,EGesture,%EGesture%7
	}
return

Dir8:
	Gui,Submit,NoHide
	if(Config_8Dir){
		GuiControl,,EGesture,%EGesture%8
	}else{
		GuiControl,,EGesture,%EGesture%U
	}
return

Dir9:
	Gui,Submit,NoHide
	if(Config_8Dir){
		GuiControl,,EGesture,%EGesture%9
	}
return

LBButtons:
	if (A_GuiEvent="DoubleClick")
	{
		Gui, Submit, NoHide
		if (LBGesture1) {
			GuiControl,,EGesture,% EGesture . Button_%LBButtons% . "_"
		}
	}
return

BButtonUp:
	Gui,Submit,NoHide
	GuiControl,,EGesture,%EGesture%_
return

TargetNew:
	SaveModification()
	EnableRuleControls()
	Target_Count++
	Target_%Target_Count%_Name	:= "Target_" . Target_Count
	Target_%Target_Count%_Count	:= 0
	Target_%Target_Count%_IsAnd	:= 0
	ClearRule()
	ShowTargets()
	ShowTarget(Target_Count)
	AdjustDialogHeight()
	SaveModification("Reset")
return
EnableRuleControls()
{
	GuiControl, Enable, BRulePicker
	GuiControl, Enable, ERuleValue
	GuiControl, Enable, ChkNotMatch
}

TargetUp:
	if (Target_Editing > 1) {
		TargetSwap(Target_Editing-1, Target_Editing)
		ShowTargets()
		ShowTarget(Target_Editing-1)
	}
return

TargetDown:
	if (Target_Editing < Target_Count) {
		TargetSwap(Target_Editing, Target_Editing+1)
		ShowTargets()
		ShowTarget(Target_Editing+1)
	}
return

TargetSort:
	SaveModification()
	SortList("Target")
return

;-------------------------------------------------------------------------------
; Delete Target
;														Implemented by lukewarm
;														Modified by Pyonkichi
;-------------------------------------------------------------------------------
TargetDelete:
	TargetDelete()
return
TargetDelete()
{
	local szGes = CheckTargetUsed(Target_%Target_Editing%_Name)
	local szInc = CheckTargetIncluded(Target_%Target_Editing%_Name, "#Check#")
	if (szGes!="" || szInc!="")
	{
		local szTarget := RegExReplace(ME_LngMessage001, "\[#REPLASE#\]", Target_%Target_Editing%_Name)
		local szMsg := ""
		if (szGes!="") {
			szMsg := szTarget . RegExReplace(ME_LngMessage003, "\[#REPLASE#\]", szGes)
		}
		if (szInc!="") {
			szMsg .= szTarget . RegExReplace(ME_LngMessage004, "\[#REPLASE#\]", szInc)
		}
		szMsg .= ME_LngMessage005
		MsgBox, 1, %ME_LngCapt003%, %szMsg%
		IfMsgBox, Cancel
		{
			return
		}
	}
	CheckTargetUsed(Target_%Target_Editing%_Name, "Delete")
	CheckTargetIncluded(Target_%Target_Editing%_Name)
	Loop, %Target_Count%
	{
		if (A_Index > Target_Editing) {
			TargetSwap(A_Index-1, A_Index)
		}
	}
	Target_Count--
	ClearRule()
	ShowTargets()
	ShowTarget(Target_Editing>Target_Count ? Target_Count : Target_Editing)
	AdjustDialogHeight()
	SaveModification("Reset")
}

;-------------------------------------------------------------------------------
; Check whether the target is used
;	szTarget : Target name to be checked
;	ope	 : "Delete" -> Delete bound actions
;														Implemented by Pyonkichi
;-------------------------------------------------------------------------------
CheckTargetUsed(szTarget, ope="")
{
	local szList := ""
	Loop, %Gesture_Count%
	{
		local ges := A_Index
		Loop, % Gesture_%A_Index%_Count
		{
			if (Gesture_%ges%_%A_Index%_Target = szTarget)
			{
				if (ope = "Delete") {
					ActionDelete(ges, A_Index)
				}
				else
				{
					local szName := RegExReplace(ME_LngMessage001, "\[#REPLASE#\]", Gesture_%ges%_Name)
					Join(szList, szName, ME_LngMessage002)
				}
			}
		}
	}
	return szList
}

;-------------------------------------------------------------------------------
; Check whether the target is included
;	szTarget : Target name to be checked
;														Implemented by Pyonkichi
;-------------------------------------------------------------------------------
CheckTargetIncluded(szTarget, szNewName="")
{
	local szList := ""
	Loop, %Target_Count%
	{
		local idx1 := A_Index
		Loop, % Target_%idx1%_Count
		{
			local idx2 := A_Index
			if ((InStr(Target_%idx1%_%idx2%_Type, "Include") == 1)
			&&	(Target_%idx1%_%idx2%_Value = szTarget))
			{
				if (szNewName = "#Check#") {
					local szName := RegExReplace(ME_LngMessage001, "\[#REPLASE#\]", Target_%idx1%_Name)
					Join(szList, szName, ME_LngMessage002)
				}
				else if (szNewName != "") {
					Target_%idx1%_%idx2%_Value := szNewName
				}
				else {
					RuleDelete(idx1, idx2)
				}
			}
		}
	}
	return szList
}

TargetSwap(a,b){
	TargetMove(a,"tmp")
	TargetMove(b,a)
	TargetMove("tmp",b)
}

TargetMove(from,to)
{
	global
	Target_%to%_Name:=Target_%from%_Name
	Target_%to%_IsAnd:=Target_%from%_IsAnd
	Target_%to%_Count:=Target_%from%_Count
	Loop,% Target_%from%_Count
	{
		Target_%to%_%A_Index%_Type	:= Target_%from%_%A_Index%_Type
		Target_%to%_%A_Index%_Value := Target_%from%_%A_Index%_Value
		Target_%from%_%A_Index%_Type  := ""
		Target_%from%_%A_Index%_Value := ""
	}
}

;-------------------------------------------------------------------------------
; Sort List
;	list : Type of List Box ("Target" or "Gesture")
;														Implemented by Pyonkichi
;-------------------------------------------------------------------------------
SortList(list)
{
	global
	local funcMove := (list = "Target") ? Func("TargetMove")  : Func("GestureMove")
	local funcShow := (list = "Target") ? Func("ShowTargets") : Func("ShowGestures")
	local cntTemp, idxTgt, idxCmp, idxTmp, fPrior
	cntTemp = 0
	Loop, % %list%_Count
	{
		idxTgt := A_Index
		fPrior = 0
		Loop, %cntTemp%
		{
			idxCmp := A_Index
			if ((list = "Target")
			&&	(%list%_Temp%idxCmp%_Name = "Disable"))
			{
				continue
			}
			if ((%list%_%idxTgt%_Name < %list%_Temp%idxCmp%_Name)
			||	(%list%_%idxTgt%_Name = "Disable"))
			{
				fPrior = 1
				Loop, % (cntTemp-idxCmp+1)
				{
					idxTmp := cntTemp-(A_Index-1)
					funcMove.("Temp"idxTmp, "Temp"idxTmp+1)
				}
				funcMove.(idxTgt, "Temp"idxTmp)
				break
			}
		}
		cntTemp++
		if (!fPrior)
		{
			funcMove.(idxTgt, "Temp"cntTemp)
		}
	}
	Loop, % %list%_Count
	{
		funcMove.("Temp"A_Index, A_Index)
	}
	funcShow.()
}

;-------------------------------------------------------------------------------
; Rename Target
;														Implemented by lukewarm
;														Modified by Pyonkichi
;-------------------------------------------------------------------------------
TargetRename:
	Gui,Submit,NoHide
	idx:=0
	flag:=0
	Loop, % Gesture_Count
	{
		idx++
		jdx:=0
		Loop, % Gesture_%idx%_Count
		{
			jdx++
			if (Gesture_%idx%_%jdx%_Target = Target_%Target_Editing%_Name)
			{
				flag:=1
				break
			}
		}
		if(flag){
			break
		}
	}
	if (flag)
	{
		idx:=0
		Loop, % Gesture_Count
		{
			idx++
			jdx:=0
			Loop, % Gesture_%idx%_Count
			{
				jdx++
				if (Gesture_%idx%_%jdx%_Target = Target_%Target_Editing%_Name) {
					Gesture_%idx%_%jdx%_Target := ETargetName
				}
			}
		}
		ShowGestures()
		ShowGesture(Gesture_Editing)
	}
	CheckTargetIncluded(Target_%Target_Editing%_Name, ETargetName)
	Target_%Target_Editing%_Name := ETargetName
	ShowTargets()
	ShowTarget(Target_Editing)
return

ETargetNameChange:
	Gui, Submit, NoHide
	if (Target_Editing && !RegExMatch(ETargetName, "^(|" . MG_RuleNames . "|And|G|Default)$|[^\w]"))
	{
		Loop, %Target_Count%
		{
			if (Target_%A_Index%_Name = ETargetName) {
				GuiControl, Disable, BTargetRename
				return
			}
		}
		GuiControl, Enable, BTargetRename
	}
	else {
		GuiControl, Disable, BTargetRename
	}
return


;-------------------------------------------------------------------------------
; Show All Targets
;														Implemented by lukewarm
;-------------------------------------------------------------------------------
ShowTargets()
{
	global
	local str,str2
	Menu,menuTargetList,Add
	Menu,menuTargetList,DeleteAll
	Loop, %Target_Count%
	{
		Join(str,Target_%A_Index%_Name)
		if (Target_%A_Index%_Name != "Disable") {
			Join(str2,Target_%A_Index%_Name)
		}
		Menu,menuTargetList,Add,% Target_%A_Index%_Name,TargetListMenuSelect
	}
	GuiControl,,LBTarget,`n%str%
	GuiControl,,DDLTarget,`nDefault`n%Str2%
	GuiControl,Choose,DDLTarget,1
}

;-------------------------------------------------------------------------------
; Select Target
;														Implemented by lukewarm
;														Modified by Pyonkichi
;-------------------------------------------------------------------------------
LBTargetSelect:
	Gui,Submit,NoHide
	SaveModification()
	EnableRuleControls()
	ShowTarget(LBTarget)
	Gui, ListView, LVRule
	LV_Modify(1, "Select")
	ShowRule(Target_Editing, 1)
return
ShowTarget(idx)
{
	local v
	Target_Editing := idx
	GuiControl,,ETargetName,% Target_%idx%_Name
	Gui,ListView,LVRule
	GuiControl,-Redraw,LVRule
	LV_Delete()
	Loop, % Target_%idx%_Count {
		LV_Add("", Target_%idx%_%A_Index%_Type, Target_%idx%_%A_Index%_Value)
	}
	GuiControl,+Redraw,LVRule
	if(Target_%idx%_Name="Disable"){
		GuiControl,Disable,BTargetDelete
		GuiControl,Disable,BTargetRename
	}else{
		GuiControl,Enable,BTargetDelete
		GuiControl,Enable,BTargetRename
	}
	GuiControl,Enable,BCopyTarget
	GuiControl, Choose, DDLLogic, % Target_%idx%_IsAnd + 1
	GuiControlGet,v,FocusV
	if(v!="LBTarget"){
		GuiControl,Choose,LBTarget,%idx%
	}
}
DDLLogicChoose:
	Gui,Submit,NoHide
	Target_%Target_Editing%_IsAnd := DDLLogic - 1
return
;-------------------------------------------------------------------------------







RuleUp:
	if(Rule_Editing>1){
		RuleSwap(Target_Editing,Rule_Editing-1,Rule_Editing)
		ShowTarget(Target_Editing)
		ShowRule(Target_Editing,Rule_Editing-1)
	}
return
RuleDown:
	if(Rule_Editing<Target_%Target_Editing%_Count){
		RuleSwap(Target_Editing,Rule_Editing,Rule_Editing+1)
		ShowTarget(Target_Editing)
		ShowRule(Target_Editing,Rule_Editing+1)
	}
return

RuleDelete:
	RuleDelete(Target_Editing, Rule_Editing)
	ShowTarget(Target_Editing)
	ShowRule(Target_Editing,(Rule_Editing>Target_%Target_Editing%_Count) ? Target_%Target_Editing%_Count : Rule_Editing)
return

RuleDelete(target, idx)
{
	global
	Loop
	{
		idx++
		RuleMove(target, idx, idx-1)
		if (idx >= Target_%target%_Count) {
			break
		}
	}
	Target_%target%_%idx%_Type  := ""
	Target_%target%_%idx%_Value := ""
	Target_%target%_Count--
}

RuleSwap(target,a,b){
	RuleMove(target,a,"tmp")
	RuleMove(target,b,a)
	RuleMove(target,"tmp",b)
}
RuleMove(target,from,to){
	global
	Target_%target%_%to%_Type  := Target_%target%_%from%_Type
	Target_%target%_%to%_Value := Target_%target%_%from%_Value
}




;-------------------------------------------------------------------------------
; Check whether the Rule is Changed
;														Implemented by Pyonkichi
;-------------------------------------------------------------------------------
LVRuleSelect:
	IsRuleChanged()
return
IsRuleChanged()
{
	global
	if (A_GuiEvent!="Normal" && A_GuiEvent!="K") {
		return
	}
	Gui, ListView, %A_GuiControl%
	local idx := LV_GetNext()
	if (idx == Rule_Editing) {
		return
	}
	SaveModification()
	ShowRule(Target_Editing, idx)
}

;-------------------------------------------------------------------------------
; Show Rule
;														Implemented by lukewarm
;														Modified by Pyonkichi
;-------------------------------------------------------------------------------
ShowRule(target, idx)
{
	global
	local szStat := (idx!=0) ? "Enable" : "Disable"
	GuiControl, %szStat%, BRuleUp
	GuiControl, %szStat%, BRuleDelete
	GuiControl, %szStat%, BRuleDown
	if (idx==0)
	{
		GuiControl, Disable, BAddRule
		GuiControl, Disable, BUpdateRule
		return
	}
	Rule_Editing := idx
	local szType := RegExReplace(Target_%target%_%idx%_Type, "_.+$")
	GuiControl, Choose, DDLRuleType, % RuleType_%szType%
	GuiControl, -g, ERuleValue
	GuiControl,, ERuleValue, % Target_%target%_%idx%_Value
	GuiControl, +gOnRuleEditModify, ERuleValue

	local invert, method
	GetMatchRule(Target_%target%_%idx%_Type, invert, method)
	GuiControl,, ChkNotMatch, %invert%
	GuiControl, Choose, DDLMatchRule, %method%
	UpdateRuleCtrlStat()
	if (Target_Editing == target)
	{
		Gui, ListView, LVRule
		LV_Modify(idx, "Select")
	}
}

;-------------------------------------------------------------------------------
; Get Matching Rule
;														Implemented by Pyonkichi
;-------------------------------------------------------------------------------
GetMatchRule(szType, ByRef invert, ByRef method)
{
	local $, $1, $2
	RegExMatch(szType, "^.+_(.)(.?)", $)

	invert := 0, method := 1
	Loop, 2
	{
		if ($%A_Index% = "N") {
			invert := 1
		}
		else if ($%A_Index% = "P") {
			method := 2
		}
		else if ($%A_Index% = "T") {
			method := 3
		}
		else if ($%A_Index% = "B") {
			method := 4
		}
		else if ($%A_Index% = "R") {
			method := 5
		}
	}
}

ClearRule()
{
	global
	Rule_Editing=0
	GuiControl,Choose,DDLRuleType,1
	GuiControl, -g, ERuleValue
	GuiControl,,ERuleValue,
	GuiControl, +gOnRuleEditModify, ERuleValue
	GuiControl,Disable,BRuleUp
	GuiControl,Disable,BRuleDelete
	GuiControl,Disable,BRuleDown
	UpdateRuleCtrlStat()
}

BAddRulePress:
	Gui,Submit,NoHide
	AddRule(Target_Editing, DDLRuleType, ERuleValue)
	SaveModification("Reset")
return
AddRule(tgt, type, val)
{
	local idx
	idx := ++Target_%tgt%_Count
	UpdateRule(tgt, idx, type, val)
}

BUpdateRulePress:
	Gui,Submit,NoHide
	UpdateRule(Target_Editing, Rule_Editing, DDLRuleType, ERuleValue)
	SaveModification("Reset")
return
UpdateRule(tgt, idx, type, val)
{
	local szRuleType
	MakeRuleTypeStr(szRuleType, type)
	Target_%tgt%_%idx%_Type  := szRuleType
	Target_%tgt%_%idx%_Value := val
	if (Target_Editing == tgt)
	{
		ShowTarget(tgt)
		ShowRule(tgt, idx)
	}
}

ClearRulePress:
	GuiControl,, ERuleValue
return

;-------------------------------------------------------------------------------
; On Rule Type Change
;														Implemented by Pyonkichi
;-------------------------------------------------------------------------------
OnRuleTypeChange:
	UpdateRuleCtrlStat(true)
return
UpdateRuleCtrlStat(fModify=false)
{
	global
	Gui, Submit, NoHide
	local szRuleType
	MakeRuleTypeStr(szRuleType, DDLRuleType)
	MG_CtrlStat := (LBTarget && ERuleValue && !MG_RuleExists(Target_Editing, szRuleType, ERuleValue)) ? "Enable" : "Disable"
	GuiControl, %MG_CtrlStat%, BAddRule
	if (!Rule_Editing) {
		MG_CtrlStat := "Disable"
	}
	GuiControl, %MG_CtrlStat%, BUpdateRule

	MG_CtrlStat := (DDLRuleType < 5) ? "Enable" : "Disable"
	GuiControl, %MG_CtrlStat%, Label4
	GuiControl, %MG_CtrlStat%, DDLMatchRule
	if (fModify) {
		SaveModification("Modified", "ERuleValue")
	}
}

;-------------------------------------------------------------------------------
; Make Rule Type String
;														Implemented by Pyonkichi
;-------------------------------------------------------------------------------
MakeRuleTypeStr(ByRef szRuleType, type)
{
	global
	szRuleType := RuleType_%type%
	if (ChkNotMatch) {
		szRuleType .= "_N"
	}
	if (type >= 5) {
		return
	}
	if (DDLMatchRule == 2) {
		szRuleType .= ChkNotMatch ? "P" : "_P"
	}
	else if (DDLMatchRule == 3) {
		szRuleType .= ChkNotMatch ? "T" : "_T"
	}
	else if (DDLMatchRule == 4) {
		szRuleType .= ChkNotMatch ? "B" : "_B"
	}
	else if (DDLMatchRule == 5) {
		szRuleType .= ChkNotMatch ? "R" : "_R"
	}
}


;-------------------------------------------------------------------------------
; On Rule Edit Modify
;														Implemented by Pyonkichi
;-------------------------------------------------------------------------------
OnRuleEditModify:
	Gui, Submit, Nohide
	SaveModification("Modified", "ERuleValue")
	UpdateRuleCtrlStat()
return


;-------------------------------------------------------------------------------
; Rule Picker Button
;														Implemented by lukewarm
;-------------------------------------------------------------------------------
BRulePickerPressed:
	Gui,Submit,NoHide
	if (DDLRuleType<5)
	{
		SetTimer,RulePickerTimer,10
		Hotkey,RButton up,RulePickerHotkey,On
	}
	else if (DDLRuleType=5) {
		Menu,CustomExpressions,Show
	}
	else if (DDLRuleType=6) {
		Menu,menuTargetList,Show
	}
return

RulePickerTimer:
	Tooltip, %ME_LngTooltip003%
return

RulePickerHotkey:
	CoordMode,Mouse,Screen
	MouseGetPos,MG_X,MG_Y,MG_HWND,MG_HCTL,3
	SendMessage,0x84,0,% MG_Y<<16|MG_X,,ahk_id %MG_HCTL%
	If ErrorLevel=4294967295
	{
		MouseGetPos,,,,MG_HCTL,2
	}
	if (DDLRuleType=1) {
		WinGetClass,ERuleValue,ahk_id %MG_HWND%
	}
	else if(DDLRuleType=2) {
		WinGetClass,ERuleValue,ahk_id %MG_HCTL%
	}
	else if(DDLRuleType=3) {
		WinGet,ERuleValue,ProcessName,ahk_id %MG_HWND%
	}
	else {
		WinGetTitle,ERuleValue,ahk_id %MG_HWND%
	}
	GuiControl,,ERuleValue,%ERuleValue%
	SetTimer,RulePickerTimer,Off
	Hotkey,RButton up,Off
	Tooltip
return


TargetListMenuSelect:
	GuiControl,,ERuleValue,%A_ThisMenuItem%
return


;-------------------------------------------------------------------------------
; Get Rectangle Coordinates
;														Implemented by Pyonkichi
;-------------------------------------------------------------------------------
GetRectRelative:
	GetRectByDrag(RX, RY, RW, RH, TW, TH, 0)
	DlgRectSettings(RX, RY, RW, RH, TW, TH, 0)
return

GetRectAbsolute:
	GetRectByDrag(RX, RY, RW, RH, TW, TH, 1)
	DlgRectSettings(RX, RY, RW, RH, TW, TH, 1)
return

;-------------------------------------------------------------------------------
; Get Rectangle Coordinates by Mouse Dragging
;	rcX, rcY	: X-Y coordinates of Rectangular Region
;	rcW, rcH	: Width and Height of Rectangular Region
;	tgW, tgH	: Width and Height of Target Window
;	target		: 0:Target is Active Window
;				  1:Target is Screen
;														Implemented by Pyonkichi
;-------------------------------------------------------------------------------
GetRectByDrag(ByRef rcX, ByRef rcY, ByRef rcW, ByRef rcH, ByRef tgW, ByRef tgH, target) 
{
	global ME_LngTooltip005
	Hotkey, LButton, Dummy, On
	While (!GetKeyState("LButton", "P"))
	{
		Tooltip, %ME_LngTooltip005%
		Sleep, 10
	}
	if (target==0)
	{
		MouseGetPos, , , hwnd
		WinGetPos, , , tgW, tgH, ahk_id %hwnd%
		WinActivate, ahk_id %hwnd%
		CoordMode, Mouse, Relative
		MouseGetPos, rx1, ry1
	}
	else
	{
		tgW := A_ScreenWidth
		tgH := A_ScreenHeight
	}
	CoordMode, Mouse, Screen
	MouseGetPos, x1, y1

	Gui, MGW_CaptRect:New
	Gui, MGW_CaptRect:-Caption +HWNDhMGW_CaptRect +ToolWindow +Border +AlwaysOnTop +LastFound
	WinSet, Transparent, 127
	Gui, MGW_CaptRect:Color, 0x0000ff

	While (GetKeyState("LButton", "P"))
	{
		MouseGetPos, x2, y2
		winX := (x1 < x2) ? x1 : x2
		winY := (y1 < y2) ? y1 : y2
		winW := abs(x1 - x2)
		winH := abs(y1 - y2)
		Gui, MGW_CaptRect:Show, x%winX% y%winY% w%winW% h%winH% NA
		Tooltip, %ME_LngTooltip005%
		Sleep, 10
	}
	Tooltip
	Hotkey, LButton, Dummy, Off

	if (target==0)
	{
		x1:=rx1, y1:=ry1
		CoordMode, Mouse, Relative
	}
	MouseGetPos, x2, y2

	if (x1 > x2) 
	{
		temp:=x1, x1:=x2, x2:=temp
	}
	if (y1 > y2)
	{
		temp:=y1, y1:=y2, y2:=temp
	}
	rcX:=x1, rcY:=y1, rcW:=x2-x1+1, rcH:=y2-y1+1
}

;-------------------------------------------------------------------------------
; Setting Dialog of Rectangle Coordinates
;	rcX, rcY	: X-Y coordinates of Rectangular Region
;	rcW, rcH	: Width and Height of Rectangular Region
;	tgW, tgH	: Width and Height of Target Window
;	target		: 0:Target is Window
;				  1:Target is Screen
;														Implemented by Pyonkichi
;-------------------------------------------------------------------------------
DlgRectSettings(rcX, rcY, rcW, rcH, tgW, tgH, target)
{
	global
	local prevOrg:=1

	Gui, MGW_Rect:New
	Gui, MGW_Rect:-MaximizeBox -MinimizeBox +HWNDhMGW_Rect +AlwaysOnTop +OwnerMGW_CaptRect +Delimiter`n

	Gui, MGW_Rect:Add, Text, x12 y20 Section, %ME_LngText501%
	Gui, MGW_Rect:Add, Edit, x+4 yp-4 w62 vRectX 
	Gui, MGW_Rect:Add, UpDown, Range-2147483648-2147483647 +128
	GuiControl, MGW_Rect:, RectX, %rcX%
	GuiControl, MGW_Rect: +gOnRectChange, RectX

	Gui, MGW_Rect:Add, Text, x+12 ys, %ME_LngText502%
	Gui, MGW_Rect:Add, Edit, x+4 yp-4 w62 vRectY
	Gui, MGW_Rect:Add, UpDown, Range-2147483648-2147483647 +128
	GuiControl, MGW_Rect:, RectY, %rcY%
	GuiControl, MGW_Rect: +gOnRectChange, RectY

	Gui, MGW_Rect:Add, Text, x+12 ys, %ME_LngText503%
	Gui, MGW_Rect:Add, Edit, x+4 yp-4 w62 vRectW
	Gui, MGW_Rect:Add, UpDown, Range-2147483648-2147483647 +128
	GuiControl, MGW_Rect:, RectW, %rcW%
	GuiControl, MGW_Rect: +gOnRectChange, RectW

	Gui, MGW_Rect:Add, Text, x+12 ys, %ME_LngText504%
	Gui, MGW_Rect:Add, Edit, x+4 yp-4 w62 vRectH Section
	Gui, MGW_Rect:Add, UpDown, vRectHUD Range-2147483648-2147483647 +128
	GuiControl, MGW_Rect:, RectH, %rcH%
	GuiControl, MGW_Rect: +gOnRectChange, RectH

	GuiControlGet, rcCtrl, MGW_Rect:Pos, RectHUD
	local left := rcCtrlX + rcCtrlW - 350 - 1
	Gui, MGW_Rect:Add, Text, x%left% y+4 w350 Right cBlue, %ME_LngText505%

	local tblText := Array(ME_LngText506, ME_LngText507, ME_LngText508)
	local width := GetMaxTextLength(tblText)+8
	Gui, MGW_Rect:Add, Text, x12 y+14 w%width%, %ME_LngText506%
	Gui, MGW_Rect:Add, DropDownList, x+0 yp-4 w250 vRectTarget AltSubmit, %ME_LngDropDown101%
	GuiControl, MGW_Rect:Choose, RectTarget, % (target==0 ? 1 : 3)

	Gui, MGW_Rect:Add, Text, x12 y+12 w%width%, %ME_LngText507%
	Gui, MGW_Rect:Add, DropDownList, x+0 yp-4 w250 vRectOrg gOnOrgChanged Choose1 AltSubmit, %ME_LngDropDown102%

	Gui, MGW_Rect:Add, Text, x12 y+12 w%width%, %ME_LngText508%
	Gui, MGW_Rect:Add, DropDownList, x+0 yp-4 w250 vRectMode Choose1 AltSubmit, %ME_LngDropDown103%

	Gui, MGW_Rect:Add, Button, gOnAcceptRect xs-105 y+12 w80, %ME_LngButton001%
	Gui, MGW_Rect:Add, Button, gOnCancelRect x+8 yp+0 w80, %ME_LngButton002%
	Gui, MGW_Rect:Show, ,%ME_LngCapt007%

	WinWaitClose,  ahk_id %hMGW_Rect%
	return

	;---------------------------------------------------------------------------
	; Origin corner is changed
OnOrgChanged:
	Gui, MGW_Rect:Submit,NoHide
	if (prevOrg==1 || prevOrg==3)
	{
		if (RectOrg==2 || RectOrg==4) {
			RectX := -(tgW - RectX - 1)
		}
	}
	else
	{
		if (RectOrg==1 || RectOrg==3) {
			RectX := tgW + RectX - 1
		}
	}
	GuiControl, MGW_Rect:, RectX, %RectX%

	if (prevOrg==1 || prevOrg==2)
	{
		if (RectOrg==3 || RectOrg==4) {
			RectY := -(tgH - RectY - 1)
		}
	}
	else
	{
		if (RectOrg==1 || RectOrg==2) {
			RectY := tgH + RectY - 1
		}
	}
	GuiControl, MGW_Rect:, RectY, %RectY%

	prevOrg := RectOrg
	return

	;---------------------------------------------------------------------------
OnRectChange:
	Gui, MGW_Rect:Submit,NoHide
	local x, y, w, h
	WinGetPos, x, y, w, h, ahk_id %hMGW_CaptRect%
	x+=(RectX-rcX), y+=(RectY-rcY), w+=(RectW-rcW), h+=(RectH-rcH)
	WinMove, ahk_id %hMGW_CaptRect%,, %x%, %y%, %w%, %h%
	rcX:=RectX, rcY:=RectY, rcW:=RectW, rcH:=RectH
	return

	;---------------------------------------------------------------------------
	; Accepted
OnAcceptRect:
	Gui, MGW_Rect:Submit
	MG_SetRuleValue("MG_CursorInRect(" . RectX . "," . RectY . "," . RectW . "," . RectH . "," . RectTarget-1 . "," . RectOrg-1 . "," . RectMode-1 . ")")
	Gui, MGW_Rect:Destroy
	Gui, MGW_CaptRect:Destroy
	return

	;---------------------------------------------------------------------------
	; Canceled
OnCancelRect:
MGW_RectGuiClose:
MGW_RectGuiEscape:
	Gui, MGW_Rect:Destroy
	Gui, MGW_CaptRect:Destroy
	return
}




;-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
;
; Gesture Routines : ジェスチャー関連
;
;-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

GestureNew:
	SaveModification()
	EnableGestureControls()
	ClearAction()
	Gesture_Count++
	Gesture_%Gesture_Count%_Name	 := "Gesture_" . Gesture_Count
	Gesture_%Gesture_Count%_Patterns := ""
	Gesture_%Gesture_Count%_Count	 := 0
	ShowGestures()
	ShowGesture(Gesture_Count)
	AdjustDialogHeight()
	SaveModification("Reset")
return
EnableGestureControls()
{
	GuiControl, Enable, EGesture
	GuiControl, Enable, EAction
	GuiControl, Enable, BEditAction
	GuiControl, Enable, BClearAction
	GuiControl, Enable, BAddActionLine
	GuiControl, Disable, BGesturePatternUp
	GuiControl, Disable, BGesturePatternDelete
	GuiControl, Disable, BGesturePatternDown
	GuiControl, Disable, BUpdateGesturePattern
}

GestureUp:
	if(Gesture_Editing>1){
		GestureSwap(Gesture_Editing-1,Gesture_Editing)
		ShowGestures()
		ShowGesture(Gesture_Editing-1)
	}
return
GestureDown:
	if(Gesture_Editing<Gesture_Count){
		GestureSwap(Gesture_Editing,Gesture_Editing+1)
		ShowGestures()
		ShowGesture(Gesture_Editing+1)
	}
return

GestureSort:
	SaveModification()
	SortList("Gesture")
return

GestureDelete:
	if (!GestureDelete(Gesture_Editing)) {
		return
	}
	ClearAction()
	ShowGestures()
	ShowGesture((Gesture_Editing>Gesture_Count) ? Gesture_Count : Gesture_Editing)
	AdjustDialogHeight()
	SaveModification("Reset")
return
GestureDelete(idx)
{
	global
	if (Gesture_%idx%_Count > 0)
	{
		MsgBox, 1, %ME_LngCapt003%, %ME_LngMessage006%
		IfMsgBox, Cancel
		{
			return false
		}
	}
	Loop
	{
		idx++
		GestureMove(idx, idx-1)
		if (idx>=Gesture_Count) {
			break
		}
	}
	Gesture_Count--
	return true
}

GestureMove(from, to)
{
	global
	Gesture_%to%_Name	  := Gesture_%from%_Name
	Gesture_%to%_Patterns := Gesture_%from%_Patterns
	Gesture_%to%_Count	  := Gesture_%from%_Count
	Loop, % Gesture_%from%_Count
	{
		Gesture_%to%_%A_Index%_Target := Gesture_%from%_%A_Index%_Target
		Gesture_%to%_%A_Index%_Action := Gesture_%from%_%A_Index%_Action
		Gesture_%from%_%A_Index%_Target := ""
		Gesture_%from%_%A_Index%_Action := ""
	}
}

GestureSwap(a, b)
{
	GestureMove(a,"tmp")
	GestureMove(b,a)
	GestureMove("tmp",b)
}

GestureRename:
	GuiControlGet, GestureName,, % "EGestureName" . SubStr(A_GuiControl,0)
	Gesture_%Gesture_Editing%_Name = %GestureName%
	ShowGestures()
	ShowGesture(Gesture_Editing)
return

ShowGestures()
{
	global
	local str
	Loop, %Gesture_Count% {
		Join(str,Gesture_%A_Index%_Name)
	}
	GuiControl,,LBGesture1,`n%str%
	GuiControl,,LBGesture2,`n%str%
}

LBGestureSelect:
	Gui,Submit,NoHide
	SaveModification()
	ClearAction(true, false)
	EnableGestureControls()
	ShowGesture(%A_GuiControl%)
	GuiControl, Choose, LBGesturePattern, `n1
	GuiControl, -g, EGesture
	GuiControl,,EGesture,
	GuiControl, +gEGestureChange, EGesture
	Gui, ListView, LVAction
	LV_Modify(1, "Select")
	ShowAction(Gesture_Editing, 1)
return

ShowGesture(idx)
{
	local v
	Gesture_Editing:=idx
	GuiControlGet,v,FocusV
	if(v!="LBGesture1"){
		GuiControl,Choose,LBGesture1,%idx%
	}
	if(v!="LBGesture2"){
		GuiControl,Choose,LBGesture2,%idx%
	}
	GuiControl,,EGestureName1,% Gesture_%idx%_Name
	GuiControl,,EGestureName2,% Gesture_%idx%_Name
	GuiControl, Enable, BGestureDelete1
	GuiControl, Enable, BCopyGesture1
	GuiControl, Enable, BGestureRename1
	GuiControl, Enable, BGestureDelete2
	GuiControl, Enable, BCopyGesture2
	GuiControl, Enable, BGestureRename2
	GuiControl,,LBGesturePattern,% "`n" . Gesture_%idx%_Patterns
	
	Gui,ListView,LVAction
	GuiControl,-Redraw,LVAction
	LV_Delete()
	Loop, % Gesture_%idx%_Count {
		LV_Add("", Gesture_%idx%_%A_Index%_Target, Gesture_%idx%_%A_Index%_Action)
	}
	GuiControl,+Redraw,LVAction
	GuiControl,Enable,BAddAction
	GuiControl,Choose,LBGesturePattern,%GesturePattern_Editing%
	if (!Gesture_%idx%_Patterns)
	{
		GuiControl, -g, EGesture
		GuiControl,, EGesture,
		GuiControl, +gEGestureChange, EGesture
		EGestureChange(false)
	}
}


;-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
;
; Gesture Pattern : ジェスチャーパターン
;
;-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

GesturePatternUp:
if(GesturePatternSwap(Gesture_Editing,GesturePattern_Editing-1,GesturePattern_Editing)){
	ShowGesture(Gesture_Editing)
	ShowGesturePattern(Gesture_Editing,GesturePattern_Editing-1)
}
return

GesturePatternDown:
if(GesturePatternSwap(Gesture_Editing,GesturePattern_Editing,GesturePattern_Editing+1)){
	ShowGesture(Gesture_Editing)
	ShowGesturePattern(Gesture_Editing,GesturePattern_Editing+1)
}
return

GesturePatternDelete:
	GesturePatternDelete(Gesture_Editing,GesturePattern_Editing)
	ShowGesture(Gesture_Editing)
	ShowGesturePattern(Gesture_Editing,GesturePattern_Editing)
return

GesturePatternDelete(idxGes, idxPat)
{
	local szGes := ""
	Loop, Parse, Gesture_%idxGes%_Patterns,`n
	{
		if (A_Index != idxPat) {
			Join(szGes, A_LoopField)
		}
	}
	Gesture_%idxGes%_Patterns := szGes
}

GesturePatternSwap(g, a, b)
{
	local tmp
	StringSplit, tmp, Gesture_%g%_Patterns,`n
	if ((a<1) || (b<1) || (a>tmp0) || (b>tmp0)) {
		return
	}
	tmp := tmp%a%
	tmp%a% := tmp%b%
	tmp%b% := tmp
	tmp := ""
	Loop, %tmp0% {
		Join(tmp, tmp%A_Index%)
	}
	Gesture_%g%_Patterns := tmp
	return 1
}

LBGesturePatternSelect:
	Gui,Submit,NoHide
	SaveModification()
	ShowGesturePattern(Gesture_Editing, LBGesturePattern)
return

ShowGesturePattern(g, idx)
{
	global
	local szStat := (Gesture_%g%_Patterns && idx) ? "Enable" : "Disable"
	GuiControl, %szStat%, BGesturePatternUp
	GuiControl, %szStat%, BGesturePatternDelete
	GuiControl, %szStat%, BGesturePatternDown
	if (idx==0) {
		return
	}
	local cnt:=0, szLast:=""
	GuiControl, -g, EGesture
	Loop, Parse, Gesture_%g%_Patterns, `n
	{
		cnt++
		szLast:=A_LoopField
		if (A_Index == idx) {
			GuiControl,, EGesture, %A_LoopField%
			break
		}
	}
	if (idx > cnt) {
		idx:=cnt
		GuiControl,, EGesture, %szLast%
	}
	EGestureChange(false)
	GuiControl, +gEGestureChange, EGesture
	GesturePattern_Editing:=idx
	GuiControl, Choose, LBGesturePattern, %idx%
}

EGestureChange:
	EGestureChange()
return
EGestureChange(fSetModify=true)
{
	global
	Gui,Submit,NoHide
	local szStat := EGesture ? "Enable" : "Disable"
	GuiControl, %szStat%, BStrokeU
	GuiControl, %szStat%, BStrokeR
	GuiControl, %szStat%, BStrokeL
	GuiControl, %szStat%, BStrokeD
	GuiControl, %szStat%, BButtonUp
	GuiControl, %szStat%, BGesturePatternBS
	if (Config_8Dir)
	{
		GuiControl, %szStat%, BStrokeUR
		GuiControl, %szStat%, BStrokeDR
		GuiControl, %szStat%, BStrokeDL
		GuiControl, %szStat%, BStrokeUL
	}
	if (EGesture && fSetModify) {
		SaveModification("Modified", "EGesture")
	}
	if (!EGesture
	||	!RegExMatch(EGesture,"^([DLRU_12346789]|(" ButtonRegEx ")_)+$")
	||	MG_FindGesture(EGesture))
	{
		GuiControl, Disable, BAddGesturePattern
		GuiControl, Disable, BUpdateGesturePattern
		return
	}
	if (Gesture_Editing)
	{
		GuiControl, Enable, BAddGesturePattern
		if (GesturePattern_Editing) {
			GuiControl, Enable, BUpdateGesturePattern
		}
	}
}

GesturePatternBS:
	Gui,Submit,NoHide
	GuiControl,,EGesture,% RegExReplace(EGesture,"((" ButtonRegEx ")_|[DLRU_12346789])$")
return

AddGesturePattern:
	Gui,Submit,NoHide
	SaveModification("Reset")
	AddGesturePattern(Gesture_Editing,EGesture)
return
AddGesturePattern(g,p){
	global
	Join(Gesture_%Gesture_Editing%_Patterns,p)
	if(Gesture_Editing=g){
		ShowGesture(g)
	}
	local hCtrl
	GuiControlGet, hCtrl, Hwnd, LBGesturePattern
	SendMessage, 0x018B, 0, 0,, ahk_id %hCtrl%
	GuiControl, Choose, LBGesturePattern, `n%ErrorLevel%
}

UpdateGesturePattern:
	Gui,Submit,NoHide
	UpdateGesturePattern(Gesture_Editing,GesturePattern_Editing,EGesture)
	SaveModification("Reset")
return
UpdateGesturePattern(g,idx,p){
	local tmp
	Loop, Parse,Gesture_%g%_Patterns,`n
	{
		if(A_Index=idx){
			Join(tmp,p)
		}else{
			Join(tmp,A_LoopField)
		}
	}
	Gesture_%g%_Patterns:=tmp
	if(Gesture_Editing=g){
		ShowGesture(g)
	}
	GuiControl,Disable,BAddGesturePattern
	GuiControl,Disable,BUpdateGesturePattern
}

ClearGesturePress:
	GuiControl,, EGesture
return


;-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
;
; Action Routines : 動作割り当て
;
;-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

ActionUp:
	if(Action_Editing>1){
		ActionSwap(Gesture_Editing,Action_Editing-1,Action_Editing)
		ShowGesture(Gesture_Editing)
		ShowAction(Gesture_Editing,Action_Editing-1)
	}
return
ActionDown:
	if(Action_Editing<Gesture_%Gesture_Editing%_Count){
		ActionSwap(Gesture_Editing,Action_Editing,Action_Editing+1)
		ShowGesture(Gesture_Editing)
		ShowAction(Gesture_Editing,Action_Editing+1)
	}
return

ActionDelete:
	ActionDelete(Gesture_Editing, Action_Editing)
	ClearAction(false)
	ShowGesture(Gesture_Editing)
	ShowAction(Gesture_Editing,(Action_Editing>Gesture_%Gesture_Editing%_Count) ? Gesture_%Gesture_Editing%_Count : Action_Editing)
return

ActionDelete(ges, idx){
	global
	Loop
	{
		idx++
		ActionMove(ges, idx, idx-1)
		if (idx >= Gesture_%ges%_Count) {
			break
		}
	}
	Gesture_%ges%_Count--
}

ActionSwap(g,a,b){
	ActionMove(g,a,"tmp")
	ActionMove(g,b,a)
	ActionMove(g,"tmp",b)
}
ActionMove(g,from,to){
	global
	Gesture_%g%_%to%_Target:=Gesture_%g%_%from%_Target
	Gesture_%g%_%to%_Action:=Gesture_%g%_%from%_Action
}



;-------------------------------------------------------------------------------
; Select Action
;-------------------------------------------------------------------------------
LVActionSelect:
	IsActionChanged()
return
;-------------------------------------------------------------------------------
; Check whether the Action is Changed
;														Implemented by Pyonkichi
;-------------------------------------------------------------------------------
IsActionChanged()
{
	global
	if (A_GuiEvent!="Normal" && A_GuiEvent!="K") {
		return
	}
	Gui, ListView, %A_GuiControl%
	local idx := LV_GetNext()
	if (idx == Action_Editing) {
		return
	}
	SaveModification()
	if (idx == 0) {
		ClearAction()
	}
	else {
		ShowAction(Gesture_Editing, idx)
	}
}
;-------------------------------------------------------------------------------

ShowAction(g, idx)
{
	global
	Action_Editing := idx
	GuiControl, ChooseString, DDLTarget, % (Gesture_%g%_Count ? Gesture_%g%_%idx%_Target : "Default")
	GuiControl, -g, EAction
	GuiControl,, EAction, % RegExReplace(Gesture_%g%_%idx%_Action,"(?<!\t)\t","`n")
	GuiControl, +gOnActionEditModify, EAction
	if (g == Gesture_Editing)
	{
		Gui, ListView, LVAction
		LV_Modify(idx, "Select")
	}
	local szStat := Gesture_%g%_Count ? "Enable" : "Disable"
	GuiControl, %szStat%, BUpdateAction
	GuiControl, %szStat%, BActionUp
	GuiControl, %szStat%, BActionDelete
	GuiControl, %szStat%, BActionDown
	GoSub, OnTargetChange
}

ClearAction(fClearIdx=true, fClearGUI=true)
{
	global
	if (fClearIdx)
	{
		GesturePattern_Editing=0
		Action_Editing=0
	}
	if (fClearGUI)
	{
		GuiControl, Disable, BUpdateGesturePattern
		GuiControl, Disable, BGesturePatternUp
		GuiControl, Disable, BGesturePatternDelete
		GuiControl, Disable, BGesturePatternDown
		GuiControl,, EGesture,
		GuiControl, Disable, BUpdateAction
		GuiControl, Disable, BActionUp
		GuiControl, Disable, BActionDelete
		GuiControl, Disable, BActionDown
		GuiControl, ChooseString, DDLTarget, 1
		GuiControl, -g, EAction
		GuiControl,, EAction,
		GuiControl, +gOnActionEditModify, EAction
	}
}


;-------------------------------------------------------------------------------
; On Action Target Change
;														Implemented by Pyonkichi
;-------------------------------------------------------------------------------
OnTargetChange:
	Gui,Submit,NoHide
	MG_CtrlStat := MG_ActionExists(Gesture_Editing, DDLTarget) ? "Disable" : "Enable"
	GuiControl, %MG_CtrlStat%, BAddAction
	;SaveModification("Modified", "EAction")
return

BAddActionPress:
	Gui,Submit,NoHide
	AddAction(Gesture_Editing,DDLTarget,EAction)
	SaveModification("Reset")
return
AddAction(g,t,s){
	local idx
	idx:=++Gesture_%g%_Count
	UpdateAction(g,idx,t,s)
	
}

BUpdateActionPress:
	Gui,Submit,NoHide
	UpdateAction(Gesture_Editing,Action_Editing,DDLTarget,EAction)
	SaveModification("Reset")
return
UpdateAction(g,a,t,s){
	global
	Gesture_%g%_%a%_Target:=t
	Gesture_%g%_%a%_Action:=RegExReplace(s,"\n","	")
	if(Gesture_Editing=g){
		ShowGesture(g)
		ShowAction(g,a)
	}
}

;-------------------------------------------------------------------------------
; On Action Edit Modify
;														Implemented by Pyonkichi
;-------------------------------------------------------------------------------
OnActionEditModify:
	Gui, Submit, Nohide
	SaveModification("Modified", "EAction")
return


;-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
;
;	Action Templates
;
;-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
;-------------------------------------------------------------------------------
; Close Action Template Registration
;														Implemented by Pyonkichi
;-------------------------------------------------------------------------------
CloseActionTemplateReg()
{
	global
	ActionCategory_Count++
	ActionCategory%ActionCategory_Count%_Count := ActionCategoryTemp_Count
	ActionCategory%ActionCategory_Count%_Key   := ActionCategoryTemp_Key
	ActionCategory%ActionCategory_Count%_Name  := ActionCategoryTemp_Name
	Loop, %ActionCategoryTemp_Count%
	{
		ActionTitle%ActionCategory_Count%_%A_Index% := ActionTitleTemp_%A_Index%
		ActionTemplate%ActionCategory_Count%_%A_Index% := ActionTemplateTemp_%A_Index%
	}
	Loop, %ActionCategory_Count%
	{
		GuiControl,, DDLActionCategory, % ActionCategory%A_Index%_Name
	}
}

;-------------------------------------------------------------------------------
; On Action Category Change
;														Implemented by Pyonkichi
;-------------------------------------------------------------------------------
OnActionCategoryChange:
	GuiControlGet, idx, , DDLActionCategory
	GuiControl,, DDLActionTemplate, `n
	Loop, % ActionCategory%idx%_Count
	{
		GuiControl,, DDLActionTemplate, % ActionTitle%idx%_%A_Index%
	}
	GuiControl, Choose, DDLActionTemplate, 1
return

;-------------------------------------------------------------------------------
; On Action Helper Button Press
;														Implemented by lukewarm
;														Modified by Pyonkichi
;-------------------------------------------------------------------------------
BAddActionLinePress:
	Gui,Submit,NoHide
	template = ActionTemplate%DDLActionCategory%_%DDLActionTemplate%
	if (IsLabel(%template%))
	{
		Gosub, % %template%
	}
	else
	{
		ActionLine := %template%
		loop
		{
			if (RegExMatch(ActionLine, "%\[(.+?)\]%", $))
			{
				ActionComment:=$1, DefaultValue:=""
				if (RegExMatch(ActionComment, "%\<(.+?)\>%", $))
				{
					ActionComment := RegExReplace(ActionComment, "%\<(.+?)\>%")
					DefaultValue := $1
				}
				if (!MG_InputBox(ActionLineOption, ME_LngCapt011, ActionComment, DefaultValue)) {
					return
				}
				ActionLine := RegExReplace(ActionLine,"%\[(.+?)\]%",ActionLineOption)
			}
			else
			{
				break
			}
		}
		MG_AddActionScript(ActionLine)
	}
return

;-------------------------------------------------------------------------------
; Add "Key Stroke" to Action Script
;														Implemented by Pyonkichi
;-------------------------------------------------------------------------------
ActKeyStroke:
	DlgKeyInput(KeyStroke, 1)
	if (KeyStroke != "") {
		MG_AddActionScript("Send, " . KeyStroke)
	}
return

;-------------------------------------------------------------------------------
; Retrieve a Key Stroke
;														Implemented by Pyonkichi
;-------------------------------------------------------------------------------
DlgKeyInput(ByRef key, mode=0)
{
	static tblKey := [ "Enter", "Tab", "Esc", "Space", "Backspace", "Delete" ]

	global
	key := ""
	Gui, MGW_Key:-MaximizeBox -MinimizeBox +HWNDhMGW_Key +Owner1 +Delimiter`n +LastFound
	Gui, MGW_Key:Add, Text, x10 y10, %ME_LngText521%
	Gui, MGW_Key:Add, Hotkey, y+10 w200 VszKeyStroke gOnKeyPress
	Gui, MGW_Key:Add, Button, x+4 yp-1 w80 vSpecitalKey gOnSpecitalKey Section, %ME_LngButton024%
	Gui, MGW_Key:Add, CheckBox, x20 y+4	vKeyShift gOnChkModifier, %ME_LngCheckBox101%
	Gui, MGW_Key:Add, CheckBox, x+10	vKeyCtrl  gOnChkModifier, %ME_LngCheckBox102%
	Gui, MGW_Key:Add, CheckBox, x+10	vKeyAlt   gOnChkModifier, %ME_LngCheckBox103%
	if (mode!=0)
	{
		Gui, MGW_Key:Add, Button, xs yp-3 w80 vEditKey gOnEditKey, %ME_LngButton023%

		local tblText := Array(ME_LngText523, ME_LngText524)
		local width := GetMaxTextLength(tblText)+8
		Gui, MGW_Key:Add, Text, x12 y+10 w%width%, %ME_LngText523%
		Gui, MGW_Key:Add, DropDownList, x+0 yp-4 w120 vKeyOpe gOnKeyOpe Choose1 AltSubmit, %ME_LngDropDown202%

		Gui, MGW_Key:Add, Text, x12 y+14 w%width%, %ME_LngText524%
		Gui, MGW_Key:Add, Edit, x+0 yp-4 w60 vKeyCount Section
		Gui, MGW_Key:Add, UpDown, Range1-2147483647 +128
		GuiControl, MGW_Key:, KeyCount, 1
	}
	else
	{
		KeyOpe := 1
		KeyCount := 1
	}
	GUI, MGW_Key:Show, Hide
	local width
	WinGetPos,,,width
	local left := width - 185
	Gui, MGW_Key:Add, Button, x%left% y+14 w80 gOnAcceptKey Default, %ME_LngButton001%
	Gui, MGW_Key:Add, Button, x+8 yp+0 w80 gOnCancelKey, %ME_LngButton002%
	Gui, MGW_Key:Show, AutoSize, %ME_LngCapt012%
	CloseIME()

	WinWaitClose,  ahk_id %hMGW_Key%
	return

	;---------------------------------------------------------------------------
	; Hotkey is pressed
OnKeyPress:
	Gui, MGW_Key:Submit, NoHide
	GuiControl, MGW_Key:, KeyShift, % InStr(szKeyStroke, "+") ? 1 : 0
	GuiControl, MGW_Key:, KeyCtrl, % InStr(szKeyStroke, "^") ? 1 : 0
	GuiControl, MGW_Key:, KeyAlt, % InStr(szKeyStroke, "!") ? 1 : 0
	return

	;---------------------------------------------------------------------------
	; Modifier Key is checked
OnChkModifier:
	Gui, MGW_Key:Submit, NoHide
	AddModifierKeyStr(szKeyStroke, KeyShift, KeyCtrl, KeyAlt)
	GuiControl, MGW_Key:, szKeyStroke, %szKeyStroke%
	return

	;---------------------------------------------------------------------------
	; Edit Key button is pressed
OnEditKey:
	Gui, MGW_Key:Submit, NoHide
	CorrectKeyStr(szKeyStroke, KeyOpe, KeyCount)
	if (MG_InputBox(szKeyStroke, ME_LngCapt013, ME_LngMessage116, szKeyStroke, "MGW_Key"))
	{
		key := szKeyStroke
		Gui, MGW_Key:Destroy
	}
	return

	;---------------------------------------------------------------------------
	; Specital Key button is pressed
OnSpecitalKey:
	Menu,menuKeyList,Add
	Menu,menuKeyList,DeleteAll
	Loop % tblKey.MaxIndex()
	{
		Menu, menuKeyList, Add, % tblKey[A_Index], OnKeyMenuSelect
	}
	Menu, menuKeyList, Show
	return

	;---------------------------------------------------------------------------
	; Specital Key menu item is selected
OnKeyMenuSelect:
	GuiControl, MGW_Key:, szKeyStroke, %A_ThisMenuItem%
	Gosub, OnChkModifier
	return

	;---------------------------------------------------------------------------
	; Key Operation is changed
OnKeyOpe:
	Gui, MGW_Key:Submit, NoHide
	local stat := (KeyOpe==2 || KeyOpe==3) ? "Disable" : "Enable"
	GuiControl, MGW_Key:%stat%, KeyCount
	return

	;---------------------------------------------------------------------------
	; Accepted
OnAcceptKey:
	Gui, MGW_Key:Submit
	CorrectKeyStr(szKeyStroke, KeyOpe, KeyCount)
	key := szKeyStroke
	Gui, MGW_Key:Destroy
	return

	;---------------------------------------------------------------------------
	; Canceled
OnCancelKey:
MGW_KeyGuiClose:
MGW_KeyGuiEscape:
	Gui, MGW_Key:Destroy
	return
}

;-------------------------------------------------------------------------------
; Add Modifier Key String
;	szKey : Key Stroke string to modify
;														Implemented by Pyonkichi
;-------------------------------------------------------------------------------
AddModifierKeyStr(ByRef szKey, fShift, fCtrl, fAlt)
{
	szKey := RegExReplace(szKey, "[+^!]|Alt||Ctrl|Control|Shift")
	if (fAlt)
	{
		if (szKey != "")
			szKey := "!" + szKey
		else
			szKey := "Alt"
	}
	if (fCtrl)
	{
		if (szKey != "")
			szKey := "^" + szKey
		else
			szKey := "Ctrl"
	}
	if (fShift)
	{
		if (szKey != "")
			szKey := "+" + szKey
		else
			szKey := "Shift"
	}
}

;-------------------------------------------------------------------------------
; Correct Key Stroke String
;	szKey : Key Stroke string to correct
;														Implemented by Pyonkichi
;-------------------------------------------------------------------------------
CorrectKeyStr(ByRef szKey, ope=1, cnt=1)
{
	local key, keyOrg, ex

	if (ope == 2) {
		ex := " Down"
	} else if (ope == 3) {
		ex := " Up"
	} else if (cnt > 1) {
		ex := " " . cnt
	} else {
		ex := ""
	}
	key := keyOrg := RegExReplace(szKey, "[+^!#]")
	if (StrLen(key)==1) {
		StringLower, key, key
	}
	if (StrLen(key)>1 || ex!="") {
		key := "{" . key . ex . "}"
	}
	szKey := RegExReplace(szKey, keyOrg, key)
}

;-------------------------------------------------------------------------------
; Close IME
;														Implemented by Pyonkichi
;-------------------------------------------------------------------------------
CloseIME()
{
	ControlGet, hCtrl, HWND,,,A
	hWnd := DllCall("imm32\ImmGetDefaultIMEWnd", "Ptr",hCtrl, "Ptr")
	DetectHiddenWindows, On
	SendMessage, 0x283, 6, 0,, ahk_id %hWnd%
	DetectHiddenWindows, Off
}


;-------------------------------------------------------------------------------
; Add "Mouse Click" to Action Script
;														Implemented by Pyonkichi
;-------------------------------------------------------------------------------
ActMouseClick:
	DlgMouseClick()
return
DlgMouseClick()
{
	global
	Gui, MGW_Click:-MaximizeBox -MinimizeBox +HWNDhMGW_Click +Owner1 +Delimiter`n +LastFound

	local tblText := Array(ME_LngText522, ME_LngText525, ME_LngText526)
	local width := GetMaxTextLength(tblText)+8
	Gui, MGW_Click:Add, Text, x12 y+20 w%width%, %ME_LngText522%
	Gui, MGW_Click:Add, DropDownList, x+0 yp-4 w120 vClkButton Choose1 AltSubmit, %ME_LngDropDown201%

	Gui, MGW_Click:Add, Text, x12 y+14 w%width%, %ME_LngText525%
	Gui, MGW_Click:Add, DropDownList, x+0 yp-4 w120 vClkOpe gOnClkOpe Choose1 AltSubmit, %ME_LngDropDown203%

	Gui, MGW_Click:Add, Text, x12 y+14 w%width%, %ME_LngText526%
	Gui, MGW_Click:Add, Edit, x+0 yp-4 w62 vClickCount Section
	Gui, MGW_Click:Add, UpDown, Range1-2147483647 +128
	GuiControl, MGW_Click:, ClickCount, 1

	GUI, MGW_Click:Show, Hide
	local width
	WinGetPos,,,width
	local left := width - 185
	Gui, MGW_Click:Add, Button, gOnAcceptClick x%left% y+14 w80 Default, %ME_LngButton001%
	Gui, MGW_Click:Add, Button, gOnCancelClick x+8 yp+0 w80, %ME_LngButton002%
	Gui, MGW_Click:Show, AutoSize, %ME_LngCapt014%

	WinWaitClose,  ahk_id %hMGW_Click%
	return

	;---------------------------------------------------------------------------
	; Mouse Operation is changed
OnClkOpe:
	Gui, MGW_Click:Submit, NoHide
	local stat := (ClkOpe==2 || ClkOpe==3) ? "Disable" : "Enable"
	GuiControl, MGW_Click:%stat%, ClickCount
	return

	;---------------------------------------------------------------------------
	; Accepted
OnAcceptClick:
	Gui, MGW_Click:Submit
	local szButton:=""
	if (ClkButton==1) {
		szButton := "LB"
	} else if (ClkButton==2) {
		szButton := "RB"
	} else if (ClkButton==3) {
		szButton := "MB"
	} else if (ClkButton==4) {
		szButton := "X1B"
	} else if (ClkButton==5) {
		szButton := "X2B"
	}
	local szAction
	if (ClkOpe==1) {
		szAction := "MG_Send(""" . szButton . """"
		szAction .= (ClickCount>1) ? ",," . ClickCount . ")" : ")"
	} else {
		szAction := "MG_Send(""" . szButton . """, """ . (ClkOpe==2 ? "D" : "U") . """)"
	}
	MG_AddActionScript(szAction)
	Gui, MGW_Click:Destroy
	return

	;---------------------------------------------------------------------------
	; Canceled
OnCancelClick:
MGW_ClickGuiClose:
MGW_ClickGuiEscape:
	Gui, MGW_Click:Destroy
	return
}


;-------------------------------------------------------------------------------
; Add "Wheel Rotation" to Action Script
;														Implemented by Pyonkichi
;-------------------------------------------------------------------------------
ActSendWheel:
	DlgSendWheel()
return
DlgSendWheel()
{
	global
	Gui, MGW_SW:-MaximizeBox -MinimizeBox +HWNDhMGW_SW +Owner1 +Delimiter`n +LastFound

	Gui, MGW_SW:Add, GroupBox, x12 y12 w200 h68 vSwGB Section, %ME_LngGroupBox101%
	Gui, MGW_SW:Add, Radio, xs+20 ys+20 vSwUp Checked, %ME_LngRadioBtn001%
	Gui, MGW_SW:Add, Radio, xs+20 y+12 vSwDown , %ME_LngRadioBtn002%

	Gui, MGW_SW:Add, Text, x20 y+28 Section, %ME_LngText527%
	Gui, MGW_SW:Add, Edit, x+8 yp-4 w62 vSwDst
	Gui, MGW_SW:Add, UpDown, Range1-2147483647 +128
	GuiControl, MGW_SW:, SwDst, 1

	GUI, MGW_SW:Show, Hide
	local width
	WinGetPos,,,width
	local left := width - 185
	Gui, MGW_SW:Add, Button, gOnAcceptSW x%left% y+14 w80 Default, %ME_LngButton001%
	Gui, MGW_SW:Add, Button, gOnCancelSW x+8 yp+0 w80, %ME_LngButton002%
	Gui, MGW_SW:Show, AutoSize, %ME_LngCapt015%

	WinWaitClose,  ahk_id %hMGW_SW%
	return

	;---------------------------------------------------------------------------
	; Accepted
OnAcceptSW:
	Gui, MGW_SW:Submit
	local szDir := SwUp ? "U" : "D"
	local szAction := "MG_SendWheel(""" . szDir . """, " . SwDst . ")"
	MG_AddActionScript(szAction)
	Gui, MGW_SW:Destroy
	return

	;---------------------------------------------------------------------------
	; Canceled
OnCancelSW:
MGW_SWGuiClose:
MGW_SWGuiEscape:
	Gui, MGW_SW:Destroy
	return
}


;-------------------------------------------------------------------------------
; Add "Cursor Movement" to Action Script
;														Implemented by Pyonkichi
;-------------------------------------------------------------------------------
ActMoveCursor:
	DlgMoveCursor()
return
DlgMoveCursor()
{
	global
	local prevOrg
	prevOrg := 1

	Gui, MGW_MC:New
	Gui, MGW_MC:-MaximizeBox -MinimizeBox +HWNDhMGW_MC +Owner1 +Delimiter`n +LastFound

	local tblText := Array(ME_LngText528, ME_LngText530)
	local width := GetMaxTextLength(tblText)
	Gui, MGW_MC:Add, Text, x12 y20 w%width% Right, %ME_LngText528%
	Gui, MGW_MC:Add, Edit, x+8 yp-4 w62 vMcX Section
	Gui, MGW_MC:Add, UpDown, Range-2147483648-2147483647 +128
	GuiControl, MGW_MC:, McX, 0

	Gui, MGW_MC:Add, Text, x+18 ys+4 Right, %ME_LngText529%
	Gui, MGW_MC:Add, Edit, x+8 yp-4 w62 vMcY
	Gui, MGW_MC:Add, UpDown, Range-2147483648-2147483647 +128
	GuiControl, MGW_MC:, McY, 0

	Gui, MGW_MC:Add, CheckBox, xs y+10 vMcAbs gOnMcAbs, %ME_LngCheckBox110%

	Gui, MGW_MC:Add, Text, x12 y+16 w%width% Right, %ME_LngText530%
	Gui, MGW_MC:Add, DropDownList, x+8 yp-4 w200 vMcOrg Choose1 AltSubmit, %ME_LngDropDown204%

	GUI, MGW_MC:Show, Hide
	local width
	WinGetPos,,,width
	local left := width - 185
	Gui, MGW_MC:Add, Button, gOnAcceptMC x%left% y+14 w80 Default, %ME_LngButton001%
	Gui, MGW_MC:Add, Button, gOnCancelMC x+8 yp+0 w80, %ME_LngButton002%
	Gui, MGW_MC:Show, AutoSize, %ME_LngCapt016%

	WinWaitClose,  ahk_id %hMGW_MC%
	return

	;---------------------------------------------------------------------------
	; On Absolute Coordinates Check
OnMcAbs:
	Gui, MGW_MC:Submit, NoHide
	local stat := McAbs ? "Disable" : "Enable"
	GuiControl, MGW_MC:%stat%, McOrg
	return

	;---------------------------------------------------------------------------
	; Accepted
OnAcceptMC:
	Gui, MGW_MC:Submit
	McOrg--
	if (McX+McY+McOrg+McAbs == 0) {
		MG_AddActionScript("MG_Move()")
	}
	else {
		MG_AddActionScript("MG_Move(" . McX . ", " . McY . ", " . McOrg . ", " . McAbs . ")")
	}
	Gui, MGW_MC:Destroy
	return

	;---------------------------------------------------------------------------
	; Canceled
OnCancelMC:
MGW_MCGuiClose:
MGW_MCGuiEscape:
	Gui, MGW_MC:Destroy
	return
}


;-------------------------------------------------------------------------------
; Add "Scroll" to Action Script
;														Implemented by Pyonkichi
;-------------------------------------------------------------------------------
ActScroll:
	DlgScroll()
return
DlgScroll()
{
	global
	Gui, MGW_SR:-MaximizeBox -MinimizeBox +HWNDhMGW_SR +Owner1 +Delimiter`n +LastFound

	local tblText := Array(ME_LngText531, ME_LngText532)
	local width := GetMaxTextLength(tblText)+8
	Gui, MGW_SR:Add, Text, x12 y+20 w%width%, %ME_LngText531%
	Gui, MGW_SR:Add, DropDownList, x+0 yp-4 w140 vSrDir Choose1 AltSubmit, %ME_LngDropDown205%

	Gui, MGW_SR:Add, Text, x12 y+14 w%width%, %ME_LngText532%
	Gui, MGW_SR:Add, Edit, x+0 yp-4 w62 vSrLines Section
	Gui, MGW_SR:Add, UpDown, Range1-2147483647 +128
	GuiControl, MGW_SR:, SrLines, 1

	Gui, MGW_SR:Add, CheckBox, xs y+12 vSrPage, %ME_LngCheckBox111%

	GUI, MGW_SR:Show, Hide
	local width
	WinGetPos,,,width
	local left := width - 185
	Gui, MGW_SR:Add, Button, gOnAcceptSR x%left% y+14 w80 Default, %ME_LngButton001%
	Gui, MGW_SR:Add, Button, gOnCancelSR x+8 yp+0 w80, %ME_LngButton002%
	Gui, MGW_SR:Show, AutoSize, %ME_LngCapt017%

	WinWaitClose,  ahk_id %hMGW_SR%
	return

	;---------------------------------------------------------------------------
	; Accepted
OnAcceptSR:
	Gui, MGW_SR:Submit
	local szDir	 := (SrDir==1 || SrDir==2) ? "V" : "H"
	local nLines := (SrDir==2 || SrDir==4) ? SrLines : -SrLines
	local szAction := "MG_Scroll2(""" . szDir . """, " . nLines . ", " . SrPage . ")"
	MG_AddActionScript(szAction)
	Gui, MGW_SR:Destroy
	return

	;---------------------------------------------------------------------------
	; Canceled
OnCancelSR:
MGW_SRGuiClose:
MGW_SRGuiEscape:
	Gui, MGW_SR:Destroy
	return
}


;-------------------------------------------------------------------------------
; Add "Drag-Scroll" to Action Script
;														Implemented by Pyonkichi
;-------------------------------------------------------------------------------
ActDragScroll:
	DlgDragScroll()
return
DlgDragScroll()
{
	global
	Gui, MGW_DS:-MaximizeBox -MinimizeBox +HWNDhMGW_DS +Owner1 +Delimiter`n +LastFound

	Gui, MGW_DS:Add, Text, x12 y10 , %ME_LngText533%
	Gui, MGW_DS:Add, Text, x12 y+4 cBlue, %ME_LngText534%

	local tblText := Array(ME_LngText535, ME_LngText536)
	local width := GetMaxTextLength(tblText)+8
	Gui, MGW_DS:Add, Text, x12 y+14 w%width% Section, %ME_LngText535%
	Gui, MGW_DS:Add, Edit, x+0 yp-4 w62 vDsResV
	Gui, MGW_DS:Add, UpDown, Range1-2147483647 +128
	Gui, MGW_DS:Add, Text, x+4 yp+4, %ME_LngText537%
	GuiControl, MGW_DS:, DsResV, 30

	Gui, MGW_DS:Add, Text, x12 y+14 w%width%, %ME_LngText536%
	Gui, MGW_DS:Add, Edit, x+0 yp-4 w62 vDsResH
	Gui, MGW_DS:Add, UpDown, Range1-2147483647 +128
	Gui, MGW_DS:Add, Text, x+4 yp+4, %ME_LngText537%
	GuiControl, MGW_DS:, DsResH, 30

	local tblText := Array(ME_LngText538, ME_LngText539)
	local width := GetMaxTextLength(tblText)+8
	Gui, MGW_DS:Add, Text, x12 y+16 w%width%, %ME_LngText538%
	Gui, MGW_DS:Add, DropDownList, x+0 yp-4 w280 vDsInvert Choose2 AltSubmit, %ME_LngDropDown206%

	Gui, MGW_DS:Add, Text, x12 y+12 w%width%, %ME_LngText539%
	Gui, MGW_DS:Add, DropDownList, x+0 yp-4 w280 vDsAuto Choose1 AltSubmit, %ME_LngDropDown207%

	GUI, MGW_DS:Show, Hide
	local width
	WinGetPos,,,width
	local left := width - 185
	Gui, MGW_DS:Add, Button, gOnAcceptDS x%left% y+14 w80 Default, %ME_LngButton001%
	Gui, MGW_DS:Add, Button, gOnCancelDS x+8 yp+0 w80, %ME_LngButton002%
	Gui, MGW_DS:Show, AutoSize, %ME_LngCapt018%

	WinWaitClose,  ahk_id %hMGW_DS%
	return

	;---------------------------------------------------------------------------
	; Accepted
OnAcceptDS:
	Gui, MGW_DS:Submit
	local szAction := "if (MG_While()) {`n"
	szAction .= "    MG_DragScroll2(" . DsInvert-1 . ", " . DsAuto-1 . ", " . DsResV . ", " . DsResH . ")`n"
	szAction .= "}"
	MG_AddActionScript(szAction)
	Gui, MGW_DS:Destroy
	return

	;---------------------------------------------------------------------------
	; Canceled
OnCancelDS:
MGW_DSGuiClose:
MGW_DSGuiEscape:
	Gui, MGW_DS:Destroy
	return
}


;-------------------------------------------------------------------------------
; Add "Move and Resize Window" to Action Script
;														Implemented by Pyonkichi
;-------------------------------------------------------------------------------
ActMoveWindow:
	DlgMoveWindow()
return
DlgMoveWindow()
{
	global
	local prevOrg
	prevOrg := 1

	Gui, MGW_MW:New
	Gui, MGW_MW:-MaximizeBox -MinimizeBox +HWNDhMGW_MW +Owner1 +Delimiter`n +LastFound

	Gui, MGW_MW:Add, Text, x12 y10, %ME_LngText541%
	Gui, MGW_MW:Add, Text, x16 y+6 cBlue, %ME_LngText542%
	Gui, MGW_MW:Add, Text, x16 y+6 cBlue, %ME_LngText543%
	Gui, MGW_MW:Add, Text, x16 y+6 cBlue, %ME_LngText544%
	Gui, MGW_MW:Add, Text, x16 y+6 cBlue, %ME_LngText545%

	local tblText := Array(ME_LngText546, ME_LngText547, ME_LngText548, ME_LngText549)
	local width := GetMaxTextLength(tblText)
	Gui, MGW_MW:Add, Text, x26 y+18 w%width% Right, %ME_LngText546%
	Gui, MGW_MW:Add, Edit, x+8 yp-4 w62 vMwX Section
	Gui, MGW_MW:Add, UpDown, Range-2147483648-2147483647 +128
	GuiControl, MGW_MW:, MwX,

	Gui, MGW_MW:Add, Text, x+20 ys+4 w%width% Right, %ME_LngText547%
	Gui, MGW_MW:Add, Edit, x+8 yp-4 w62 vMwY
	Gui, MGW_MW:Add, UpDown, Range-2147483648-2147483647 +128
	GuiControl, MGW_MW:, MwY,

	Gui, MGW_MW:Add, Text, x26 y+14 w%width% Right, %ME_LngText548%
	Gui, MGW_MW:Add, Edit, x+8 yp-4 w62 vMwW Section
	Gui, MGW_MW:Add, UpDown, Range-2147483648-2147483647 +128
	GuiControl, MGW_MW:, MwW,

	Gui, MGW_MW:Add, Text, x+20 ys+4 w%width% Right, %ME_LngText549%
	Gui, MGW_MW:Add, Edit, x+8 yp-4 w62 vMwH
	Gui, MGW_MW:Add, UpDown, Range-2147483648-2147483647 +128 vMwUD
	GuiControl, MGW_MW:, MwH,

	Gui, MGW_MW:Add, CheckBox, xs y+14 vMwRelH, %ME_LngCheckBox112%

	GUI, MGW_MW:Show, Hide
	local width
	WinGetPos,,,width
	local left := width - 185
	Gui, MGW_MW:Add, Button, gOnAcceptMW x%left% y+14 w80 Default, %ME_LngButton001%
	Gui, MGW_MW:Add, Button, gOnCancelMW x+8 yp+0 w80, %ME_LngButton002%
	Gui, MGW_MW:Show, AutoSize, %ME_LngCapt019%

	WinWaitClose,  ahk_id %hMGW_MW%
	return

	;---------------------------------------------------------------------------
	; Accepted
OnAcceptMW:
	Gui, MGW_MW:Submit
	if (MwX="" && MwY="" && MwW="" && MwH="") {
		Gui, MGW_MW:Destroy
		return
	}
	MG_AddActionScript("MG_WinMove(" . MwX . ", " . MwY . ", " . MwW . ", " . MwH . ", " . MwRelH . ")")
	Gui, MGW_MW:Destroy
	return

	;---------------------------------------------------------------------------
	; Canceled
OnCancelMW:
MGW_MWGuiClose:
MGW_MWGuiEscape:
	Gui, MGW_MW:Destroy
	return
}


;-------------------------------------------------------------------------------
; Add "Launch File" to Action Script
;														Implemented by Pyonkichi
;-------------------------------------------------------------------------------
ActFileLaunch:
	DlgLaunchFile(0)
return
ActSoundPlay:
	DlgLaunchFile(1)
return
DlgLaunchFile(mode)
{
	global
	Gui, MGW_LF:-MaximizeBox -MinimizeBox +HWNDhMGW_LF +Owner1 +Delimiter`n +LastFound

	local szCaption, szFilter
	if (mode==0)
	{
		szCaption := ME_LngCapt022
		szFilter  := ME_LngText556
		Gui, MGW_LF:Add, Text, x12 y20, %ME_LngMessage102%

		local tblText := Array(ME_LngText551, ME_LngText552, ME_LngText553, ME_LngText554)
		local width := GetMaxTextLength(tblText)+8
		Gui, MGW_LF:Add, Text, x12 y+20 w%width%, %ME_LngText551%
		Gui, MGW_LF:Add, Edit, x+0 yp-4 w341 vLfTarget
		Gui, MGW_LF:Add, Button, x+2 yp-1 w58 gOnBrowseLF vLfBrowse, %ME_LngButton025%

		Gui, MGW_LF:Add, Text, x12 y+12 w%width%, %ME_LngText552%
		Gui, MGW_LF:Add, Edit, x+0 yp-4 w400 vLfFolder

		Gui, MGW_LF:Add, Text, x12 y+14 w%width%, %ME_LngText553%
		Gui, MGW_LF:Add, DropDownList, x+0 yp-4 w400 vLfWindow Choose1 AltSubmit, %ME_LngDropDown208%

		if (MG_IsNewOS()) {
			Gui, MGW_LF:Add, Text, x12 y+14 w%width%, %ME_LngText554%
			Gui, MGW_LF:Add, DropDownList, x+0 yp-4 w400 vLfLevel gOnLevelLF Choose1 AltSubmit Section, %ME_LngDropDown209%
			Gui, MGW_LF:Add, Text, xs y+5 vLfLevelCmt cBlue, %ME_LngText555%
		}
	}
	else
	{
		szCaption := ME_LngCapt023
		szFilter  := ME_LngText557
		Gui, MGW_LF:Add, Text, x12 y20, %ME_LngMessage107%

		Gui, MGW_LF:Add, Edit, x12 y+12 w400 vLfTarget
		Gui, MGW_LF:Add, Button, x+2 yp-1 gOnBrowseLF vLfBrowse, %ME_LngButton025%
	}
	GUI, MGW_LF:Show, Hide
	local width
	WinGetPos,,,width
	local left := width - 185
	Gui, MGW_LF:Add, Button, gOnAcceptLF x%left% y+14 w80 Default, %ME_LngButton001%
	Gui, MGW_LF:Add, Button, gOnCancelLF x+8 yp+0 w80, %ME_LngButton002%
	Gui, MGW_LF:Show, AutoSize, %szCaption%

	WinWaitClose,  ahk_id %hMGW_LF%
	return

	;---------------------------------------------------------------------------
	; Browse a file
OnBrowseLF:
	local szPath
	FileSelectFile, szPath,,, %szCaption%, %szFilter%
	if (szPath) {
		GuiControl, MGW_LF:, LfTarget, %szPath%
	}
	return

	;---------------------------------------------------------------------------
	; Level Change
OnLevelLF:
	GuiControlGet, LfLevel,, LfLevel
	szComment := (LfLevel==1) ? ME_LngText555 : ""
	GuiControl, MGW_LF:, LfLevelCmt, %szComment%
	return

	;---------------------------------------------------------------------------
	; Accepted
OnAcceptLF:
	LfLevel := 0
	Gui, MGW_LF:Submit
	local szAction, szWindow
	if (mode==0)
	{
		if (LfWindow==2) {
			szWindow := "Min"
		} else if (LfWindow==3) {
			szWindow := "Max"
		} else if (LfWindow==4) {
			szWindow := "Hide"
		} else {
			szWindow := ""
		}
		if (LfLevel==1) {
			szAction  := "MG_RunAsUser(""" . LfTarget . """, """ . LfFolder . """, """ . szWindow . """)"
		}
		else
		{
			if (MG_IsNewOS()) {
				LfTarget := "*runas " . LfTarget
			}
			szAction  := "Run, " . LfTarget . ", " . LfFolder . ", " . szWindow . " UseErrorLevel"
		}
	}
	else {
		szAction  := "SoundPlay, " . LfTarget
	}
	MG_AddActionScript(szAction)
	Gui, MGW_LF:Destroy
	return

	;---------------------------------------------------------------------------
	; Canceled
OnCancelLF:
MGW_LFGuiClose:
MGW_LFGuiEscape:
	Gui, MGW_LF:Destroy
	return
}


;-------------------------------------------------------------------------------
; Add "PostMessage/SendMessage" to Action Script
;														Implemented by Pyonkichi
;-------------------------------------------------------------------------------
ActPostMessage:
	DlgPostMessage(0)
return
ActSendMessage:
	DlgPostMessage(1)
return
DlgPostMessage(mode)
{
	global
	Gui, MGW_PM:-MaximizeBox -MinimizeBox +HWNDhMGW_PM +Owner1 +Delimiter`n +LastFound

	local tblText := Array(ME_LngText561, ME_LngText562, ME_LngText563)
	local width := GetMaxTextLength(tblText)+8
	Gui, MGW_PM:Add, Text, x12 y20 w%width%, %ME_LngText561%
	Gui, MGW_PM:Add, Edit, x+0 yp-4 w120 vPmMsg

	Gui, MGW_PM:Add, Text, x12 y+12 w%width%, %ME_LngText562%
	Gui, MGW_PM:Add, Edit, x+0 yp-4 w120 vPmWParam

	Gui, MGW_PM:Add, Text, x12 y+12 w%width%, %ME_LngText563%
	Gui, MGW_PM:Add, Edit, x+0 yp-4 w120 vPmLParam

	GUI, MGW_PM:Show, Hide
	local width
	WinGetPos,,,width
	local left := width - 185
	Gui, MGW_PM:Add, Button, gOnAcceptPM x%left% y+14 w80 Default, %ME_LngButton001%
	Gui, MGW_PM:Add, Button, gOnCancelPM x+8 yp+0 w80, %ME_LngButton002%
	Gui, MGW_PM:Show, AutoSize, %ME_LngCapt024%

	WinWaitClose,  ahk_id %hMGW_PM%
	return

	;---------------------------------------------------------------------------
	; Accepted
OnAcceptPM:
	Gui, MGW_PM:Submit
	local szAction
	if (mode==0) {
		szAction := "PostMessage, "
	}
	else {
		szAction := "SendMessage, "
	}
	szAction .= PmMsg . ", " . PmWParam . ", " . PmLParam
	MG_AddActionScript(szAction)
	Gui, MGW_PM:Destroy
	return

	;---------------------------------------------------------------------------
	; Canceled
OnCancelPM:
MGW_PMGuiClose:
MGW_PMGuiEscape:
	Gui, MGW_PM:Destroy
	return
}

;-------------------------------------------------------------------------------
; Get Toolbar Button ID
;														Implemented by lukewarm
;-------------------------------------------------------------------------------
ButtonIDPicker:
	Hotkey,RButton up,ButtonIDPickerHotkey,On
	SetTimer,ButtonIDPickerTimer,10
return

ButtonIDPickerTimer:
	Tooltip, %ME_LngTooltip004%
return

ButtonIDPickerHotkey:
	Hotkey,RButton up,Off
	SetTimer,ButtonIDPickerTimer,Off
	Tooltip
	if(ButtonIDPicker_ID:=GetButtonCID()){
		MG_AddActionScript("SendMessage,0x111," ButtonIDPicker_ID ",0")
	}
return

GetButtonCID()
{
	CoordMode,Mouse,Screen
	MouseGetPos,MG_X,MG_Y,MG_HWND,MG_HCTL,3
	SendMessage,0x84,0,% MG_Y<<16|MG_X,,ahk_id %MG_HCTL%
	If ErrorLevel=4294967295
		MouseGetPos,,,,MG_HCTL,2
	;mouse position on control
	WinGetPos,wx,wy,,,ahk_id %MG_HWND%
	ControlGetPos,cx,cy,,,,ahk_id %MG_HCTL%
	cmx:=MG_X-cx-wx
	cmy:=MG_Y-cy-wy
	;count
	SendMessage,0x0418,0,0,,ahk_id %MG_HCTL%
	c=%ErrorLevel%
	if(c>0){
		WinGet,pid,pid,ahk_id %MG_HWND%
		hProc := DllCall("OpenProcess", "UInt",0x1F0FFF, "UInt",0, "UInt",pid, "Ptr")
		size  := 10 + (A_PtrSize==4 ? 2 : 6) + A_PtrSize*2
		lpTB  := DllCall("VirtualAllocEx", "Ptr",hProc, "Ptr",0, "UInt",size, "UInt",0x1000, "UInt",0x4, "Ptr")
		Loop, %c%
		{
			;button struct
			SendMessage,0x417,% A_Index-1,%lpTB%,,ahk_id %MG_HCTL%
			DllCall("ReadProcessMemory", "Ptr",hProc, "Ptr",lpTB+8, "PtrP",stt, "UInt",4, "Ptr",0)
			if(!(stt&8)){
				;not hidden
				DllCall("ReadProcessMemory", "Ptr",hProc, "Ptr",lpTB+4, "PtrP",cid, "UInt",4, "Ptr",0)
				SendMessage,0x433,cid,%lpTB%,,ahk_id %MG_HCTL%
				DllCall("ReadProcessMemory", "Ptr",hProc, "Ptr",lpTB+0,  "PtrP",x1, "UInt",4, "Ptr",0)
				DllCall("ReadProcessMemory", "Ptr",hProc, "Ptr",lpTB+4,  "PtrP",y1, "UInt",4, "Ptr",0)
				DllCall("ReadProcessMemory", "Ptr",hProc, "Ptr",lpTB+8,  "PtrP",x2, "UInt",4, "Ptr",0)
				DllCall("ReadProcessMemory", "Ptr",hProc, "Ptr",lpTB+12, "PtrP",y2, "UInt",4, "Ptr",0)
				if((x1<=cmx)&&(x2>=cmx)&&(y1<=cmy)&&(y2>=cmy)){
					;under the cursor
					break
				}
			}
		}
		DllCall("VirtualFreeEx", "Ptr",hProc, "Ptr",lpTB, "Ptr",0, "UInt",0x8000)
		DllCall("CloseHandle", "Ptr",hProc)
		return cid
	}
}




;-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
;
; Option Routines : 設定など
;
;-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
;-------------------------------------------------------------------------------
; Initialize Configuration Variables
;														Implemented by Pyonkichi
;-------------------------------------------------------------------------------
InitConfigs(table)
{
	global
	Loop, Parse, table, `n
	{
		Config_%A_LoopField%=
	}
}

;-------------------------------------------------------------------------------
; Set Configuration Variables to GUI Controls
;														Implemented by lukewarm
;														Modified by Pyonkichi
;-------------------------------------------------------------------------------
ShowConfig(){
	global
	Loop, Parse, ConfRecognition,`n
	{
		GuiControl,,Config_%A_LoopField%,% Config_%A_LoopField%
	}
	Loop, Parse, ConfNavi,`n
	{
		GuiControl,,Config_%A_LoopField%,% Config_%A_LoopField%
	}
	Loop, Parse, ConfAdNavi,`n
	{
		GuiControl,,Config_%A_LoopField%,% Config_%A_LoopField%
	}
	Loop, Parse, ConfTrail,`n
	{
		GuiControl,,Config_%A_LoopField%,% Config_%A_LoopField%
	}
	Loop, Parse, ConfOthers,`n
	{
		GuiControl,,Config_%A_LoopField%,% Config_%A_LoopField%
	}
}
GetConfig(){
}

;-------------------------------------------------------------------------------
; Import from Clipboard
;														Implemented by lukewarm
;														Modified by Pyonkichi
;-------------------------------------------------------------------------------
ImportFromClipboard:
	ImportFromClipboard()
	AdjustDialogHeight()
return
ImportFromClipboard()
{
	global
	MG_LoadIni(RegExReplace(Clipboard,"【TAB】","	"))
	if (MG_Imported)
	{
		ShowTargets()
		ShowGestures()
		ShowConfig()
		TrayTip, MouseGestureL, %ME_LngTooltip002%, 1
		SetTimer, HideTrayTip, -2000
	}
}
HideTrayTip:
	TrayTip
return

SaveExit:
	SaveModification()
	FileMove, %A_ScriptDir%\Config\MouseGestureL.ini
			, %A_ScriptDir%\Config\MouseGestureL.ini.bak, 1
	FileAppend, % ToIni(),%A_ScriptDir%\Config\MouseGestureL.ini, UTF-8
	FileDelete, %A_ScriptDir%\Config\MG_Config.ahk
	FileAppend, % ToAhk(), %A_ScriptDir%\Config\MG_Config.ahk, UTF-8
ExitApp

saveIniFile(fn){
}
ToIni(){
	local tmp := ConfigToIni()
	Loop, %Target_Count% {
		tmp := tmp . "`n" . TargetToIni(A_Index)
	}
	Loop, %Gesture_Count% {
		tmp := tmp . "`n" . GestureToIni(A_Index)
	}
	return tmp
}

;-------------------------------------------------------------------------------
; Convert Configuration Variables to INI String
;														Implemented by lukewarm
;														Modified by Pyonkichi
;-------------------------------------------------------------------------------
ConfigToIni()
{
	global
	Gui, Submit, NoHide
	Config_UseExNavi--
	Config_AdNaviPosition--
	CorrectColorHex(Config_ExNaviFG, true)
	CorrectColorHex(Config_ExNaviBG, true)
	CorrectColorHex(Config_AdNaviFG, true)
	CorrectColorHex(Config_AdNaviNI, true)
	CorrectColorHex(Config_AdNaviBG, true)
	CorrectColorHex(Config_TrailColor, true)
	local res := "[Settings]`n"
	Loop, Parse, ConfRecognition, `n
	{
		res := res . "" . A_LoopField . "=" . Config_%A_LoopField% . "`n"
	}
	Loop, Parse, ConfNavi, `n
	{
		res := res . "" . A_LoopField . "=" . Config_%A_LoopField% . "`n"
	}
	Loop, Parse, ConfAdNavi, `n
	{
		res := res . "" . A_LoopField . "=" . Config_%A_LoopField% . "`n"
	}
	Loop, Parse, ConfTrail, `n
	{
		res := res . "" . A_LoopField . "=" . Config_%A_LoopField% . "`n"
	}
	Loop, Parse, ConfOthers, `n
	{
		res := res . "" . A_LoopField . "=" . Config_%A_LoopField% . "`n"
	}
	Loop, Parse, Buttons, `n
	{
		if (Config_ExNaviFG_%A_LoopField% != "") {
			res := res . "ExNaviFG_" . A_LoopField . "=" . Config_ExNaviFG_%A_LoopField% . "`n"
		}
	}
	return res
}

TargetToIni(idx)
{
	local res,delim
	res := "[" . Target_%idx%_Name . "]`n"
	if (Target_%idx%_IsAnd) {
		res := res . "And=1`n"
	}
	Loop, % Target_%idx%_Count {
		res := res . Target_%idx%_%A_Index%_Type "=" Target_%idx%_%A_Index%_Value "`n"
	}
	return res
}
CopyTarget:
	if (Target_Editing)
	{
		Clipboard:=RegExReplace(TargetToIni(Target_Editing),"\n","`r`n")
		TrayTip, MouseGestureL, %ME_LngTooltip001%, 1
		SetTimer, HideTrayTip, -2000
	}
return

GestureToIni(idx)
{
	local gr,res,def
	res:="[" . Gesture_%idx%_Name . "]`n" . RegExReplace(Gesture_%idx%_Patterns,"(^|\n)","$1G=") . "`n"
	Loop, % Gesture_%idx%_Count {
		res:=res . Gesture_%idx%_%A_Index%_Target . "=" Gesture_%idx%_%A_Index%_Action . "`n"
	}
	return res
}

CopyGesture:
	if (Gesture_Editing)
	{
		Clipboard:=RegExReplace(RegExReplace(GestureToIni(Gesture_Editing),"\t","【TAB】"),"\n","`r`n")
		TrayTip, MouseGestureL, %ME_LngTooltip001%, 1
		SetTimer, HideTrayTip, -2000
	}
return

LoadButtons()
{
	global
	Buttons := MG_DefButtons
	Loop, %A_ScriptDir%\Components\Buttons\*.ahk
	{
		if(RegExMatch(A_LoopFileName,"^([a-zA-Z0-9]+)\.ahk$",$) && !InStr("`n" . Buttons . "`n","`n" . $1 . "`n")){
			Join(Buttons, $1)
		}
	}
	LBButtons =
	Loop, Parse, Buttons, `n
	{
		if(Button_%A_LoopField%){
			Join(LBButtons,Button_%A_LoopField%)
		}else{
			Join(LBButtons,A_LoopField)
		}
		Join(ButtonRegEx,A_LoopField,"|")
		Button_%A_Index%=%A_LoopField%
	}
}


;-------------------------------------------------------------------------------
; Make Configuration Script Strings
;														Implemented by lukewarm
;														Modified by Pyonkichi
;-------------------------------------------------------------------------------
ToAhk()
{
	local MaxLen,AG,Triggers,SubTriggers,ahk,BT2
	local tmp := ConfigToAhk()
	Loop, %Gesture_Count%
	{
		Loop, Parse, Gesture_%A_Index%_Patterns,`n
		{
			Join(AG,A_LoopField)
			MaxLen:=(MaxLen<StrLen(A_LoopField)) ? StrLen(A_LoopField) : MaxLen
		}
	}
	AG=`n%AG%`n
	tmp := tmp . "MG_MaxLength=" . MaxLen . "`n"

	Loop, Parse, Buttons,`n
	{
		if(RegExMatch(AG,"`n" . A_LoopField . "_")){
			Join(Triggers,A_LoopField,"_")
			Use_%A_LoopField%=1
		}else{
			Join(BT2,A_LoopField)
		}
	}
	tmp := tmp . "MG_Triggers=" . Triggers . "`n"
	
	AG:=RegExReplace(AG,"_","`n")
	Loop, Parse, BT2,`n
	{
		if(RegExMatch(AG,"`n" . A_LoopField . "`n")){
			Join(SubTriggers,A_LoopField,"_")
			Use_%A_LoopField%=1
		}
	}
	tmp := tmp . "MG_SubTriggers=" . SubTriggers . "`n"
	
	Triggers=%Triggers%_%SubTriggers%
	Loop, Parse, Triggers, _
	{
		FileRead, ahk, %A_ScriptDir%\Components\Buttons\%A_LoopField%.ahk
		tmp := tmp . "`n`n" . ahk
	}
	tmp := tmp . "`n`nGoto,MG_Config_End`n`n"

	Loop, %Target_Count%
	{
		tmp := tmp . "`n" . TargetToAhk(A_Index)
	}
	Loop, %Gesture_Count%
	{
		tmp := tmp . "`n" . GestureToAhk(A_Index)
	}

	if (Config_HotkeyEnable) {
		tmp .= "`n" . Config_HotkeyEnable . "::Gosub, MG_ToggleEnable`n"
	}

	if (Config_HotkeyNavi) {
		tmp .= "`n" . Config_HotkeyNavi . "::Gosub, MG_NaviToggleEnable`n"
	}

	tmp := tmp . "`n`nMG_Config_end:"
	return tmp
}

;-------------------------------------------------------------------------------
; Make Configuration Strings
;														Implemented by lukewarm
;														Modified by Pyonkichi
;-------------------------------------------------------------------------------
ConfigToAhk()
{
	local res := ""
	Loop, Parse, ConfRecognition,`n
	{
		res := res . "MG_" . A_LoopField . "=" . Config_%A_LoopField% . "`n"
	}
	Loop, Parse, ConfNavi,`n
	{
		res := res . "MG_" . A_LoopField . "=" . Config_%A_LoopField% . "`n"
	}
	Loop, Parse, ConfAdNavi,`n
	{
		res := res . "MG_" . A_LoopField . "=" . Config_%A_LoopField% . "`n"
	}
	Loop, Parse, ConfTrail,`n
	{
		res := res . "MG_" . A_LoopField . "=" . Config_%A_LoopField% . "`n"
	}
	Loop, Parse, ConfOthers,`n
	{
		res := res . "MG_" . A_LoopField . "=" . Config_%A_LoopField% . "`n"
	}
	Loop, Parse, Buttons, `n
	{
		if (Config_ExNaviFG_%A_LoopField% != "") {
			res := res . "MG_ExNaviFG_" . A_LoopField . "=" . Config_ExNaviFG_%A_LoopField% . "`n"
		}
	}
	return res
}

;-------------------------------------------------------------------------------
; Make Target Judgment Strings
;														Implemented by lukewarm
;														Modified by Pyonkichi
;-------------------------------------------------------------------------------
TargetToAhk(idx)
{
	local res := 0
	local delim := Target_%idx%_IsAnd ? " && " : " || "
	Loop, % Target_%idx%_Count
	{
		local invert, method
		local szType := Target_%idx%_%A_Index%_Type
		GetMatchRule(szType, invert, method)

		local szNot := invert ? "!" : ""
		szType := RegExReplace(szType, "_.+$")
		if (szType = "Custom") {
			Join(res, szNot . "(" . Target_%idx%_%A_Index%_Value . ")", delim)
		}
		else if (szType = "Include") {
			Join(res, szNot . "(MG_Is" . Target_%idx%_%A_Index%_Value . "())", delim)
		}
		else if (method == 1) {
			Join(res, szNot . "(MG_" . szType . "=""" . Target_%idx%_%A_Index%_Value . """)", delim)
		}
		else {
			Join(res, szNot . "(MG_StrComp(MG_" . szType . ", """ . Target_%idx%_%A_Index%_Value . """, " . method . "))", delim)
		}
	}
	if(!res){
		res=0
	}
	res:="MG_Is" . Target_%idx%_Name . "(){`n	global`n	return (" . res . ")`n}`n"
	return res
}

;-------------------------------------------------------------------------------
; Make Gesture Subroutine Strings
;														Implemented by lukewarm
;														Modified by Pyonkichi
;-------------------------------------------------------------------------------
GestureToAhk(idx)
{
	global
	if (!Gesture_%idx%_Patterns) {
		return
	}
	local szSub1:="", szSub2:="", szCont1:="", szCont2:="", szAct:=""
	local szLabel1 := RegExReplace(RegExReplace(Gesture_%idx%_Patterns, "(^|\n)", "$1MG_Gesture_"),   "\n|$", ":`n")
	local szLabel2 := RegExReplace(RegExReplace(Gesture_%idx%_Patterns, "(^|\n)", "$1MG_GetAction_"), "\n|$", ":`n")

	Loop, % Gesture_%idx%_Count
	{
		szAct := RegExReplace(Gesture_%idx%_%A_Index%_Action, "^;|\t.+$")
		szAct := RegExReplace(szAct, """", """""")
		if(Gesture_%idx%_%A_Index%_Target="Default")
		{
			szCont1 := RegExReplace(Gesture_%idx%_%A_Index%_Action, "(?<!\t)\t", "`n		")
			szCont2 := "MG_ActionStr := """ . szAct . """"
		}
		else if (szSub1)
		{
			szSub1 := szSub1  . "else if(MG_Is" . Gesture_%idx%_%A_Index%_Target . "()){`n		" . RegExReplace(Gesture_%idx%_%A_Index%_Action,"(?<!\t)\t", "`n		") . "`n	}"
			szSub2 := szSub2 . "else if(MG_Is" . Gesture_%idx%_%A_Index%_Target . "()){`n		MG_ActionStr := """ . szAct . """`n	}"
		}
		else
		{
			szSub1 := "if(MG_Is" . Gesture_%idx%_%A_Index%_Target . "()){`n		" . RegExReplace(Gesture_%idx%_%A_Index%_Action,"(?<!\t)\t", "`n		") . "`n	}"
			szSub2 := "if(MG_Is" . Gesture_%idx%_%A_Index%_Target . "()){`n		MG_ActionStr := """ . szAct . """`n	}"
		}
	}
	if (szSub1)
	{
		if (!szCont1) {
			szCont1 := "MG_Cancel()"
			szCont2 := "MG_ActionStr := """""
		}
		szSub1 = %szLabel1%	%szSub1%else{`n		%szCont1%`n	}`n
		szSub2 = %szLabel2%	%szSub2%else{`n		%szCont2%`n	}`n
	}
	else
	{
		szSub1 = %szLabel1%	%szCont1%`n
		szSub2 = %szLabel2%	%szCont2%`n
	}
	szSub1 = %szSub1%return`n`n%szSub2%return`n
	return szSub1
}

#NoEnv
#Singleinstance force
;#NoTrayIcon

