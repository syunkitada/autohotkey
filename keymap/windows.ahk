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

; TODO Git, git mode
#g::
    Return

; switch auto hide task bar
#h::
    Send {LWin} 
    Send {Esc}
    Send !{Enter}
    Sleep 400
    Send u
    Send {Enter}
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
    MouseGetPos, x, y
    PixelGetColor, hexRGB, %x%, %y%, RGB    ;hexRGB = 0xFFFFFF
    StringTrimLeft, RGB, hexRGB, 2    ;RGB = FFFFFF
    StringLower, rgb, RGB    ;rgb = ffffff
    clipboard = %rgb%
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


