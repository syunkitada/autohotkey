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

