;マウス関連の関数群です。
; 関数名はすべてmouse_で始まります。

mouse_move_to_monitor(num) {
    num := __get_target_monitor(num)
    SysGet, OutputVar, MonitorWorkArea, %num%
    x := (OutputVarLeft + OutputVarRight) / 2
    y := OutputVarBottom / 2
    CoordMode,Mouse,Screen
    DllCall("SetCursorPos", UInt,x, UInt,y)
    MouseMove, x, y
    Return
}
