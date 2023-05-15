@if "%1%"=="" goto show_usage

SET PORT=%1%
python -m esptool --chip esp32 -p %PORT% -b 460800 --before=default_reset --after=hard_reset write_flash --flash_mode dio --flash_freq 40m --flash_size 8MB 0x1000 sg4-esp-firmware/build/bootloader/bootloader.bin 0x10000 sg4-esp-firmware/build/sg4-esp-firmware.bin 0x8000 sg4-esp-firmware/build/partition_table/partition-table.bin
goto:eof

:show_usage
@echo "usage COM_prog COM3"