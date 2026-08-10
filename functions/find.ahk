/*
検索系の関数群です。
関数名はすべてfindで始まります。
*/

find_by_web() {
	if winactive_is_ignored_app() {
		Return 0
	} else if winactive_is_browser() {
		Send "!d"
	} else {
		Run "https://www.google.co.jp/"
		Send "!d"
		IME_SET(0)
	}
	Return 1
}

find_selected_text_by_web() {
    copy()
    find_text_by_web("")
}

find_text_by_web(word) {
    if (word = "") {
        Run "https://www.google.com/search?q=" . A_Clipboard
    } else {
        Run "https://www.google.com/search?q=" . word
    }
}

find_eng_by_web(word) {
    if (word = "") {
        Run "http://ejje.weblio.jp/content/" . A_Clipboard
    } else {
        Run "http://ejje.weblio.jp/content/" . word
    }
}

find_text() {
    if winactive_is_terminal() {
        Send " ft"
    } else if winactive_is_vscode() {
        Send "^F"
    } else if winactive_is_browser() {
        Send "^F"
    } else {
        Send "^f"
    }
}

find_file() {
    if winactive_is_terminal() {
        Send " ff"
    } else if winactive_is_vscode() {
        Send "^E"
        Send "^p"
    } else if winactive_is_browser() {
        Send "^E"
        Send "^p"
    } else if winactive_is_slack() {
        Send "^g"
    }
}

find_tab() {
    if winactive_is_browser() {
        Send "^A"
    } else if winactive_is_slack() {
        Send "^k"
    }
}

find_cache() {
    if winactive_is_browser() {
        Send "^h"
    }
}

find_bookmark() {
    if winactive_is_browser() {
        Send "^O"
    }
}