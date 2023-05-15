@if "%1%"=="" goto show_usage

SET PORT=%1%
python -m esptool --port %PORT% --baud 115200 --before default_reset --after hard_reset erase_flash
goto:eof

:show_usage
@echo "usage COM_id COM3"