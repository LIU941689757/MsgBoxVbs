@echo off
chcp 65001 >nul
cscript C:\Users\qw941\OneDrive\桌面\C#\新建文本文档.vbs "测试标题" "要继续吗？"
set result=%errorlevel%

echo VBS 返回值=%result%

if %result%==6 (
    echo 你选择了 YES
) else if %result%==7 (
    echo 你选择了 NO
) else (
    echo 未知返回值
)

pause
