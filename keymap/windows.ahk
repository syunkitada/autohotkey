;; ------------------------------
;;  windows key
;; ------------------------------

; [KEYBIND] key=#Tab; tags=window; action=タスクビューを表示します;

; row 1 left
; #q:: 
; #w::
; #e::
; #r::
; #t::

; row 1 right
; [KEYBIND] key=#y; tags=window; action=カレントウィンドウを1/2のサイズでメインモニタの左に寄せます;
#y:: window_move(0, "left")
; [KEYBIND] key=#+y; tags=window; action=カレントウィンドウを3/4のサイズでメインモニタの左に寄せます;
#+y:: window_move(0, "left", 1.5)
; [KEYBIND] key=#u; tags=window; action=カレントウィンドウを1/2のサイズでメインモニタの右に寄せます;
#u:: window_move(0, "right")
; [KEYBIND] key=#+y; tags=window; action=カレントウィンドウを3/4のサイズでメインモニタの右に寄せます;
#+u:: window_move(0, "right", 1.5)
; [KEYBIND] key=#i; tags=window; action=カレントウィンドウを1/2のサイズでサブモニタの左に寄せます;
#i:: window_move(-1, "left")
; [KEYBIND] key=#+i; tags=window; action=カレントウィンドウを3/4のサイズでサブモニタの左に寄せます;
#+i:: window_move(-1, "left", 1.5)
; [KEYBIND] key=#o; tags=window; action=カレントウィンドウを1/2のサイズでサブモニタの右に寄せます;
#o:: window_move(-1, "right")
; [KEYBIND] key=#o; tags=window; action=カレントウィンドウを3/4のサイズでサブモニタの右に寄せます;
#+o:: window_move(-1, "right", 1.5)
; #p::


; row 2 left
; #a::
; #s::
; [KEYBIND] key=#d; tags=window; action=すべてのウィンドウを最小化します;
#d:: window_minimize_all()
; [KEYBIND] key=#f; tags=window; action=アクティブなウィンドウ以外を最小化します;
#f:: window_minimize_expect_active_window()
; #g::

; row 2 right
; [KEYBIND] key=<!w; tags=window; action=カレントウインドウをメインモニタの中央に配置する;
#h:: window_move_center()
; [KEYBIND] key=<!w; tags=window; action=カレントウインドウをメインモニタで最大化する;
#j:: window_maximize(0)
; [KEYBIND] key=<!e; tags=window; action=カレントウインドウをサブモニタで最大化する;
#k:: window_maximize(-1)
; [KEYBIND] key=#l; tags=monitor; action=画面をロックします;
; #l:: Default Action

; row 3 left
; #z::
; #x::
; [KEYBIND] key=#c; tags=clipboard; action=画面の一部をスクリーンショットしてコピーします;
#c:: Send "#S"
; [KEYBIND] key=#v; tags=clipboard; action=クリップボードの履歴を開いてペーストをします;
; #v:: Default Action
; #b::

; row 3 right
; #n::
; #m::