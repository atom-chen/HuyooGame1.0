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
rd /s/q ��ʽ��\res\hall_2
rd /s/q ��ʽ��\res\hall_3
rd /s/q ��ʽ��\res\hall_6
rd /s/q ��ʽ��\res\tszipai
rd /s/q ��ʽ��\res\laopai
mkdir ��ʽ��\res\achannel\18
xcopy res\achannel\18 ��ʽ��\res\achannel\18 /e


:��Դ�ļ�����
start /wait Encryption.exe ��ʽ��\ 79EEADB9D80587EF

:�汾��Ϣ����
mkdir ��ʽ��\src\version
rd /s/q ����18
mkdir ����18
xcopy ��ʽ�� ����18 /e
mkdir ��ʽ��\src\version\18
mkdir ����18\src\version\18
copy ".\src\version\18\*" ".\����18\src\version\18\"
:����ɾ������Ҫ���ļ��У����磺rd /s/q �ļ���
start /wait VerstionBuild.exe ����18\ ����18\src\version\18\version.manifest ����18\src\version\18\project.manifest
copy ".\����18\src\version\18\*" ".\��ʽ��\src\version\18\"


echo --------------------��ɣ�--------------------


pause

