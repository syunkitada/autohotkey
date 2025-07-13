winactive_is_ignored_app() {
    Return 0
}

winactive_is_gvim() {
    Return WinActive("ahk_exe" "gvim.exe")
}

winactive_is_terminal() {
    if winactive_is_rlogin() {
        Return 1
    } else if winactive_is_ubuntu_terminal() {
        Return 1
    } else if winactive_is_windows_terminal() {
        Return 1
    }
    Return 0
}

winactive_is_rlogin() {
    Return WinActive("ahk_exe" "RLogin.exe")
}

winactive_is_ubuntu_terminal() {
    Return WinActive("ahk_exe" "ubuntu.exe")
}

winactive_is_vscode() {
    Return WinActive("ahk_exe" "Code.exe")
}

winactive_is_windows_terminal() {
    Return WinActive("ahk_exe" "WindowsTerminal.exe")
}

winactive_is_browser() {
    if winactive_is_chrome() {
        Return 1
    } else if winactive_is_firefox() {
        Return 1
    } else if winactive_is_msedge() {
        Return 1
    }
    Return 0
}

winactive_is_chrome() {
    Return WinActive("ahk_exe" "chrome.exe")
}

winactive_is_firefox() {
    Return WinActive("ahk_exe" "firefox.exe")
}

winactive_is_msedge() {
    Return WinActive("ahk_exe" "msedge.exe")
}

winactive_is_slack() {
    Return WinActive("ahk_exe" "Slack.exe")
}