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
rd /s/q ��ʽ��\res\hall_2
rd /s/q ��ʽ��\res\hall_3
rd /s/q ��ʽ��\res\tszipai
rd /s/q ��ʽ��\res\laopai
mkdir ��ʽ��\res\achannel\16
xcopy res\achannel\16 ��ʽ��\res\achannel\16 /e


:��Դ�ļ�����
start /wait Encryption.exe ��ʽ��\ 79EEADB9D80587EF

:�汾��Ϣ����
mkdir ��ʽ��\src\version
rd /s/q ����16
mkdir ����16
xcopy ��ʽ�� ����16 /e
mkdir ��ʽ��\src\version\16
mkdir ����16\src\version\16
copy ".\src\version\16\*" ".\����16\src\version\16\"
:����ɾ������Ҫ���ļ��У����磺rd /s/q �ļ���
start /wait VerstionBuild.exe ����16\ ����16\src\version\16\version.manifest ����16\src\version\16\project.manifest
copy ".\����16\src\version\16\*" ".\��ʽ��\src\version\16\"


echo --------------------��ɣ�--------------------


pause

