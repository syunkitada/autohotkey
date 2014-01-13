;===============================================================================
;
;		MouseGestureL.ahk - Common Functions Library
;
;														Created by Pyonkichi
;===============================================================================
MG_Version := 1.19

MG_RuleNames =
(LTrim Join|
	WClass
	WClass_[NPTBR][PTBR]?
	CClass
	CClass_[NPTBR][PTBR]?
	Title
	Title_[NPTBR][PTBR]?
	Exe
	Exe_[NPTBR][PTBR]?
	Custom
	Custom_N
	Include
	Include_N
)
MG_SaveModificationObj := Func("SaveModification")
Goto MG_CommonLibEnd

;-------------------------------------------------------------------------------
; Reload Gesture Configurations
;														Implemented by lukewarm
;														Modified by Pyonkichi
;-------------------------------------------------------------------------------
MG_Reload()
{
	RunWait, %A_AhkPath% "%A_ScriptDir%\MG_Edit.ahk" /ini2ahk
	Reload
}

;-------------------------------------------------------------------------------
; Edit Gesture Configurations
;														Implemented by lukewarm
;														Modified by Pyonkichi
;-------------------------------------------------------------------------------
MG_Edit()
{
	global
	if (MG_EditCommand) {
		Run, %MG_EditCommand%
		return
	}
	MG_SearchPlugins()
	local t1:=0, t2:=0
	FileGetTime, t1, %A_ScriptDir%\Config\MG_Config.ahk
	RunWait, %A_AhkPath% "%A_ScriptDir%\MG_Edit.ahk"
	FileGetTime, t2, %A_ScriptDir%\Config\MG_Config.ahk
	if (t2 > t1)
	{
		Reload
		CheckConfigurationError()
	}
}

;-------------------------------------------------------------------------------
; Wait Error Message
;														Implemented by Pyonkichi
;-------------------------------------------------------------------------------
CheckConfigurationError()
{
	global MC_LngButton001, MC_LngButton002, MC_LngMessage004
	WinWait, MouseGestureL.ahk ahk_class #32770, Error
	if (ErrorLevel==0)
	{
		ControlGetText, szMsg1, Static1
		ControlGetText, szMsg2, Static2
		WinClose
		Gui, MGW_Msg:New
		Gui, MGW_Msg:+HWNDhMGW_Msg
		Gui, MGW_Msg:Add, Text, x10 y10, % MC_LngMessage004 . szMsg1 . szMsg2
		Gui, MGW_Msg:Add, Button, gOnSendClipboard x+-250 y+16 w160 h26, %MC_LngButton002%
		Gui, MGW_Msg:Add, Button, gOnMsgClosed x+10 yp+0 w80 h26, %MC_LngButton001%
		Gui, MGW_Msg:Show, ,
		WinWaitClose, ahk_id %hMGW_Msg%
	}
	return

	;---------------------------------------------------------------------------
	; Copy to Clipboard
OnSendClipboard:
	Clipboard := szMsg1 . szMsg2
	Gui, MGW_Msg:Destroy
	return

	;---------------------------------------------------------------------------
	; Canceled
OnMsgClosed:
MGW_MsgGuiClose:
MGW_MsgGuiEscape:
	Gui, MGW_Msg:Destroy
	return
}

;-------------------------------------------------------------------------------
; Check whether configuration files exist
;														Implemented by Pyonkichi
;-------------------------------------------------------------------------------
MG_CheckConfigFiles()
{
	global MG_IsEdit, MC_LngMessage001
	szConfDir := A_ScriptDir . "\Config"
	szNewIni := szConfDir . "\MouseGestureL.ini"
	szOldIni := A_ScriptDir . "\MouseGesture.ini"
	fEdit := false
	if (!FileExist(szConfDir))
	{
		FileCreateDir, %szConfDir%
		fEdit := true
	}
	else if (!FileExist(szNewIni))
	{
		if (FileExist(szOldIni))
		{
			FileCopy, %szOldIni%, %szNewIni%
		}
		else
		{
			szSample := ".sample"
			if (FileExist(szNewIni . ".preset"))
			{
				MsgBox, 4,, %MC_LngMessage001%
				IfMsgBox, Yes
				{
					szSample := ".preset"
				}
			}
			FileCopy, %szNewIni%%szSample%, %szNewIni%
		}
		fEdit := true
	}
	if (!MG_IsEdit)
	{
		if (fEdit) {
			MG_Edit()
		}
		else if (!FileExist(szConfDir . "\MG_Config.ahk")) {
			MG_Reload()
		}
	}
}

