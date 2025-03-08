; コピー、ペースト関連の関数群です。

cut() {
    if bypass() {
        Return 0
    } else if is_gvim() {
        Send "x"
    } else if is_terminal() {
        copy()
    } else {
        Send "^x"
    }
    Return 1
}

copy(id:=0) {
    if bypass() {
        Return 0
    }

    if (id) {
        clipsaved := A_Clipboard
    }

    if is_terminal() {
        Send "^{Ins}"
    } else if is_gvim() {
        Send "^{Ins}"
    } else {
        Send "^c"
    }

    if (id = "a") {
        global a
        a := A_Clipboard
    } else if (id = "b") {
        global b
        b := A_Clipboard
    } else if (id = "c") {
        global c
        c := A_Clipboard
    } else if (id = "d") {
        global d
        d := A_Clipboard
    } else if (id = "e") {
        global e
        e := A_Clipboard
    } else if (id = "f") {
        global f
        f := A_Clipboard
    } else if (id = "g") {
        global g
        g := A_Clipboard
    } else if (id = "h") {
        global h
        h := A_Clipboard
    } else if (id = "i") {
        global i
        i := A_Clipboard
    } else if (id = "j") {
        global j
        j := A_Clipboard
    } else if (id = "k") {
        global k
        k := A_Clipboard
    } else if (id = "l") {
        global l
        l := A_Clipboard
    } else if (id = "m") {
        global m
        m := A_Clipboard
    } else if (id = "n") {
        global n
        n := A_Clipboard
    } else if (id = "o") {
        global o
        o := A_Clipboard
    } else if (id = "p") {
        global p
        p := A_Clipboard
    } else if (id = "q") {
        global q
        q := A_Clipboard
    } else if (id = "r") {
        global r
        r := A_Clipboard
    } else if (id = "s") {
        global s
        s := A_Clipboard
    } else if (id = "t") {
        global t
        t := A_Clipboard
    } else if (id = "u") {
        global u
        u := A_Clipboard
    } else if (id = "v") {
        global v
        v := A_Clipboard
    } else if (id = "w") {
        global w
        w := A_Clipboard
    } else if (id = "x") {
        global x
        x := A_Clipboard
    } else if (id = "y") {
        global y
        y := A_Clipboard
    } else if (id = "z") {
        global z
        z := A_Clipboard
    }
    if (id) {
        A_Clipboard := clipsaved
    }

    Return 1
}

paste(id:=0) {
    if bypass() {
        Return 0
    }

    clipsaved := A_Clipboard

    if (id = "a") {
        global a
        clipboard := a
    } else if (id = "b") {
        global b
        clipboard := b
    } else if (id = "c") {
        global c
        clipboard := c
    } else if (id = "d") {
        global d
        clipboard := d
    } else if (id = "e") {
        global e
        clipboard := e
    } else if (id = "f") {
        global f
        clipboard := f
    } else if (id = "g") {
        global g
        clipboard := g
    } else if (id = "h") {
        global h
        clipboard := h
    } else if (id = "i") {
        global i
        clipboard := i
    } else if (id = "j") {
        global j
        clipboard := j
    } else if (id = "k") {
        global k
        clipboard := k
    } else if (id = "l") {
        global l
        clipboard := l
    } else if (id = "m") {
        global m
        clipboard := m
    } else if (id = "n") {
        global n
        clipboard := n
    } else if (id = "o") {
        global o
        clipboard := o
    } else if (id = "p") {
        global p
        clipboard := p
    } else if (id = "q") {
        global q
        clipboard := q
    } else if (id = "r") {
        global r
        clipboard := r
    } else if (id = "s") {
        global s
        clipboard := s
    } else if (id = "t") {
        global t
        clipboard := t
    } else if (id = "u") {
        global u
        clipboard := u
    } else if (id = "v") {
        global v
        clipboard := v
    } else if (id = "w") {
        global w
        clipboard := w
    } else if (id = "x") {
        global x
        clipboard := x
    } else if (id = "y") {
        global y
        clipboard := y
    } else if (id = "z") {
        global z
        clipboard := z
    } else if (id) {
        text := FileRead(A_ScriptDir . "\templates\" . id)
        A_Clipboard := text
    }

    if is_ubuntu_terminal() {
        Send "^+v"
    } else if is_terminal() {
        Send "+{Insert}"
    } else if is_gvim() {
        Send "{Esc}`"*P"
    } else {
        Send "^v"
    }

    A_Clipboard := clipsaved

    Return 1
}