; #NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


; !	Alt
; <^>!	AltGr
; ^	ctrl
; +	Shift

; Tutorial

; ^j:: 			; ctrl J gir…
; Send, My First Script	; denne teksten
; return

::ftw::Free the whales	; ved å skrive ftw og mellomrom, blir autocorrect til Free the whales.


; =================================================================

; Programmering –––––––––––––––––––––––––––––––––––––––––––––––––––––––––––

; =================================================================


::gitac::git add . && git commit -m ""{left 1}

::dcu::docker-compose up -d  ; dcu Tab

::dcd::docker-compose down   ; dcd Tab

;::cons::echo "<script>console.log('')</script>"; ; cons Tab

;::consvar::echo "<script>console.log('Debug Objects: " . $_POST['course'] . "' )</script>";

::prep::echo "<pre>"; print_r($result); echo "</pre>";

+4::Send $		; shift 4

; =================================================================

; Generelle tegn –––––––––––––––––––––––––––––––––––––––––––––––––––––––––––

; =================================================================

<^>!-::Send –		; AltGr -

<^>!.::Send …		; AltGr .

<^>!7::SendRaw |	; AltGr 7

<^>!+8::SendRaw {	; AltGr Shift 8

<^>!+9::SendRaw }	; AltGr Shift 9

<^>!q::Send ●		; AltGr Q

<^>!+.::Send •		; AltGr shift .

<^>!+7::Send \		; AltGr Shift 7

<^>!Up::Send {PgUp}

<^>!Down::Send {PgDn}

<^>!Left::Send {Home}	; AltGr Left

<^>!Right::Send {End}	; AltGr Right

<^>!+Left::Send +{Home}

<^>!+Right::Send +{End}

<^>!backspace::Send {Shift Down}{Home}{Shift Up}{Backspace 1}

::bob::bob@bob.bob 	; bob Tab



; =================================================================

; Apostrofer / anførselstegn –––––––––––––––––––––––––––––––––––––––––––––––

; =================================================================

<^>!n::Send ‘		; AltGr N

<^>!m::Send ’		; AltGr M

<^>!+n::Send “		; AltGr shift N

<^>!+m::Send ”		; AltGr shift M

<^>!v::Send ‹		; AltGr V

<^>!b::Send ›		; AltGr B

<^>!+v::Send «		; AltGr shift V

<^>!+b::Send »		; AltGr shift B

; ^+n::Send “		; ctrl shift N

; ^+m::Send ”		; ctrl shift M

^+v::Send «		; ctrl shift V

^+b::Send »		; ctrl shift B


; =================================================================

; engelsk tastatur retting til norsk –––––––––––––––––––––––––––––––––––––––

; =================================================================

<^>!2::Send @		; AltGr 2


; =================================================================

; handlinger?–––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––

; =================================================================

; (ideer til handlinger)
; tilsvarende cmd Q på mac
; ctrl Q for å avslutte program?

; AltGr/Ctrl venstre/høyre piltast går hele veien til venstre/høyre


!Esc::ExitApp