Option Explicit

Dim args, title, msg, result
Set args = WScript.Arguments

If args.Count < 2 Then
    WScript.Quit 1
End If

title = args(0)
msg   = args(1)

' vbOKOnly(0) + vbInformation(64) + vbSystemModal(4096)
result = MsgBox(msg, 0 + 64 + 4096, title)

WScript.Quit result
