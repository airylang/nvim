Capslock::Ctrl
#Capslock::Capslock

$Shift::{
  switchime("CN")
}

~Esc::{
  switchime("EN")
}

switchime(ime){
  if (ime = "CN"){
    DllCall("SendMessage", "UInt", WinActive("A"), "UInt", 80, "UInt", 1, "UInt", DllCall("LoadKeyboardLayout", "Str","00000804", "UInt", 1))
  }
  else If (ime = "EN"){
    DllCall("SendMessage", "UInt", WinActive("A"), "UInt", 80, "UInt", 1, "UInt", DllCall("LoadKeyboardLayout", "int",0x4090409, "UInt", 1))
  }
  else if (ime = "AUTO"){
    keyboardlayout := DllCall("GetKeyboardLayout", "Uint", 0)
    if( keyboardlayout = 0x4090409)
      switchime("CN")
    else if(keyboardlayout = 0x8040804)
      switchime("EN")
  }
}
