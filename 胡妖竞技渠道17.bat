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
mkdir ��ʽ��\res\achannel\17
xcopy res\achannel\17 ��ʽ��\res\achannel\17 /e


:��Դ�ļ�����
start /wait Encryption.exe ��ʽ��\ 79EEADB9D80587EF

:�汾��Ϣ����
mkdir ��ʽ��\src\version
rd /s/q ����17
mkdir ����17
xcopy ��ʽ�� ����17 /e
mkdir ��ʽ��\src\version\17
mkdir ����17\src\version\17
copy ".\src\version\17\*" ".\����17\src\version\17\"
:����ɾ������Ҫ���ļ��У����磺rd /s/q �ļ���
start /wait VerstionBuild.exe ����17\ ����17\src\version\17\version.manifest ����17\src\version\17\project.manifest
copy ".\����17\src\version\17\*" ".\��ʽ��\src\version\17\"


echo --------------------��ɣ�--------------------


pause

