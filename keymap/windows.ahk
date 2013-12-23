;; ------------------------------
;;  windows key
;; ------------------------------
;#Left::WinMoveStep(-1,0)
;#Right::WinMoveStep(1,0)
;#Up::WinMoveStep(0,-1)
;#Down::WinMoveStep(0,1)

#a::
    run C:\Users\owner\Desktop\eclipse\eclipse-android
    Return

#b::
    run C:\Users\owner\Desktop\gnupack\mintty.exe
    Return

#c::
    run chrome.exe
    Return

#f::
    run firefox.exe
    Return

#h::
	switch_taskbar_display()
	Return
		
#i::
    run iexplore.exe
    Return

#j::
    run C:\Users\owner\Desktop\eclipse\eclipse-java
    Return

#o::
    run explorer.exe C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Microsoft Office
    Return

#p::
    run %windir%\system32\mspaint.exe
    Return

#s::
	get_color_on_mouseposition()
    Return

#t::
    run C:\Program Files\TrueCrypt\TrueCrypt.exe
    Return

#v::
    run C:\Users\owner\Desktop\gnupack\gvim.exe
    Return

#w::
    run C:\Users\owner\Desktop\eclipse\eclipse-web
    Return

#z::
	Reload
    Return


