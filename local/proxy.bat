(
	@set GEVENT_RESOLVER=block
) && (
	@set GEVENT_MONKEY_PATCH=1
) && (
	@start "GoAgent" "%~dp0python27.exe" -c "import sys,os,traceback,ctypes;__file__='proxy.py';exec '''try:execfile('proxy.py')\nexcept:ctypes.windll.user32.ShowWindow(ctypes.windll.kernel32.GetConsoleWindow(), 1);traceback.print_exc(file=sys.stderr);os.system('pause')'''"
)