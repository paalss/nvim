; limit hotkeys to console windows (Windows subsystem for linux / Ubuntu)
; use Window Spy to find class names & other info about windows: https://amourspirit.github.io/AutoHotkey-Snippit/WindowSpy.html
#HotIf WinActive("ahk_class ConsoleWindowClass")

; keyboard-shortcuts/remappings for windows users:
; ! Alt
; <^>! AltGr
; ^ ctrl
; + Shift

; ---------- "TEXT" ----------

::ftw::Free the whales ; ved å skrive ftw og mellomrom/tab, blir autocorrect til Free the whales.

^+8::SendText "{" ; Ctrl Shift 8
^+9::SendText "}" ; Ctrl Shift 9


; ---------- "REMAP" ----------

; move line

!k::Send "{Esc}:m-2{Enter}"
!j::Send "{Esc}:m{+}{Enter}"

; duplicate line

!+k::Send "{Esc}yyP"
!+j::Send "{Esc}yyp"


; ---------- "TOGGLETERM" ----------

^ø::Send "{F7}" ; (toggleterm.lua uses this button) 


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

!Esc::ExitApp

#HotIf
