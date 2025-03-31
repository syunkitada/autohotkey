doc_map := Map(
    "default", {
        help: "default `t Show keymap",
        help_file: A_ScriptDir . "\..\home\docs_env\keybind\default.txt",
        help_text: ""
    },
    "tmux", {
        help: "tmux    `t Show keymap",
        help_file: A_ScriptDir . "\..\home\docs_env\keybind\tmux.txt",
        help_text: ""
    },
    "zsh", {
        help: "zsh     `t Show keymap",
        help_file: A_ScriptDir . "\..\home\docs_env\keybind\zsh.txt",
        help_text: ""
    },
    "vim", {
        help: "vim     `t Show keymap",
        help_file: A_ScriptDir . "\..\home\docs_env\keybind\vim.txt",
        help_text: ""
    },
    "slack", {
        help: "slack   `t Show keymap",
        help_file: A_ScriptDir . "\..\home\docs_env\keybind\vim.txt",
        help_text: ""
    },
)

get_doc_help(input_text) {
    inputs := StrSplit(input_text, ";")

    if inputs.Length > 0 {
        if (doc_map.has(inputs[1])) {
            doc := doc_map.get(inputs[1])
            if doc.help_text == "" {
                doc.help_text := FileRead(doc.help_file) 
            }
            return doc.help . "`n`n" . doc.help_text
        }
    }

    help_msg := ""
    for (key, value in doc_map) {
        help_msg := help_msg . value.help . "`n"
    }

    return help_msg
}

doc_gui := Gui(, "Doc")
doc_gui.SetFont(, "Consolas") ; Consolasは、VSCodeのデフォルトです
doc_input := doc_gui.Add("Edit", "Y10 X10 w500 r1 WantReturn")
doc_help_text := doc_gui.Add("Edit", "X10 w500 r50 Multi ReadOnly Wrap", "")

doc_input.OnEvent("change", onChangeDoc)

onChangeDoc(obj, info) {
    doc_help_text.Value := get_doc_help(doc_input.Text)
}

doc_gui_hide() {
    doc_input.Text := ""
    doc_help_text.Value := ""
    doc_gui.Hide()
}

doc_gui_show() {
    doc_help_text.Value := get_doc_help("")
    doc_gui.Show()
}