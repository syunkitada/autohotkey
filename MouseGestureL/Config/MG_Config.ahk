MG_8Dir=1
MG_ActiveAsTarget=0
MG_Interval=30
MG_Threshold=60
MG_LongThresholdX=800
MG_LongThresholdY=600
MG_LongThreshold=700
MG_TimeoutThreshold=12
MG_Timeout=400
MG_DGInterval=0
MG_ORangeDefault=3
MG_ORangeA=3
MG_ORangeB=3
MG_EdgeInterval=20
MG_EdgeIndiv=0
MG_CornerX=1
MG_CornerY=1
MG_DisableDefMB=0
MG_DisableDefX1B=0
MG_DisableDefX2B=0
MG_UseNavi=1
MG_UseExNavi=3
MG_NaviInterval=10
MG_NaviPersist=0
MG_ExNaviTransBG=1
MG_ExNaviFG=000000
MG_ExNaviBG=FFFFFF
MG_ExNaviTranspcy=255
MG_ExNaviSize=24
MG_ExNaviSpacing=2
MG_ExNaviPadding=4
MG_ExNaviMargin=8
MG_AdNaviFG=FFFFFF
MG_AdNaviNI=7F7F7F
MG_AdNaviBG=000000
MG_AdNaviTranspcy=220
MG_AdNaviSize=12
MG_AdNaviFont=Meiryo
MG_AdNaviPosition=0
MG_AdNaviPaddingL=6
MG_AdNaviPaddingR=6
MG_AdNaviPaddingT=3
MG_AdNaviPaddingB=4
MG_AdNaviRound=1
MG_AdNaviMargin=14
MG_AdNaviSpaceX=2
MG_AdNaviSpaceY=2
MG_AdNaviOnClick=0
MG_ShowTrail=1
MG_DrawTrailWnd=1
MG_TrailColor=0000FF
MG_TrailTranspcy=155
MG_TrailWidth=10
MG_TrailStartMove=3
MG_TrailInterval=10
MG_HotkeyEnable=
MG_HotkeyNavi=
MG_ScriptEditor=
MG_UserName=
MG_Password=
MG_TraySubmenu=0
MG_AdjustDlg=0
MG_DlgHeightLimit=800
MG_EditCommand=
MG_MaxLength=7
MG_Triggers=RB
MG_SubTriggers=LB_WU_WD


Goto,MG_RB_End

MG_RB_Enable:
	Hotkey,*RButton,MG_RB_DownHotkey,On
	Hotkey,*RButton up,MG_RB_UpHotkey,On
return

MG_RB_Disable:
	Hotkey,*RButton,MG_RB_DownHotkey,Off
	Hotkey,*RButton up,MG_RB_UpHotkey,Off
return

MG_RB_DownHotkey:
	MG_TriggerDown("RB")
return

MG_RB_UpHotkey:
	MG_TriggerUp("RB")
return

MG_RB_Down:
	SetMouseDelay,-1
	Send,{Blind}{RButton Down}
return

MG_RB_Up:
	SetMouseDelay,-1
	Send,{Blind}{RButton Up}
return

MG_RB_Check:
	if (!GetKeyState("RButton", "P")) {
		MG_TriggerUp("RB")
	}
return

MG_RB_End:


Goto,MG_LB_End

MG_LB_Enable:
	Hotkey,*LButton,MG_LB_DownHotkey,On
	Hotkey,*LButton up,MG_LB_UpHotkey,On
return

MG_LB_Disable:
	Hotkey,*LButton,MG_LB_DownHotkey,Off
	Hotkey,*LButton up,MG_LB_UpHotkey,Off
return

MG_LB_DownHotkey:
	MG_TriggerDown("LB")
return

MG_LB_UpHotkey:
	MG_TriggerUp("LB")
return

MG_LB_Down:
	SetMouseDelay,-1
	Send,{Blind}{LButton Down}
return

MG_LB_Up:
	SetMouseDelay,-1
	Send,{Blind}{LButton Up}
return

MG_LB_Check:
	if (!GetKeyState("LButton", "P")) {
		MG_TriggerUp("LB")
	}
return

MG_LB_End:


Goto,MG_WU_End

MG_WU_Enable:
	Hotkey,*WheelUp,MG_WU_Hotkey,On
return

MG_WU_Disable:
	Hotkey,*WheelUp,MG_WU_Hotkey,Off
return

MG_WU_Hotkey:
	MG_ButtonPress("WU")
return

MG_WU_Press:
	SetMouseDelay,-1
	Send,{Blind}{WheelUp}
return

MG_WU_End:


Goto,MG_WD_End

MG_WD_Enable:
	Hotkey,*WheelDown,MG_WD_Hotkey,On
return

MG_WD_Disable:
	Hotkey,*WheelDown,MG_WD_Hotkey,Off
return

MG_WD_Hotkey:
	MG_ButtonPress("WD")
return

MG_WD_Press:
	SetMouseDelay,-1
	Send,{Blind}{WheelDown}
return

MG_WD_End:


Goto,MG_Config_End


MG_IsDisable(){
	global
	return (0)
}

MG_IsMenu(){
	global
	return ((MG_WClass="#32768"))
}

MG_IsDialogBox(){
	global
	return ((MG_WClass="#32770"))
}

MG_IsExplorer(){
	global
	return ((MG_WClass="CabinetWClass") || (MG_WClass="ExploreWClass"))
}

MG_IsCaption(){
	global
	return ((MG_HitTest()=="Caption"))
}

MG_Gesture_RB_:
	PostMessage, 0x001F, 0, 0
		PostMessage, 0x001F, 0, 0, , ahk_id %MG_HCTL%
		IfWinNotActive
		{
			WinActivate
		}
return

MG_GetAction_RB_:
	MG_ActionStr := "PostMessage, 0x001F, 0, 0"
return

MG_Gesture_RB_LB__:
	;Close Window
		close_window()
return

MG_GetAction_RB_LB__:
	MG_ActionStr := "Close Window"
return

MG_Gesture_RB_8:
	;Jump to Top
		Send,^{Home}
return

MG_GetAction_RB_8:
	MG_ActionStr := "Jump to Top"
return

MG_Gesture_RB_2:
	;Jump to Bottom
		Send,^{End}
return

MG_GetAction_RB_2:
	MG_ActionStr := "Jump to Bottom"
return

MG_Gesture_RB_4:
	;Back
		backward_history()
return

MG_GetAction_RB_4:
	MG_ActionStr := "Back"
return

MG_Gesture_RB_6:
	;Forward
		forward_history()
return

MG_GetAction_RB_6:
	MG_ActionStr := "Forward"
return

MG_Gesture_RB_9:
	;Maximize Window
		WinMaximize
return

MG_GetAction_RB_9:
	MG_ActionStr := "Maximize Window"
return

MG_Gesture_RB_3:
	;Minimize Window
		WinMinimize
return

MG_GetAction_RB_3:
	MG_ActionStr := "Minimize Window"
return

MG_Gesture_RB_7:
	;New Tab
		new_tab()
return

MG_GetAction_RB_7:
	MG_ActionStr := "New Tab"
return

MG_Gesture_RB_1:
	;Close Tab
		close_tab()
return

MG_GetAction_RB_1:
	MG_ActionStr := "Close Tab"
return

MG_Gesture_RB_WD_:
	;Next Tab
		next_tab()
return

MG_GetAction_RB_WD_:
	MG_ActionStr := "Next Tab"
return

MG_Gesture_RB_WU_:
	;Previous Tab
		previous_tab()
return

MG_GetAction_RB_WU_:
	MG_ActionStr := "Previous Tab"
return


MG_Config_end: