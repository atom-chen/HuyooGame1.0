@echo off
set /p a = ------------------���س�����ʼ----------------

:����res��src���µ�Ŀ¼
rd /s/q ��ʽ��
mkdir ��ʽ��
mkdir ��ʽ��\src
xcopy res ��ʽ��\res\ /e
xcopy src ��ʽ��\src\ /e

for /f "delims=" %%i in ('dir /b /a-d /s "��ʽ��\src\*.lua"') do del %%i 
rd /s/q ��ʽ��\src\version

:����luac
start /wait E:\cocos2d-x-3.6\tools\cocos2d-console\bin\cocos luacompile -s %~dp0\src\ -d %~dp0\��ʽ��\src\ -e True -k huyoo_79EEADB9D80587EF_key -b huyoo_79EEADB9D80587EF_sign --disable-compile

rd /s/q ��ʽ��\res\achannel
rd /s/q ��ʽ��\res\hall_1
rd /s/q ��ʽ��\res\hall_3
rd /s/q ��ʽ��\res\hall_4
rd /s/q ��ʽ��\res\hall_5
rd /s/q ��ʽ��\res\hall_6
rd /s/q ��ʽ��\res\hall_7
rd /s/q ��ʽ��\res\hall_8
rd /s/q ��ʽ��\res\hall_9
rd /s/q ��ʽ��\res\hall_10
rd /s/q ��ʽ��\res\hall_11
rd /s/q ��ʽ��\res\tszipai
rd /s/q ��ʽ��\res\laopai
rd /s/q ��ʽ��\res\expression\sound_quick_xupu
rd /s/q ��ʽ��\res\majiang\sound\xupu
rd /s/q ��ʽ��\res\majiang\sound\zhumadian
mkdir ��ʽ��\res\achannel\2
xcopy res\achannel\2 ��ʽ��\res\achannel\2 /e


:��Դ�ļ�����
start /wait Encryption.exe ��ʽ��\ 79EEADB9D80587EF

:�汾��Ϣ����
mkdir ��ʽ��\src\version
rd /s/q ����2
mkdir ����2
xcopy ��ʽ�� ����2 /e
mkdir ��ʽ��\src\version\2
mkdir ����2\src\version\2
copy ".\src\version\2\*" ".\����2\src\version\2\"
:����ɾ������Ҫ���ļ��У����磺rd /s/q �ļ���
start /wait VerstionBuild.exe ����2\ ����2\src\version\2\version.manifest ����2\src\version\2\project.manifest
copy ".\����2\src\version\2\*" ".\��ʽ��\src\version\2\"


echo --------------------��ɣ�--------------------


pause

