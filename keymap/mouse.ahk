;; ------------------------------
;; mouse mapping
;; ------------------------------
MButton::
	if bypass()
		Send {MButton}
	else if is_eclipse() {
		Send ^!h
	} else {
		Send {MButton}
	}
	Return

XButton1::backward_history()

XButton1 & WheelDown::next_tab()

XButton1 & WheelUp::previous_tab()

XButton1 & LButton::copy()

XButton1 & RButton::paste()

XButton2::forward_history()

XButton2 & WheelDown::AltTab

XButton2 & WheelUp::ShiftAltTab

XButton2 & LButton::select_all()

XButton2 & RButton::cut()