;-------------------------------------------------------------------------------
; Load Ini File
;														Implemented by lukewarm
;														Modified by Pyonkichi
;-------------------------------------------------------------------------------
MG_LoadIniFile(szFileName)
{
	global Target_Count, Gesture_Count
	Target_Count  := 0
	Gesture_Count := 0
	FileRead, szIni, %szFileName%
	MG_LoadIni(szIni)
}

;-------------------------------------------------------------------------------
; Convert ini string to variables
;														Implemented by lukewarm
;														Modified by Pyonkichi
;-------------------------------------------------------------------------------
MG_LoadIni(szIni)
{
	global
	local szLine, $, $1, $2, com, SName, tidx, gidx, rcount, acount, flgGes
	szIni .= "`n[EndOfIni]`n"
	MG_Imported := false
	Loop, parse, szIni, `n, `r%A_Tab%%A_Space%
	{
		;-----------------------------------------------------------------------
		; Read one line : 行データ取得
		;-----------------------------------------------------------------------
		szLine := A_LoopField
		;.......................................................................
		; Start comments : 範囲コメント開始
		if (RegExMatch(szLine, "^\s*\/\*"))
		{
			if (!RegExMatch(szLine, "\*\/\s*$")){
				com := 1
			}
		}
		;.......................................................................
		; End comments : 範囲コメント終了
		else if (RegExMatch(szLine, "\*\/\s*$"))
		{
			com := 0
		}
		;.......................................................................
		; Skip other comments : その他コメントはスキップ
		else if (RegExMatch(szLine, "^\s*#")||com)
		{
		}
		;-----------------------------------------------------------------------
		; Section : セクション
		;-----------------------------------------------------------------------
		else if (RegExMatch(szLine, "^\[(.+)\]$", $))
		{
			;.......................................................................
 			; Previous section is gesture : 前のセクションがジェスチャーだった場合
			if (flgGes)
			{
				Gesture_%gidx%_Count := acount
				if (!Gesture_%gidx%_Name)
				{
					Gesture_%gidx%_Name := SName
					Gesture_Count++
					MG_Imported := true
				}
			}
			;.......................................................................
			; Previous section is condition : 前のセクションが条件定義だった場合
			else if (SName!="Settings" && SName!="")
			{
				Target_%tidx%_Count := rcount
				if (!Target_%tidx%_Name)
				{
					Target_%tidx%_Name := SName
					Target_Count++
					MG_Imported := true
				}
			}
			;.......................................................................
			SName := $1
			tidx := TargetIndexOf(SName)
			if (tidx)
			{
				rcount := Target_%tidx%_Count
			}
			else
			{
				tidx := Target_Count + 1
				Target_%tidx%_Name	:= ""
				Target_%tidx%_IsAnd	:= 0
				rcount=0
			}
			gidx := GestureIndexOf(SName)
			if (gidx)
			{
				acount := Gesture_%gidx%_Count
				flgGes := 2
			}
			else
			{
				gidx := Gesture_Count + 1
				Gesture_%gidx%_Name		:= ""
				Gesture_%gidx%_Patterns	:= ""
				Gesture_%gidx%_Default	:= ""
				acount := 0
				flgGes := 0
			}
		}
		;-----------------------------------------------------------------------
		; Entry : エントリ
		;-----------------------------------------------------------------------
		else if (RegExMatch(szLine, "^(.+?)\s*=\s*(.*?)$", $))
		{
			if (SName = "Settings")
			{
				Config_%$1% := $2
			}
			;.......................................................................
			; Target rule : ターゲットルール
			else if (RegExMatch($1, "^(" . MG_RuleNames . ")$"))
			{
				if (!MG_RuleExists(tidx, $1, $2))
				{
					rcount++
					Target_%tidx%_%rcount%_Type	 := $1
					Target_%tidx%_%rcount%_Value := $2
				}
			}
			;.......................................................................
			; Target rule and mode : ターゲットルールANDモード
			else if ($1 = "And")
			{
				Target_%tidx%_IsAnd:=$2
			}
			;.......................................................................
			; Gesture : ジェスチャー
			else if ($1 = "G")
			{
				local giFound := MG_FindGesture($2)
				if (!giFound)
				{
					Join(Gesture_%gidx%_Patterns, $2)
					if (flgGes == 0) {
						flgGes := 1
					}
					MG_Imported := true
				}
				else if (flgGes < 2)
				{
					if (flgGes == 1) {
						Join(Gesture_%giFound%_Patterns, Gesture_%gidx%_Patterns)
					}
					gidx := giFound
					acount := Gesture_%gidx%_Count
					flgGes := 2
				}
			}
			;.......................................................................
			; Bound Action : 割り当てアクション
			else if (flgGes)
			{
				if (!MG_ActionExists(gidx, $1))
				{
					acount++
					Gesture_%gidx%_%acount%_Target := $1
					Gesture_%gidx%_%acount%_Action := $2
					MG_Imported := true
				}
			}
		}
	}
}

