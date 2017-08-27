; プログラムランチャ関連の関数群です。
; 関数名はすべてrun_で始まります。

run_mintty() {
	Run, C:\Users\owner\Desktop\cygwin64\cygwin64
	Return
}

run_crome() {
	run chrome.exe
	Return
}

run_firefox() {
	run firefox.exe
	Return
}

run_eclipse_android() {
	run C:\Users\owner\Desktop\eclipse\eclipse-android
	Return
}

run_eclipse_web() {
	run C:\Users\owner\Desktop\eclipse\eclipse-web
	Return
}

; internet explore
run_iexplore() {
	run iexplore.exe
	Return
}


run_paint() {
	run %windir%\system32\mspaint.exe
	Return
}

run_teraterm() {
	run C:\Users\owner\Desktop\cygwin\teraterm\ttermpro.exe
	Return
}

run_vim() {
	run C:\Users\owner\Desktop\cygwin\vim\gvim.exe
	Return
}
