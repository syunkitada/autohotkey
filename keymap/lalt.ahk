;; ------------------------------
;; ctrl - key mapping
;; ------------------------------
LAlt::
	if !set_browsing()
		Send {Alt}
	Return

+LAlt::set_mouse()

<!sc028:: ;colon
    if !set_colon()
        Send ^{sc028}
    Return

<!a::
    if !select_all()
        Send ^a
    Return

<!b::
    if !bookmark()
        Send ^b
    Return

<!d::
    if !move_half_pagedown()
        Send ^d
    Return

<!h::
    if !previous_tab()
        Send ^h
    Return

<!j::AltTab

<!k::ShiftAltTab

<!l::
    if !next_tab()
        Send ^l
    Return

<!p::
	if !reload_previous_task()
		Send ^p
	Return

<!t::
    if !new_tab()
        Send ^t
    Return

<!u::
    if !move_half_pageup()
		Send ^u
    Return