;-------------------------------------------------------------------------------
; Check whether specified rule exists
;														Implemented by Pyonkichi
;-------------------------------------------------------------------------------
MG_RuleExists(iTarget, szType, szValue)
{
	global
	Loop, % Target_%iTarget%_Count
	{
		if ((Target_%iTarget%_%A_Index%_Type  = szType)
		&&	(Target_%iTarget%_%A_Index%_Value = szValue))
		{
			return true
		}
	}
	return false
}

;-------------------------------------------------------------------------------
; Check whether specified action exists
;														Implemented by Pyonkichi
;-------------------------------------------------------------------------------
MG_ActionExists(iGesture, szTarget)
{
	global
	Loop, % Gesture_%iGesture%_Count
	{
		if (Gesture_%iGesture%_%A_Index%_Target = szTarget) {
			return true
		}
	}
	return false
}

;-------------------------------------------------------------------------------
; Retrieve Target Index by Name
;														Implemented by lukewarm
;-------------------------------------------------------------------------------
TargetIndexOf(name)
{
	global
	Loop, %Target_Count%
	{
		if (Target_%A_Index%_Name = name) {
			return A_Index
		}
	}
	return 0
}

;-------------------------------------------------------------------------------
; Retrieve Gesture Index by Name
;														Implemented by lukewarm
;-------------------------------------------------------------------------------
GestureIndexOf(name)
{
	global
	Loop, %Gesture_Count%
	{
		if (Gesture_%A_Index%_Name = name) {
			return A_Index
		}
	}
	return 0
}

