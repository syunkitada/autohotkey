; コピー、ペースト関連の関数群です。

cut() {
	if bypass() {
		Return 0
	} else if is_terminal() {
		copy()
	} else {
		Send ^x
	}
	Return 1
}

copy(id=0) {
	if bypass() {
		Return 0
	}

    if (id)
        clipsaved = %clipboard%

    if is_terminal() {
        Send ^{Ins}
    } else {
        Send ^c
    }

	if (id = "a") {
		global a
		a = %clipboard%
	} else if (id = "b") {
		global b
		b = %clipboard%
	} else if (id = "c") {
		global c
		c = %clipboard%
	} else if (id = "d") {
		global d
		d = %clipboard%
	} else if (id = "e") {
		global e
		e = %clipboard%
	} else if (id = "f") {
		global f
		f = %clipboard%
	} else if (id = "g") {
		global g
		g = %clipboard%
	} else if (id = "h") {
		global h
		h = %clipboard%
	} else if (id = "i") {
		global i
		i = %clipboard%
	} else if (id = "j") {
		global j
		j = %clipboard%
	} else if (id = "k") {
		global k
		k = %clipboard%
	} else if (id = "l") {
		global l
		l = %clipboard%
	} else if (id = "m") {
		global m
		m = %clipboard%
	} else if (id = "n") {
		global n
		n = %clipboard%
	} else if (id = "o") {
		global o
		o = %clipboard%
	} else if (id = "p") {
		global p
		p = %clipboard%
	} else if (id = "q") {
		global q
		q = %clipboard%
	} else if (id = "r") {
		global r
		r = %clipboard%
	} else if (id = "s") {
		global s
		s = %clipboard%
	} else if (id = "t") {
		global t
		t = %clipboard%
	} else if (id = "u") {
		global u
		u = %clipboard%
	} else if (id = "v") {
		global v
		v = %clipboard%
	} else if (id = "w") {
		global w
		w = %clipboard%
	} else if (id = "x") {
		global x
		x = %clipboard%
	} else if (id = "y") {
		global y
		y = %clipboard%
	} else if (id = "z") {
		global z
		z = %clipboard%
	} 
    if (id)
        clipboard = %clipsaved%

    Return 1
}

paste(id=0, filename=0, is_create=0, is_append=0) {
	if bypass() {
		Return 0
	}

	clipsaved = %clipboard%
	
	if (id = "a") {
		global a
		clipboard = %a%
	} else if (id = "b") {
		global b
		clipboard = %b%
	} else if (id = "c") {
		global c
		clipboard = %c%
	} else if (id = "d") {
		global d
		clipboard = %d%
	} else if (id = "e") {
		global e
		clipboard = %e%
	} else if (id = "f") {
		global f
		clipboard = %f%
	} else if (id = "g") {
		global g
		clipboard = %g%
	} else if (id = "h") {
		global h
		clipboard = %h%
	} else if (id = "i") {
		global i
		clipboard = %i%
	} else if (id = "j") {
		global j
		clipboard = %j%
	} else if (id = "k") {
		global k
		clipboard = %k%
	} else if (id = "l") {
		global l
		clipboard = %l%
	} else if (id = "m") {
		global m
		clipboard = %m%
	} else if (id = "n") {
		global n
		clipboard = %n%
	} else if (id = "o") {
		global o
		clipboard = %o%
	} else if (id = "p") {
		global p
		clipboard = %p%
	} else if (id = "q") {
		global q
		clipboard = %q%
	} else if (id = "r") {
		global r
		clipboard = %r%
	} else if (id = "s") {
		global s
		clipboard = %s%
	} else if (id = "t") {
		global t
		clipboard = %t%
	} else if (id = "u") {
		global u
		clipboard = %u%
	} else if (id = "v") {
		global v
		clipboard = %v%
	} else if (id = "w") {
		global w
		clipboard = %w%
	} else if (id = "x") {
		global x
		clipboard = %x%
	} else if (id = "y") {
		global y
		clipboard = %y%
	} else if (id = "z") {
		global z
		clipboard = %z%
	} else if (id) {
		FileRead,template,%A_ScriptDir%\templates\%id%
		clipboard = %template%

		if (is_terminal() and is_create) {
			if is_append {
				SendPlay vim %filename%
				SendPlay {Enter}
				SendPlay +g
				SendPlay o
			} else {
				SendPlay /dev/null > %filename%
				SendPlay {Enter}
				SendPlay vim %filename%
				SendPlay {Enter}
				SendPlay i
			}
			SendPlay +{Insert}
			Sleep 500 ; 貼り付け処理の間、待機させる
			SendPlay {Esc}
			SendPlay :wq
			SendPlay {Enter}
		}
	}
	if (is_terminal() and !is_create) {
		Send +{Insert}
	} else if is_vim() {
		Send +{Insert}
	} else if !is_terminal() {
		Send ^v
    }

	clipboard = %clipsaved%

	Return 1
}

