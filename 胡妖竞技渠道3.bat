@echo off
set /p a = ------------------按回车键开始----------------

:拷贝res和src到新的目录
rd /s/q 正式包
mkdir 正式包
mkdir 正式包\src
xcopy res 正式包\res\ /e
xcopy src 正式包\src\ /e

for /f "delims=" %%i in ('dir /b /a-d /s "正式包\src\*.lua"') do del %%i 
rd /s/q 正式包\src\version

:生成luac
start /wait E:\cocos2d-x-3.6\tools\cocos2d-console\bin\cocos luacompile -s %~dp0\src\ -d %~dp0\正式包\src\ -e True -k huyoo_79EEADB9D80587EF_key -b huyoo_79EEADB9D80587EF_sign --disable-compile

rd /s/q 正式包\res\achannel
rd /s/q 正式包\res\hall_1
rd /s/q 正式包\res\hall_3
rd /s/q 正式包\res\hall_4
rd /s/q 正式包\res\hall_5
rd /s/q 正式包\res\hall_6
rd /s/q 正式包\res\hall_7
rd /s/q 正式包\res\hall_8
rd /s/q 正式包\res\hall_9
rd /s/q 正式包\res\hall_10
rd /s/q 正式包\res\hall_11
rd /s/q 正式包\res\tszipai
rd /s/q 正式包\res\laopai
rd /s/q 正式包\res\expression\sound_quick_xupu
rd /s/q 正式包\res\majiang\sound\xupu
rd /s/q 正式包\res\majiang\sound\zhumadian
mkdir 正式包\res\achannel\3
xcopy res\achannel\3 正式包\res\achannel\3 /e


:资源文件加密
start /wait Encryption.exe 正式包\ 79EEADB9D80587EF

:版本信息生成
mkdir 正式包\src\version
rd /s/q 渠道3
mkdir 渠道3
xcopy 正式包 渠道3 /e
mkdir 正式包\src\version\3
mkdir 渠道3\src\version\3
copy ".\src\version\3\*" ".\渠道3\src\version\3\"
:这里删除不需要的文件夹，例如：rd /s/q 文件名
start /wait VerstionBuild.exe 渠道3\ 渠道3\src\version\3\version.manifest 渠道3\src\version\3\project.manifest
copy ".\渠道3\src\version\3\*" ".\正式包\src\version\3\"


echo --------------------完成！--------------------


pause

