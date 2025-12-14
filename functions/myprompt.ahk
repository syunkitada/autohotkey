myprompt_gui := Gui(, "MyPrompt")
myprompt_gui.SetFont(, "Consolas") ; Consolasは、VSCodeのデフォルトです
myprompt_input := myprompt_gui.Add("Edit", "Y10 X10 w270 r1 WantReturn")
myprompt_input.OnEvent("change", myprompt_input_on_change)
myprompt_button := myprompt_gui.Add("Button", "Default Y8 X300", "OK")
myprompt_button.OnEvent("click", myprompt_on_sumit)
myprompt_help_text := myprompt_gui.Add("Text", "X10 w300 r10", "")

myprompt_gui_show() {
    myprompt_help_text.Text := myprompt_get_text(A_ScriptDir . "\..\home_ex\ai\prompts", "")
    myprompt_gui.Show()
}

myprompt_gui_hide() {
    myprompt_input.Text := ""
    myprompt_help_text.Text := ""
    myprompt_gui.Hide()
}

myprompt_input_on_change(obj, info) {
    myprompt_help_text.Text := myprompt_get_text(A_ScriptDir . "\..\home_ex\ai\prompts", myprompt_input.Text)
}

myprompt_on_sumit(obj, info) {
    tmp_text := myprompt_help_text.Text
    myprompt_gui.Hide()

    A_Clipboard := tmp_text
    paste()
}

myprompt_get_text(template_dir, input_text) {
    ; この関数は、テンプレートディレクトリ内のファイルを利用して、フォーマットされたテンプレートテキストもしくは、テンプレートファイルの候補一覧を返却します。
    ;
    ; テンプレートファイルが、input_textから一つに定まる場合は、そのテンプレートファイルをフォーマットしたテキストを返却します。
    ; マッチするファイルが複数または0の場合は、テンプレートファイル一覧を返します。
    ; ファイルが見つからない場合は、テンプレートディレクトリ内の全ファイル一覧を返します。
    ;
    ; Args:
    ;    template_dir(string): テンプレートファイルが格納されているディレクトリのパス
    ;    input_text(string):   入力テキスト。
    ;                          input_textはテンプレートファイル名の検索テキストと、テンプレートに埋め込むパラメータに分解されます。
    ;                          フォーマット: "検索テキスト;パラメータ"
    ;                          パラメータはオプショナルで、検索テキストのみ入力される場合もあります。
    ;                          パラメータが指定された場合、テンプレート内の$ARGUMENTSがパラメータの値に置換されます。
    ;
    ; Returns:
    ;    string: フォーマット済みテンプレートテキスト、または候補ファイル一覧
    
    ; input_textを";"で分割
    parts := StrSplit(input_text, ";")
    search_text := parts.Length > 0 ? parts[1] : ""
    template_param := parts.Length > 1 ? parts[2] : ""
    
    ; テンプレートディレクトリ内のファイルを取得
    matching_files := []
    Loop Files, template_dir "\*"
    {
        file_name := A_LoopFileName
        ; 検索テキストが空、またはファイル名に含まれる場合
        if (search_text = "" || InStr(file_name, search_text)) {
            matching_files.Push(A_LoopFilePath)
        }
    }
    
    ; マッチするファイルが1つの場合、テンプレートを読み込んでフォーマット
    if (matching_files.Length = 1) {
        template_content := FileRead(matching_files[1])
        
        ; テンプレートパラメータがある場合、$ARGUMENTSを置換
        if (template_param != "") {
            formatted_text := StrReplace(template_content, "$ARGUMENTS", template_param)
            return formatted_text
        }
        
        return template_content
    }
    
    ; マッチするファイルが複数、または0の場合、ファイル名一覧を返す
    ; ファイルが見つからない場合は全ファイル一覧を返す
    if (matching_files.Length = 0) {
        matching_files := []
        Loop Files, template_dir "\*"
        {
            matching_files.Push(A_LoopFilePath)
        }
    }
    
    result := "Files:`n"
    for index, file_path in matching_files {
        SplitPath(file_path, &file_name)
        result .= file_name "`n"
    }
    
    return result
}