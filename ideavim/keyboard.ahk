Capslock::Ctrl
RAlt::Ctrl
#Capslock::Capslock

isChineseIME(WinTitle:="A") {
  try {
      hWnd := WinGetID(WinTitle)
  } Catch(error) {
      ; ^Esc 开始菜单弹窗，会卡死在找不到当前窗口
      return
  }
  DetectHiddenWindows True
  result := SendMessage(
      0x283,  ; Message : WM_IME_CONTROL
      0x005,  ; wParam  : IMC_GETOPENSTATUS
      0,      ; lParam  ： (NoArgs)
      ,       ; Control ： (Window)
      "ahk_id " DllCall( "imm32\ImmGetDefaultIMEWnd", "Uint", hWnd, "Uint")
      )
  DetectHiddenWindows False
  ; 1 非英文状态
  ; 0 英文状态
  return result
}

SetEnglishIME() {
  ret := isChineseIME()
  if(ret) {
      SendInput ("{ShiftDown}{ShiftUp}")  ; 切换到英文输入状态
  }
}

~Esc::
{
 SetEnglishIME()
 return
}
