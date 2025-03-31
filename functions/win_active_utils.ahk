is_bypass() {
    Return 0
}

is_gvim() {
    Return WinActive("ahk_exe" "gvim.exe")
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
    Return WinActive("ahk_exe" "RLogin.exe")
}

is_ubuntu_terminal() {
    Return WinActive("ahk_exe" "ubuntu.exe")
}

is_vscode() {
    Return WinActive("ahk_exe" "Code.exe")
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
    Return WinActive("ahk_exe" "chrome.exe")
}

is_firefox() {
    Return WinActive("ahk_exe" "firefox.exe")
}

is_msedge() {
    Return WinActive("ahk_exe" "msedge.exe")
}

is_slack() {
    Return WinActive("ahk_exe" "Slack.exe")
}