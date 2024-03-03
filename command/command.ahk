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

bash() {
    paste("bash")
    Return
}