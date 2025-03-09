run_command() {
    if is_bypass() or !is_colon() {
        Return 0
    }

    global command
    cmds := StrSplit(command, ";")

    if (cmds[1] = "y")
        copy(cmds[2])
    else if (cmds[1] = "p")
        paste(cmds[2])
    else if (cmds[1] = "g")
        search_google(cmds[2])
    else if (cmds[1] = "eng")
        search_eng(cmds[2])
    else if (cmds[1] = "bash")
        bash()
    else if (cmds[1] = "ahk") {
        ahk(cmds[2])
    }
    reset_colon()

    Return 1
}

search_google(word) {
    if (word = "") {
        Run "https://www.google.com/search?q=" . A_Clipboard
    } else {
        Run "https://www.google.com/search?q=" . word
    }
}

search_eng(word) {
    if (word = "") {
        Run "http://ejje.weblio.jp/content/" . A_Clipboard
    } else {
        Run "http://ejje.weblio.jp/content/" . word
    }
}

ahk(command) {
    if (command = "" or command = "reload" or command = "r") {
        Reload
    } else if (command = "history" or command = "h") {
        KeyHistory
    } else if (command = "listhotkeys" or command = "lh") {
        ListHotkeys
    } else if (command = "listlines" or command = "ll") {
        ListLines
    } else if (command = "listvars" or command = "lv") {
        ListVars
    } else if (command = "edit" or command = "e") {
        Edit
    }
    Return
}

bash() {
    paste("bash")
    Return
}