@cd /d %~dp0

mkdir "%appdata%\james"
copy "james-config\data.nedb" "%appdata%\james\data.nedb"

@echo.
@echo Copied?
@pause
exit