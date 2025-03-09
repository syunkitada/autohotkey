colon := 0
command := ""

reset_all() {
    reset_colon()
    Return
}

set_colon() {
    reset_all()
    global colon := 1
    append_colon("")
    Return 1
}

append_colon(str) {
    if !is_colon() {
        Return 0
    }
    global command
    command := command . str
    ToolTip ":" . command, 34, 0, 4
    Return 1
}

bs_colon() {
    global command
    command := SubStr(command, 1, StrLen(command) - 1)
    ToolTip ":" . command, 34, 0, 4
    Return
}

reset_colon() {
    global colon := 0
    global command := ""
    ToolTip "", 0, 0, 4
    Return
}

is_colon() {
    global colon
    Return colon = 1
}

operate(command) {
	if is_bypass() {
		Return 0
	}

	if append_colon(command) {
		Return 1
	}

    return 0
}