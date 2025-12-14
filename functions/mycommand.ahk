mycommand_gui := Gui(, "MyCommand")
mycommand_gui.SetFont(, "Consolas") ; Consolasは、VSCodeのデフォルトです
mycommand_input := mycommand_gui.Add("Edit", "Y10 X10 w270 r1 WantReturn")
mycommand_input.OnEvent("change", mycommand_input_on_change)
mycommand_button := mycommand_gui.Add("Button", "Default Y8 X300", "OK")
mycommand_button.OnEvent("click", mycommand_on_sumit)
mycommand_help_text := mycommand_gui.Add("Text", "X10 w300 r10", "")

mycommand_gui_show() {
    mycommand_help_text.Text := mycommand_get_help_text("")
    mycommand_gui.Show()
}

mycommand_gui_hide() {
    mycommand_input.Text := ""
    mycommand_help_text.Text := ""
    mycommand_gui.Hide()
}

mycommand_input_on_change(obj, info) {
    mycommand_help_text.Text := mycommand_get_help_text(mycommand_input.Text)
}

mycommand_on_sumit(obj, info) {
    mycommand_gui.Hide()
    if mycommand_run(mycommand_input.Text) {
        mycommand_gui_hide()
    } else {
        mycommand_help_text.Text := "'" . mycommand_input.Text . "' command not found`n`n" . mycommand_get_help_text("")
        mycommand_gui.Show()
    }
}

mycommand_map := Map(
    "ahk", {
        help: "ahk;[sub_command] `t autohotkey helper command",
        help_long: "
        (
            ahk;[r|reload]       `t Reload Script
            ahk;[h|history]      `t Show History
            ahk;[lh|listhotkeys] `t Show List Hotkeys
            ahk;[ll|listlines]   `t Show List Lines
            ahk;[lv|listvars]    `t Show List Vars
        )",
        func: (this, arg) => mycommand_ahk(arg),
    },
    "shell", {
        help: "shell;[file]      `t Paste shell script",
        help_long: "
        (
            shell;bash       `t Paste bash script
        )",
        func: (this, arg) => mycommand_shell(arg),
    },
    "eng", {
        help: "eng;[word]        `t Search English word",
        help_long: "",
        func: (this, arg) => find_eng_by_web(arg),
    },
    "g", {
        help: "g;[word]          `t Search word by google",
        help_long: "",
        func: (this, arg) => find_text_by_web(arg),
    },
)

mycommand_run(command) {
    cmds := StrSplit(command, ";")

    if cmds.Length > 0 {
        if (mycommand_map.has(cmds[1])) {
            command := mycommand_map.get(cmds[1])
            help_args := StrSplit(command.help, ";")
            if help_args.Length == 1 {
                command.func()
            } else {
                command.func(cmds[2])
            }
            return 1
        }
    }

    return 0
}

mycommand_get_help_text(command) {
    cmds := StrSplit(command, ";")

    if cmds.Length > 0 {
        if (mycommand_map.has(cmds[1])) {
            return mycommand_map.get(cmds[1]).help . "`n" . mycommand_map.get(cmds[1]).help_long
        }
    }

    help_msg := ""
    for (key, value in mycommand_map) {
        help_msg := help_msg . value.help . "`n"
    }

    return help_msg
}

mycommand_ahk(command) {
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

mycommand_shell(name) {
    if (name = "bash") {
        tmp_text := FileRead(A_ScriptDir . "\templates\" . name)
        A_Clipboard := tmp_text
        paste()
    }
    Return
}

