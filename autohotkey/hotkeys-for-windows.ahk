; keyboard-shortcuts/remappings for windows users:
; ! Alt
; <^>! AltGr
; ^ ctrl
; + Shift

; ---------- "TEXT" ----------

::ftw::Free the whales ; ved å skrive ftw og mellomrom/tab, blir autocorrect til Free the whales.
 
^+8::SendText "{" ; Ctrl Shift 8

^+9::SendText "}" ; Ctrl Shift 9


; ---------- "TOGGLETERM" ----------

^ø::Send "{F7}" ; (toggleterm.lua uses this button) 


; ---------- "TODO" ---------- 

; kopiere linjer (kjøre yyp og yyP), må muligens fjerne 'move line up/down' fra remap.lua

; matching pair addon


; ---------- "BARBAR" ----------

; navigate buffers
^PgUp::Send "{Esc}:BufferPrevious{Enter}"
^F11::Send "{Esc}:BufferPrevious{Enter}"
^PgDn::Send "{Esc}:BufferNext{Enter}"
^F12::Send "{Esc}:BufferNext{Enter}"

; other
^+t:: Send "{Esc}:BufferRestore{Enter}"
^w:: Send "{Esc}:BufferClose{Enter}"

!Esc::ExitApp
