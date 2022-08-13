operate(command) {
	if bypass() {
		Return 0
	}

	if append_colon(command) {
		Return 1
	}

    return 0
}
