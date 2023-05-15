REM python -m esptool --port COM3 --chip ESP32 chip_id
python -m esptool --port COM3 --baud 115200 --before default_reset --after hard_reset erase_flash
