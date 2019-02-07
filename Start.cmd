@REM replace the two set to your binary folder name
@REM usually required by reconize x86 or x64
@set pythonPath=python-3.7.2.post1-embed-amd64
@set privoxyPath=privoxy-3.0.26


@cd /d %~dp0
@set path=%path%%~dp0%pythonPath%\;
@set path=%path%%~dp0%pythonPath%\Scripts\;

@REM Disabled this function for manually run.
@REM start "" /wait /min "CopyJamesSettings.cmd"

@REM Run James by using explorer shortcut
explorer james-config\James.lnk

@REM Start privoxy
@cd %privoxyPath%
@start "" /min privoxy.exe
@cd ..

@REM Start Http File Server
@cd HFS
@python -m http.server 58889
@cd ..

exit