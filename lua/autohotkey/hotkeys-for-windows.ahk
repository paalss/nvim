; limit hotkeys to console windows (Windows subsystem for linux / Ubuntu)
; use Window Spy to find class names & other info about windows: https://amourspirit.github.io/AutoHotkey-Snippit/WindowSpy.html

; keyboard-shortcuts/remappings for windows users:
; ! Alt
; <^>! AltGr
; ^ ctrl
; + Shift

!Esc::ExitApp

; -------------- OPEN WEBSITE -------------

+F1::Run "https://localhost/"
+F2::Run "http://localhost:8000/"
+F3::Run "http://localhost:8000/graphql/"
+F4::Run "http://localhost:6006/"

; ---------- "TEXT" ----------

::ftw::Free the whales ; ved å skrive ftw og mellomrom/tab, blir autocorrect til Free the whales.

::prem::`_pre-merge-request.sh`
::precheck:: :white_check_mark: `_pre-merge-request.sh` has been run

^+8::SendText "{" ; Ctrl Shift 8
^+9::SendText "}" ; Ctrl Shift 9

!2::Send "@"
!4::Send "$"

<^>!-::Send "–" ; print en-dash


; ---------- "REMAP" ----------

; move line

; (see remap.lua)

; duplicate line

!+k::Send "{Esc}yyP"
!+j::Send "{Esc}yyp"


; ---------- "Terminal tmux behavior" ----------

^ø::Send "{Ctrl down}m{Ctrl up}" ; (tmux.lua uses this button)


; ----------- "Tabline / buffer management" --------------

^t::Send "{Ctrl down}6"

; ------- "BARBAR" --------

; navigate buffers

; ^PgUp::Send "{Esc}:BufferPrevious{Enter}"
; ^F11::Send "{Esc}:BufferPrevious{Enter}"
; ^PgDn::Send "{Esc}:BufferNext{Enter}"
; ^F12::Send "{Esc}:BufferNext{Enter}"
; ^Tab::Send "{Esc}:b{#}{Enter}" ; to previous buffer

; move buffers

; +^PgUp::Send "{Esc}:BufferMoveNext{Enter}"
; +^F11::Send "{Esc}:BufferMoveNext{Enter}"
; +^PgDn::Send "{Esc}:BufferMovePrevious{Enter}"
; +^F12::Send "{Esc}:BufferMovePrevious{Enter}"


; ------ "HARPOON" ---------

; not working:

; ^PgUp::Send "{Esc}{Alt down},{Alt up}"
; ^F11::Send "{Esc}{Alt down},{Alt up}"
; ^PgDn::Send "{Esc}{Alt down}.{Alt up}"
; ^F12::Send "{Esc}{Alt down}.{Alt up}"

; other

; ^+t:: Send "{Esc}:BufferRestore{Enter}"
; ^w:: Send "{Esc}:BufferClose{Enter}"

#HotIf

#HotIf WinActive("ahk_class SunAwtFrame")


#HotIf


#HotIf WinActive("ahk_class MozillaWindowClass")

; ^F11::Send ^{PgUp}
; ^F12::Send ^{PgDn}

#HotIf
