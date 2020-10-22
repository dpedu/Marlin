#!/bin/bash -ex
platformio run -e LPC1768

scp .pio/build/LPC1768/firmware.bin pi@bigprinter:~/

ssh pi@bigprinter -t sudo ./installprinterfirmware.sh

