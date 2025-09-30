Option Explicit

Dim args, title, message, result
Set args = WScript.Arguments

If args.Count < 2 Then
    WScript.Echo "用法: cscript msgbox.vbs ""标题"" ""内容"""
    WScript.Quit 1
End If

title = args(0)
message = args(1)

result = MsgBox(message, vbYesNo + vbExclamation, title)

' 直接把 MsgBox 的返回值当作退出码
WScript.Quit result
