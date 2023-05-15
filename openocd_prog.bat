@IF NOT DEFINED ESP32_OPENOCD_PATH goto system_path_not_defined

%ESP32_OPENOCD_PATH%\bin\openocd.exe -s %ESP32_OPENOCD_PATH%\share\openocd\scripts -f esp32tools/openocd/esp-prog_esp32.cfg -c "program_esp build/sg4-esp-firmware.bin 0x10000"
goto:eof

:system_path_not_defined
@echo "in system enviroment variables define the ESP32_OPENOCD_PATH - something like C:\Users\XXXXX\.espressif\tools\openocd-esp32\v0.11.0-esp32-20221026\openocd-esp32"