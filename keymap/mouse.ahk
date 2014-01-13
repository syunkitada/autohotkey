;; ------------------------------
;; mouse mapping
;; 基本的にマウスの設定は、MouseGestureLで行います
;; そちらでカバーできない部分をこちらで設定する
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

XButton1 & WheelDown::AltTab

XButton2 & WheelUp::ShiftAltTab

/*
XButton1::
    backward_history()
    Return

XButton2::
    forward_history()
    Return

XButton1 & LButton::
    Send ^w
    Return
    
XButton1 & RButton::
    Send ^t
    Return
*/
