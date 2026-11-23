/*
検索系の関数群です。
関数名はすべてfindで始まります。
*/

find_tab() {
	if winactive_is_chrome() {
		Send "^+a"
	} else if winactive_is_browser() {
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
