;; ------------------------------
;; setting determinig active window
;; ------------------------------
is_bypass() {
    Return 0
}

bypass() {
    Return 0
}

is_gvim() {
    if WinActive("ahk_exe" "gvim.exe") {
        Return 1
    }
    Return 0
}

is_terminal() {
    if is_rlogin() {
        Return 1
    } else if is_ubuntu_terminal() {
        Return 1
    }
    Return 0
}

is_rlogin() {
    if WinActive("ahk_class" "RLogin.exe")
        Return 1
    Return 0
}

is_ubuntu_terminal() {
    if WinActive("ahk_class" "ConsoleWindowClass")
        Return 1
    Return 0
}

is_vscode() {
    if WinActive("ahk_exe" "Code.exe") {
        Return 1 
    }
    Return 0
}

is_browser() {
    if is_chrome() {
        Return 1
    } else if is_firefox() {
        Return 1
    } else if is_msedge() {
        Return 1
    }
    Return 0
}

is_chrome() {
    if WinActive("ahk_exe" "chrome.exe") {
        Return 1
    }
    Return 0
}

is_firefox() {
    if WinActive("ahk_exe" "firefox.exe") {
        Return 1
    }
    Return 0
}

is_msedge() {
    if WinActive("ahk_exe" "msedge.exe") {
        Return 1
    }
    Return 0
}

;; ------------------------------
;; valiable and setter
;; ------------------------------
colon := 0
command := ""

reset_all() {
    reset_colon()
    Return
}

set_colon() {
    reset_all()
    global colon := 1
    append_colon("")
    Return 1
}

append_colon(str) {
    if !is_colon() {
        Return 0
    }
    global command
    command := command . str
    ToolTip ":" . command, 34, 0, 4
    Return 1
}

bs_colon() {
    global command
    command := SubStr(command, 1, StrLen(command) - 1)
    ToolTip ":" . command, 34, 0, 4
    Return
}

reset_colon() {
    global colon := 0
    global command := ""
    ToolTip "", 0, 0, 4
    Return
}

is_colon() {
    global colon
    Return colon = 1
}

escape() {
    IME_SET(0)
    Send "{Esc}"
    Return 1
}