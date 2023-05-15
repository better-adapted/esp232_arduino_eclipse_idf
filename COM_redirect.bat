@if "%1%"=="" goto show_usage

SET PORT=%1%
python ./esp32tools/esp_rfc2217_server.py -p 55555 %PORT%
goto:eof

:show_usage
@echo "usage COM_redirect COM3"