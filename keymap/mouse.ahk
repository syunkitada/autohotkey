;; ------------------------------
;; mouse mapping
;; ------------------------------
;XButton1::backward_history()

RButton::RButton

RButton & LButton::backward_history()

RButton & WheelDown::next_tab()

RButton & WheelUp::previous_tab()

;
;XButton1 & LButton::copy()
;
;XButton1 & RButton::paste()
;
;XButton2::forward_history()
;
;XButton2 & WheelDown::AltTab
;
;XButton2 & WheelUp::ShiftAltTab
;
;XButton2 & LButton::select_all()
;
;XButton2 & RButton::cut()
 

#WinActivateForce
~WheelDown::
   MouseGetPos,,,win ; Get the window below the mouse
   WinActivate, ahk_id %win%
return

~WheelUp::
   MouseGetPos,,,win ; Get the window below the mouse
   WinActivate, ahk_id %win%
return
