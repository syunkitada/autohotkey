;; ------------------------------
;; ctrl - key mapping
;; ------------------------------
^Esc::
    if !set_visual()
        Send ^{Esc}
    Return

^sc028:: ;colon
    if !set_colon()
        Send ^{sc028}
    Return

^a::
    if !select_all()
        Send ^a
    Return

^b::
    if !bookmark()
        Send ^b
    Return

^d::
    if !move_half_pagedown()
        Send ^d
    Return

^h::
    if !previous_tab()
        Send ^h
    Return

LCtrl & j::AltTab
RCtrl & j::AltTab

LCtrl & k::ShiftAltTab
RCtrl & k::ShiftAltTab

^l::
    if !next_tab()
        Send ^l
    Return

^t::
    if !new_tab()
        Send ^t
    Return

^u::
    if !move_half_pageup()
		Send ^u
    Return



