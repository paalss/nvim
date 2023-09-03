; limit hotkeys to console windows (Windows subsystem for linux / Ubuntu)
; use Window Spy to find class names & other info about windows: https://amourspirit.github.io/AutoHotkey-Snippit/WindowSpy.html

!Esc::ExitApp

; ---------- "TEXT" ----------

::ftw::Free the whales ; ved å skrive ftw og mellomrom/tab, blir autocorrect til Free the whales.

::_pre::_pre-merge-request.sh
::prem::_pre-merge-request.sh has been run

^+8::SendText "{" ; Ctrl Shift 8
^+9::SendText "}" ; Ctrl Shift 9

#HotIf WinActive("ahk_class ConsoleWindowClass")

; keyboard-shortcuts/remappings for windows users:
; ! Alt
; <^>! AltGr
; ^ ctrl
; + Shift

; ---------- "REMAP" ----------

; move line

; (see remap.lua)

; duplicate line

!+k::Send "{Esc}yyP"
!+j::Send "{Esc}yyp"


; ---------- "FTerm" ----------

^ø::Send "{Alt down}i{Alt up}" ; (fterm.lua uses this button)


; ---------- "BARBAR" ----------

; navigate buffers

^PgUp::Send "{Esc}:BufferPrevious{Enter}"
^F11::Send "{Esc}:BufferPrevious{Enter}"
^PgDn::Send "{Esc}:BufferNext{Enter}"
^F12::Send "{Esc}:BufferNext{Enter}"
^Tab::Send "{Esc}:b{#}{Enter}" ; to previous buffer

; move buffers

+^PgUp::Send "{Esc}:BufferMoveNext{Enter}"
+^F11::Send "{Esc}:BufferMoveNext{Enter}"
+^PgDn::Send "{Esc}:BufferMovePrevious{Enter}"
+^F12::Send "{Esc}:BufferMovePrevious{Enter}"

; other

^+t:: Send "{Esc}:BufferRestore{Enter}"
^w:: Send "{Esc}:BufferClose{Enter}"

#HotIf

#HotIf WinActive("ahk_class SunAwtFrame")


#HotIf


#HotIf WinActive("ahk_class MozillaWindowClass")

; ^F11::Send ^{PgUp}
; ^F12::Send ^{PgDn}

#HotIf
