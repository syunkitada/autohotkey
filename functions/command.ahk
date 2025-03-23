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
    }
    Return
}

bash() {
    paste("bash")
    Return
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

command_map := Map(
    "ahk", {
        help: "ahk;[sub_command]",
        help_long: "
        (
            ahk;[r|reload]       `t Reload Script
            ahk;[h|history]      `t Show History
            ahk;[lh|listhotkeys] `t Show List Hotkeys
            ahk;[ll|listlines]   `t Show List Lines
            ahk;[lv|listvars]    `t Show List Vars
        )",
        func: (arg) => ahk(arg),
    },
    "bash", {
        help: "bash",
        help_long: "",
        func: (this) => bash(),
    },
    "eng", {
        help: "eng;[word]",
        help_long: "",
        func: (this, arg) => search_eng(arg),
    },
    "g", {
        help: "g;[word]",
        help_long: "",
        func: (this, arg) => search_google(arg),
    },
)

run_mycommand(command) {
    cmds := StrSplit(command, ";")

    if cmds.Length > 0 {
        if (command_map.has(cmds[1])) {
            command := command_map.get(cmds[1])
            help_args := StrSplit(command.help, ";")
            if help_args.Length == 1 {
                command.func()
            } else {
                command.func(cmds[2])
            }
            return 1
        }
    }
}

get_help(command) {
    cmds := StrSplit(command, ";")

    if cmds.Length > 0 {
        if (command_map.has(cmds[1])) {
            return command_map.get(cmds[1]).help . "`n" . command_map.get(cmds[1]).help_long
        }
    }

    help_msg := ""
    for (key, value in command_map) {
        help_msg := help_msg . key . "`n"
    }

    return help_msg
}

mycommand_gui := Gui(, "MyCommand")
mycommand_input := mycommand_gui.Add("Edit", "Y10 X10 w220 r1 WantReturn")
mycommand_button := mycommand_gui.Add("Button", "Default Y8 X250", "OK")
mycommand_button.OnEvent("click", onSumitMyCommand)
mycommand_help_text := mycommand_gui.Add("Text", "X10 w250 r10", "")

mycommand_input.OnEvent("change", onChangeMyCommand)

onChangeMyCommand(obj, info) {
    mycommand_help_text.Text := get_help(mycommand_input.Text)
}

onSumitMyCommand(obj, info) {
    run_mycommand(mycommand_input.Text)
}

mycommand_gui_hide() {
    mycommand_input.Text := ""
    mycommand_help_text.Text := ""
    mycommand_gui.Hide()
}

mycommand_gui_show() {
    mycommand_gui.Show()
}