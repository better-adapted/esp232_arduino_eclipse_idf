@IF NOT DEFINED ESP32_OPENOCD_PATH goto system_path_not_defined

%ESP32_OPENOCD_PATH%\bin\openocd.exe -s %ESP32_OPENOCD_PATH%\share\openocd\scripts -f interface/ftdi/esp32_devkitj_v1.cfg -f target/esp32.cfg
goto:eof

:system_path_not_defined
@echo "in system enviroment variables define the ESP32_OPENOCD_PATH - something like C:\Users\XXXXX\.espressif\tools\openocd-esp32\v0.11.0-esp32-20221026\openocd-esp32"