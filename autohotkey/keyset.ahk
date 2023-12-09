; 重新映射键盘按键 https://ahkcn.github.io/docs/Hotkeys.htm

; Capslock 映射为 ctrl
Capslock::Ctrl

; 右侧 alt 映射为ctrl
RAlt::Ctrl

; 切换输入法函数
SwitchIME(dwLayout){
  HKL:=DllCall("LoadKeyboardLayout", Str, dwLayout, UInt, 1)
  ControlGetFocus,ctl,A
  SendMessage,0x50,0,HKL,%ctl%,A
}

; shift + Capslock 映射为 Capslock
; +Capslock::Capslock

; alt + Capslock 映射为 Capslock
!Capslock::Capslock

; 按下shift键强制切换输入法为中文
$Shift::
  SwitchIME(00000804)
return

; 按下该按键强制切换输入法为英文
~Esc::
  SwitchIME(0x04090409)
return
