;; ------------------------------
;; ctrl - key mapping
;; ------------------------------

LAlt::
	if !set_browsing()
		Send {Alt}
	Return

<!Space::
	if !set_mouse()
		Send !{Space}
	Return

<!Tab::
	if !emmet_wrap()
		Send ^{Tab}
	Return

<!/::
    if !search()
        Send ^/
    Return

<!sc028:: ;colon
    if !set_colon()
        Send !{sc028}
    Return

<!sc073:: ; \
	if !focus_addressbar()
		Send ^{sc073}
	Return

<!a::
	if !window_move(0, "left")
		Send !a
	Return

<!b::
    if !bookmark()
        Send !b
    Return

<!d::
	if !window_move(-1, "left")
		Send !d
	Return

<!e::
	if !window_maximize(-1)
		Send !e
	Return

<!f::
	if !window_move(-1, "right")
		Send !f
	Return

<!g::
	if !window_move_center()
		Send !f
	Return


<!h::
    if !previous_tab()
        Send !h
    Return

<!j::AltTab

<!k::ShiftAltTab

<!l::
    if !next_tab()
        Send !l
    Return

<!n::
	if !move_pagedown()
		Send !n
	Return

<!m::
	if !move_pageup()
		Send !m
	Return

<!p::
	if !reload_previous_task()
		Send !p
	Return

<!q::
	if !close_tab()
		Send !q
	Return

<!r::
    if !window_minimize()
        Send !t
    Return

<!s::
	if !window_move(0, "right")
		Send !s
	Return

<!t::
    if !new_tab()
        Send !t
    Return

<!u::
	if !filer()
		Send !u
	Return

<!w::
	if !window_maximize(0)
		Send !w
	Return


