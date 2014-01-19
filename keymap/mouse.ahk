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


XButton2 & WheelDown::AltTab

XButton2 & WheelUp::ShiftAltTab

XButton2::copy()

XButton2 & LButton::paste()

XButton2 & RButton::cut()


