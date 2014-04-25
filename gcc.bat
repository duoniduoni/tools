@echo off
rem 假设你的MSDEV.exe文件路径为D:\program files\VC6\Common\MSDev98\Bin（即你的vc6安装在D:\program files目录下）
rem 用法：保存该代码为vcc.bat, 放在你系统的windows目录下，然后打开cmd, 键入vcc D:\test.c (含空格的路径，给路径加上双引号)即可编译D:\test.c 源代码，成功后自动运行可执行文件
 
path=C:\Program Files\Microsoft Visual Studio\VC98\Bin;%path%
 
set include=C:\Program Files\Microsoft Visual Studio\VC98\Include
set lib=C:\Program Files\Microsoft Visual Studio\VC98\Lib
 
(
 cl kernel32.lib  LIBC.lib OLDNAMES.lib user32.lib %1
)&&(
   link kernel32.lib  LIBC.lib OLDNAMES.lib user32.lib %~n1.obj
)&& (
   del *.obj
   %~n1
)