;-------------------------------------------------------------------------------
; Retrieve Gesture Index by Gesture String
;														Implemented by Pyonkichi
;-------------------------------------------------------------------------------
MG_FindGesture(szGesture)
{
	global
	Loop, %Gesture_Count%
	{
		local idxGes := A_Index
		Loop, Parse, Gesture_%A_Index%_Patterns, `n
		{
			if (A_LoopField && (A_LoopField = szGesture)) {
				return idxGes
			}
		}
	}
	return 0
}

;-------------------------------------------------------------------------------
; Combine strings with delimiter
;														Implemented by lukewarm
;-------------------------------------------------------------------------------
Join(ByRef list, value, delim="`n")
{
	list := list ? (list . delim . value) : value
}

;-------------------------------------------------------------------------------
; Check and Select Language
;	fChoose : 0:Check whether language data is loaded
;			  1:Show "Choose Language" Dialog Box
;														Implemented by Pyonkichi
;-------------------------------------------------------------------------------
MG_CheckLanguage(fChoose=0)
{
	global MG_Language

	if (!fChoose)
	{
		; Check Language Data
		if (MG_Language)
		{
			return
		}
		; Language file does not exist
		; -> Select language automatically by LCID
		static szLanguage
		if (A_Language==0409 || A_Language==0809)
		{
			IfExist, %A_ScriptDir%\Languages\English.ahk
			{
				szLanguage := "English"
				Goto OnLngSelected
			}
		}
		else if (A_Language==0411)
		{
			IfExist, %A_ScriptDir%\Languages\Japanese.ahk
			{
				szLanguage := "Japanese"
				Goto OnLngSelected
			}
		}
	}
	;...........................................................................
	; Retrieve Name of Language Files
	szList := ""
	Loop, %A_ScriptDir%\Languages\*.ahk
	{
		if (A_LoopFileName != "MG_Language.ahk")
		{
			szList .= A_LoopFileName . "|"
		}
	}
	;...........................................................................
	; Show Choose Language Dialog Box
	Gui, MGW_Lng:New
	Gui, MGW_Lng:-MaximizeBox -MinimizeBox +HWNDhMGW_Lng
	Gui, MGW_Lng:Add, Text, x10 y10, Choose your language:
	Gui, MGW_Lng:Add, DropDownList, VszLanguage xp+0 y+10 w180, % RegExReplace(szList, ".ahk")
	Gui, MGW_Lng:Add, Button, gOnLngSelected x+-168 y+10 w80 Default, OK
	Gui, MGW_Lng:Add, Button, gOnLngCanceled x+8 yp+0 w80, &Cancel
	GuiControl, MGW_Lng:Choose, szLanguage, English
	Gui, MGW_Lng:Show, , Choose Language

	WinWaitClose, ahk_id %hMGW_Lng%
	return

	;---------------------------------------------------------------------------
	; Accepted
OnLngSelected:
	Gui, MGW_Lng:Submit
	file := FileOpen(A_ScriptDir . "\Languages\" . szLanguage . ".ahk", "r", "UTF-8")
	if (file)
	{
		szLng := file.Read(file.Length)
		file.Close
		if (!RegExMatch(szLng, "m)^[\s\t]*MG_Language\s*:=\s*RegExReplace"))
		{
			MsgBox, ERROR : Language file is invalid.
			Goto, OnLngCanceled
		}
		file := FileOpen(A_ScriptDir . "\Languages\MG_Language.ahk", "w `n", "UTF-8")
		if (!file)
		{
			MsgBox, ERROR : Failed in file writing.
			Goto, OnLngCanceled
		}
		file.Write("#" . "Include %A_ScriptDir%\Languages\" . szLanguage . ".ahk`n")
		file.Close
	}
	Reload

	;---------------------------------------------------------------------------
	; Canceled
OnLngCanceled:
MGW_LngGuiClose:
MGW_LngGuiEscape:
	if (fChoose)
	{
		Gui, MGW_Lng:Destroy
		return
	}
	else
	{
		ExitApp
	}
}

;-------------------------------------------------------------------------------
; Search Plugins
;	return=1 : Plugin Include Script has been Updated
;	return=0 : Plugin Include Script has Not been Changed
;														Implemented by Pyonkichi
;-------------------------------------------------------------------------------
MG_SearchPlugins()
{
	;...........................................................................
	; Search Plugin Script Files
	szInc := ""
	Loop, %A_ScriptDir%\Plugins\*.ahk
	{
		if (A_LoopFileName != "MG_Plugin.ahk")
		{
			szInc .= "#" . "Include *i %A_ScriptDir%\Plugins\" . A_LoopFileName . "`n"
		}
	}
	if (szInc == "") {
		return 0
	}
	;...........................................................................
	; Check if Plugin Files are Added or Removed
	file := FileOpen(A_ScriptDir . "\Plugins\MG_Plugin.ahk", "r `n", "UTF-8")
	if (file)
	{
		szCur := file.Read(file.Length)
		file.Close
		if (szCur == szInc) {
			return 0
		}
	}
	;...........................................................................
	; Write Plugin Include Script
	file := FileOpen(A_ScriptDir . "\Plugins\MG_Plugin.ahk", "w `n", "UTF-8")
	if (!file) {
		return 0
	}
	file.Write(szInc)
	file.Close
	return 1
}

;-------------------------------------------------------------------------------
; Show Help Document
;														Implemented by Pyonkichi
;-------------------------------------------------------------------------------
MG_ShowHelp()
{
	global MC_HelpFile
	IfWinExist, MouseGestureL-Help ahk_class HH Parent
	{
		WinActivate
	}
	else if(FileExist(A_ScriptDir . "\Docs\" . MC_HelpFile))
	{
		Run, %A_ScriptDir%\Docs\%MC_HelpFile%
	}
	else
	{
		MG_ShowNoHelpDlg()
	}
}

;-------------------------------------------------------------------------------
; Show No Help Dialog Box
;														Implemented by Pyonkichi
;-------------------------------------------------------------------------------
MG_ShowNoHelpDlg()
{
	global
	Gui, MGW_NoHelp:New
	Gui, MGW_NoHelp:-MaximizeBox -MinimizeBox +LastFound
	Gui, MGW_NoHelp:Margin, , 12
	Gui, MGW_NoHelp:Font, S11
	Gui, MGW_NoHelp:Add, Text, y+12 vMG_TextNoHelp Section, %MC_LngMessage002%
	Gui, MGW_NoHelp:Font, Underline cBlue 
	Gui, MGW_NoHelp:Add, Text, xp y+8 gMGW_NoHelpGoWebsite, %MC_LngMessage003%
	Gui, MGW_NoHelp:Font
	Gui, MGW_NoHelp:Show, Hide
	local left, width
	WinGetPos,,,width
	left := (width - 100) // 2
	Gui, MGW_NoHelp:Add, Button, x%left% y+20 w100 Default gMGW_NoHelpGuiClose, OK
	Gui, MGW_NoHelp:Show, Autosize
	return

  MGW_NoHelpGoWebsite:
	local szFolder := RegExReplace(MC_HelpFile, "\\.+$")
	szFolder := A_ScriptDir . "\Docs\" . szFolder
	if (!FileExist(szFolder)) {
		FileCreateDir, %szFolder%
	}
	RunWait, %szFolder%
	Sleep, 500
	Run, https://code.google.com/p/mousegesturel/downloads/list
  MGW_NoHelpGuiClose:
  MGW_NoHelpGuiEscape:
	Gui, MGW_NoHelp:Destroy
	return
}

;-------------------------------------------------------------------------------
; Get monitor rectangle that includes specified coordinates
;														Implemented by Pyonkichi
;-------------------------------------------------------------------------------
MG_GetMonitorRect(ptX, ptY, ByRef monL=0, ByRef monT=0, ByRef monR=0, ByRef monB=0, fWork=false)
{
	pt := (ptY<<32) | (ptX & 0xffffffff)
	hMon := DllCall("user32.dll\MonitorFromPoint", "UInt64",pt, "UInt",2, "Ptr")
	VarSetCapacity(infMon, 40, 0)
	NumPut(40, infMon, 0, "UInt")
	res := DllCall("user32.dll\GetMonitorInfo", "Ptr",hMon, "Ptr",&infMon, "UInt")
	offset := fWork ? 20 : 4
	monL := NumGet(infMon, offset+ 0, "Int")
	monT := NumGet(infMon, offset+ 4, "Int")
	monR := NumGet(infMon, offset+ 8, "Int")
	monB := NumGet(infMon, offset+12, "Int")
}

;-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
;
;	Plugin Menus
;
;-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
;-------------------------------------------------------------------------------
; Regisger Plugin Menu
;														Implemented by Pyonkichi
;-------------------------------------------------------------------------------
MG_AddPluginMenu(szName="", szCommand="")
{
	global
	if (MG_IsEdit) {
		return
	}
	MG_PluginMenuCount++
	MG_PluginMenu%MG_PluginMenuCount%_Name	  := szName
	MG_PluginMenu%MG_PluginMenuCount%_Command := szCommand
}

;-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
;
;	Custom Condition Templates
;
;-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
;-------------------------------------------------------------------------------
; Regisger Custom Condition Category
;														Implemented by lukewarm
;														Modified by Pyonkichi
;-------------------------------------------------------------------------------
MG_AddConditionCategory(key, name)
{
	global
	if (!MG_IsEdit
	||	CustomExpressions_%category%_Count)
	{
		return
	}
	Menu, CustomExpressions_%key%, Add
	Menu, CustomExpressions_%key%, DeleteAll
	Menu, CustomExpressions, Add, %name%, :CustomExpressions_%key%
}

;-------------------------------------------------------------------------------
; Regisger Custom Condition
;														Implemented by lukewarm
;														Modified by Pyonkichi
;-------------------------------------------------------------------------------
MG_AddCustomCondition(category, name="", value="")
{
	global
	if (!MG_IsEdit) {
		return
	}
	Menu, CustomExpressions_%category%, Add, %name%, CustomExpressionsMenuSelect
	local cnt := CustomExpressions_%category%_Count
	cnt := cnt ? cnt+1 : 1
	CustomExpressions_%category%_Count := cnt
	CustomExpressions_%category%_%cnt% := value
	return

	;---------------------------------------------------------------------------
	; The menu item has been selected
CustomExpressionsMenuSelect:
	if(IsLabel(%A_ThisMenu%_%A_ThisMenuItemPos%)){
		GoSub,% %A_ThisMenu%_%A_ThisMenuItemPos%
	}else{
		MG_SetRuleValue(%A_ThisMenu%_%A_ThisMenuItemPos%)
	}
	return
}

;-------------------------------------------------------------------------------
; Set Rule Value
;														Implemented by lukewarm
;-------------------------------------------------------------------------------
MG_SetRuleValue(val)
{
	GuiControl, 1:, ERuleValue, %val%
}


;-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
;
;	Action Templates
;
;-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
;-------------------------------------------------------------------------------
; Regisger Action Category
;														Implemented by Pyonkichi
;-------------------------------------------------------------------------------
MG_AddActionCategory(key="Others", name="???")
{
	global
	if (!MG_IsEdit) {
		return
	}
	local idx := GetActionCategoryIdx(key)
	if (idx)
	{
		ActionCategory%idx%_Name := name
	}
	else
	{
		if (key = "Others")
		{
			idx := "Temp"
		}
		else
		{
			ActionCategory_Count++
			idx := ActionCategory_Count
		}
		ActionCategory%idx%_Count := 0
		ActionCategory%idx%_Key	  := key
		ActionCategory%idx%_Name  := name
	}
	GuiControl,, DDLActionCategory, `n
}

;-------------------------------------------------------------------------------
; Regisger Action Template
;														Implemented by lukewarm
;														Modified by Pyonkichi
;-------------------------------------------------------------------------------
MG_AddActionTemplate(category, name, script)
{
	global
	if (!MG_IsEdit) {
		return
	}
	ActionCategory1_Count++
	ActionTitle1_%ActionCategory1_Count% := name
	ActionTemplate1_%ActionCategory1_Count% := script

	local idx := GetActionCategoryIdx(category)
	if (!idx)
	{
		MG_AddActionCategory(category)
		idx := (category = "Others") ? "Temp" : ActionCategory_Count
	}
	ActionCategory%idx%_Count++
	local cnt := ActionCategory%idx%_Count
	ActionTitle%idx%_%cnt% := name
	ActionTemplate%idx%_%cnt% := script
}

;-------------------------------------------------------------------------------
; Get Action Category Index by Key
;														Implemented by Pyonkichi
;-------------------------------------------------------------------------------
GetActionCategoryIdx(key)
{
	global
	if ((key = "Others") && ActionCategoryTemp_Key) {
		return "Temp"
	}
	Loop, %ActionCategory_Count%
	{
		if (key = ActionCategory%A_Index%_Key) {
			return A_Index
		}
	}
	return 0
}

;-------------------------------------------------------------------------------
; Add Action Script
;														Implemented by lukewarm
;														Modified by Pyonkichi
;-------------------------------------------------------------------------------
MG_AddActionScript(script, pos="")
{
	global
	script := ";" . ActionTitle%DDLActionCategory%_%DDLActionTemplate% . "`n" . script
	Gui, Submit, NoHide
	if(pos="top"){
		EAction=%script%`n%EAction%
	}else{
		Join(EAction, script)
	}
	GuiControl,1:, EAction, %EAction%
	MG_SaveModificationObj.("Modified", "EAction")
}

;-------------------------------------------------------------------------------
; Check whether the operating system is recent one
;														Implemented by Pyonkichi
;-------------------------------------------------------------------------------
MG_IsNewOS()
{
	return (A_OSVersion!="WIN_NT4" && A_OSVersion!="WIN_2000"
		&&	A_OSVersion!="WIN_XP"  && A_OSVersion!="WIN_2003")

}

MG_CommonLibEnd:
