;; ------------------------------
;; setting exception application window
;; ------------------------------
bypass() {
    ifWinActive,ahk_class Emacs
        Return 1
    ifWinActive,ahk_class XEmacs
        Return 1
    Return 0
}

;; ------------------------------
;; setting determinig active window
;; ------------------------------
is_vim() {
    ifWinActive,ahk_class Vim
        Return 1
    Return 0
}

is_eclipse() {
    ifWinActive,ahk_class SWT_Window0
        Return 1
    Return 0
}

is_xmind() {
    ifWinActive,XMind
        Return 1
    Return 0
}

is_ubuntu_terminal() {
    ifWinActive,ahk_class ConsoleWindowClass
        Return 1
    Return 0
}

is_terminal() {
    ifWinActive,ahk_exe RLogin.exe
        Return 1
    ifWinActive,ahk_class ConsoleWindowClass
        Return 1
    ifWinActive,ahk_class PuTTY
        Return 1
    ifWinActive,ahk_class VTWin32
        Return 1
    ifWinActive,ahk_class mintty
        Return 1
    Return 0
}

is_vscode() {
    ifWinActive,ahk_exe Code.exe
        Return 1 
    Return 0
}

is_rlogin() {
    ifWinActive,ahk_exe RLogin.exe
        Return 1
    Return 0
}

is_teraterm() {
    ifWinActive,ahk_class VTWin32
        Return 1
    Return 0
}

is_mintty() {
    ifWinActive,ahk_class mintty
        Return 1
    Return 0
}

is_browser() {
    ifWinActive,ahk_class Chrome_WidgetWin_1
        Return 1
    ifWinActive,ahk_class MozillaWindowClass
        Return 1
    ifWinActive,ahk_class IEFrame
        Return 1
    ifWinActive,ahk_class OperaWindowClass
        Return 1
    Return 0
}

is_explorer() {
    ifWinActive,ahk_class CabinetWClass
        Return 1
    ifWinActive,ahk_class Clover_WidgetWin_0
        Return 1
    Return 0
}

is_sendplay() {
    ; onenoteは、up downがsendplayじゃないと動作しない
    ifWinActive,ahk_class Sticky_Notes_Note_Window
        Return 1
    ifWinActive,ahk_class Framework::CFrame
        Return 1
    Return 0
}

is_sendinput() {
    Return 0
}

;; ------------------------------
;; valiable and setter
;; ------------------------------
colon = 0
command =

reset_all() {
    reset_colon()
    Return
}

set_colon() {
    if bypass() {
        Return 0
    }
    reset_all()
    global colon = 1
    append_colon("")
    Return 1
}

append_colon(str) {
    if bypass() {
        Return 0
    }
    if !is_colon() {
        Return 0
    }
    global command
    command = %command%%str%
    ToolTip, :%command%, 34, 0, 4
    Return 1
}

bs_colon() {
    global command
    StringTrimRight, command, command, 1
    global colon = 1
    ToolTip, :%command%, 34, 0, 4
    Return
}

reset_colon() {
    global colon = 0
    global command =
    ToolTip, , , , 4
    Return
}

is_colon() {
    global colon
    Return colon
}

escape() {
    if bypass() {
        Send {Esc}
        Return 0
    }
    IME_SET(0)
    Send {Esc}
    Return 1
}
