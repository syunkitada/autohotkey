mydoc_gui := Gui(, "Doc")
mydoc_gui.SetFont(, "Consolas") ; Consolasは、VSCodeのデフォルトです
mydoc_input := mydoc_gui.Add("Edit", "Y10 X10 w500 r1 WantReturn")
mydoc_input.OnEvent("change", mydoc_input_on_change)
mydoc_help_text := mydoc_gui.Add("Edit", "X10 w500 r50 Multi ReadOnly Wrap", "")

mydoc_gui_show() {
    mydoc_help_text.Value := mydoc_get_help_text("")
    mydoc_gui.Show()
}

mydoc_gui_hide() {
    mydoc_input.Text := ""
    mydoc_help_text.Value := ""
    mydoc_gui.Hide()
}

mydoc_input_on_change(obj, info) {
    mydoc_help_text.Value := mydoc_get_help_text(mydoc_input.Text)
}

mydoc_map := Map(
    "default", {
        help: "default `t Show keymap",
        help_file: A_ScriptDir . "\..\home\docs\env\keybind\default.txt",
        help_text: ""
    },
    "tmux", {
        help: "tmux    `t Show keymap",
        help_file: A_ScriptDir . "\..\home\docs\env\keybind\tmux.txt",
        help_text: ""
    },
    "zsh", {
        help: "zsh     `t Show keymap",
        help_file: A_ScriptDir . "\..\home\docs\env\keybind\zsh.txt",
        help_text: ""
    },
    "vim", {
        help: "vim     `t Show keymap",
        help_file: A_ScriptDir . "\..\home\docs\env\keybind\vim.txt",
        help_text: ""
    },
    "slack", {
        help: "slack   `t Show keymap",
        help_file: A_ScriptDir . "\..\home\docs\env\keybind\vim.txt",
        help_text: ""
    },
)

mydoc_get_help_text(input_text) {
    inputs := StrSplit(input_text, ";")

    if inputs.Length > 0 {
        if (mydoc_map.has(inputs[1])) {
            doc := mydoc_map.get(inputs[1])
            if doc.help_text == "" {
                doc.help_text := FileRead(doc.help_file) 
            }
            return doc.help . "`n`n" . doc.help_text
        }
    }

    help_msg := ""
    for (key, value in mydoc_map) {
        help_msg := help_msg . value.help . "`n"
    }

    return help_msg
}
