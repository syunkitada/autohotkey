

run_command() {
    if bypass() or !is_colon() {
        Return 0
    }

    global command
    ClipSaved := ClipboardAll ;クリップボードの全内容を保存
    StringSplit, c, command, ";"

    if (c1 = "y")
        copy(c2)
    else if (c1 = "p")
        paste(c2)
    else if (c1 = "g")
        search_google(c2)
    else if (c1 = "eng")
        search_eng(c2)
    else if (c1 = "grad")
        css_gradation(c2, c3)
    else if (c1 ="line")
        css_line(c2, c3, c4)
    else if (c1 = "tshadow")
        css_textshadow(c2, c3)
    else if (c1 = "bshadow")
        css_boxshadow(c2, c3)
    else if (c1 = "button")
        css_button(c2, c3, c4)
    else if (c1 = "html")
        html(c2)
    else if (c1 = "esch")
        html_escape(c2)
    else if (c1 = "bash")
        bash()
    else if (c1 = "ahk") {
        ahk(c2)
    }
    reset_colon()

    Return 1
}

search_google(word) {
    if (word = "") {
        Run https://www.google.com/search?q=%clipboard%
    } else {
        Run https://www.google.com/search?q=%word%
    }
}

search_eng(word) {
    if (word = "") {
        Run http://ejje.weblio.jp/content/%clipboard%
    } else {
        Run http://ejje.weblio.jp/content/%word%
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

css_line(direction, op1, op2) {
    clipsaved = %clipboard%
    if op1 =
        op1 := "0.2"    ;default
    if op2 =
        op2 := "0.3"    ;default

    css := "border-top: 1px solid rgba(0, 0, 0, " op1 ")`;`nbox-shadow: "
    if (direction = "top") {
        css := "border-top: 1px solid rgba(0, 0, 0, " op1 ")`;`nbox-shadow: 0px 1px 0px rgba(255, 255, 255, " op2 ") inset`;`n"
    } else if (direction = "left") {
        css := "border-left: 1px solid rgba(0, 0, 0, " op1 ")`;`nbox-shadow: -1px 0px 0px rgba(255, 255, 255, " op2 ")`;`n"
    } else if (direction = "right") {
        css := "border-right: 1px solid rgba(0, 0, 0, " op1 ")`;`nbox-shadow: -1px 0px 0px rgba(255, 255, 255, " op2 ") inset`;`n"
    } else {    ; bottom (default)
        css := "border-bottom: 1px solid rgba(0, 0, 0, " op1 ")`;`nbox-shadow: 0px 1px 0px rgba(255, 255, 255, " op2 ")`;`n"
    }
    clipboard = %css%
    Send ^v
    clipboard = clipsaved
    clipsaved =
}

css_textshadow(op, is_darkbackground) {
    clipsaved = %clipboard%
    if op =
        op := "0.4"    ;default

    if is_darkbackground =
        clipboard := "text-shadow: -1px 1px rgba(255, 255, 255, " op ")`;`n"
    else
        clipboard := "text-shadow: 1px -1px rgba(0, 0, 0, " op ")`;`n"
    Send ^v
    clipboard = clipsaved
    clipsaved =
}

css_boxshadow(op, is_inset) {
    clipsaved = %clipboard%
    if op =
        op := "0.4"    ;default

    if is_inset =
        clipboard := "box-shadow: rgba(0, 0, 0, " op ") 0px 0px 2px`;`n"
    else
        clipboard := "box-shadow: inset rgba(0, 0, 0, " op ") 0px 0px 2px`;`n"
    Send ^v
    clipboard = clipsaved
    clipsaved =
}

css_gradation(color, sign) {
    clipsaved = %clipboard%
    if color =
        color = eeeeee
    if percentage =
        percentage = 2
    color1 = %color%
    color2 = %color%

    if (sign = "-") {
        sign = -1
    } else {
        sign = 1
    }
    color1 =% color_inc(color, 1*sign)
    color2 =% color_inc(color, -1*sign)

    clipboard := "background-color: #" color "`;`nbackground-image: -moz-linear-gradient(top, #" color1 ", #" color2 ")`;`nbackground-image: -ms-linear-gradient(top, #" color1 ", #" color2 ")`;`nbackground-image: -webkit-linear-gradient(top, #" color1 ", #" color2 ")`;`nbackground-image: -o-linear-gradient(top, #" color1 ", #" color2 ")`;`nbackground-image: linear-gradient(top, #" color1 ", #" color2 ")`;`nbackground-repeat: repeat-x`;"

    Send ^v
    clipboard = %clipsaved%
    clipsaved =
}

css_button(selector, color, sign) {
    clipsaved = %clipboard%
    text_color = 222222
    if color =
        color = eeeeee
    color1 = %color%
    color2 = %color%
    if (sign = "-") {
        sign = -1
    } else {
        sign = 1
    }
    color1 =% color_inc(color, 1*sign)
    color2 =% color_inc(color, -1*sign)
    hover_color =% color_inc(color, 1)
    hover_color1 =% color_inc(color1, 1)
    hover_color2 =% color_inc(color2, 1)

    FileRead,template,%A_ScriptDir%\templates\cssbutton.txt
    Transform,clipboard,Deref,%template%
    Send ^v

    clipboard = clipsaved
    clipsaved =
}
color_inversion(color) {

}

color_inc(color, sign) {
    i = 1
    len =% StrLen(color)
    Loop %len% {
        StringMid, out, color, i, 1
        dec =% hex_to_dec(out)
        EnvAdd, dec, sign
        hex =% dec_to_hex(dec)
        result .= hex
    }
    Return result
}

dec_to_hex(dec) {
    if (dec = "10")
        hex = a
    else if (dec = "11")
        hex = b
    else if (dec = "12")
        hex = c
    else if (dec = "13")
        hex = d
    else if (dec = "14")
        hex = e
    else if (dec = "15")
        hex = f
    else
        hex = %dec%
    Return hex
}

hex_to_dec(hex) {
    if hex = a
        dec = 10
    else if hex = b
        dec = 11
    else if hex = c
        dec = 12
    else if hex = d
        dec = 13
    else if hex = e
        dec = 14
    else if hex = f
        dec = 15
    else
        dec = %hex%
    Return dec
}

html(content) {
    if (content = "c")
        FileRead,content,%A_ScriptDir%\templates\htmlcontent.txt
    clipsaved = %clipboard%
    FileRead,template,%A_ScriptDir%\templates\html5.txt
    Transform,inifile,Deref,%template%
    clipboard = %inifile%
    Send ^v
    clipboard = %clipsaved%
    Return
}

html_escape(option) {
    clipsaved = %clipboard%
    cut()
    clip = %clipboard%
    if (option = "b") {
        ; 改行を<br>にする
        Transform,clip,HTML,%clip%
    } else {
        StringReplace, clip, clip, &, &amp`;, A
        StringReplace, clip, clip, >, &gt`;, A
        StringReplace, clip, clip, <, &lt`;, A
        StringReplace, clip, clip, ", &quot`;, A
    }
    clipboard = %clip%
    paste()
    escape()
    clipboard = %clipsaved%

    Return
}

bash() {
    paste("setup_bash.sh")
    Return
}


