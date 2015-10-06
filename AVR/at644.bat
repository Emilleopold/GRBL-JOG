echo ISP Adafruit 644 Bootloader & GRBL flash
echo Usage: at644 XX with XX = COM port # of DIAMEX ISP programmer
avrdude.exe -C "avrdude.conf" -pm644p -cstk500v2 -B2 -P COM%1 -V -U lfuse:w:0xf7:m -U hfuse:w:0xd2:m -U efuse:w:0xff:m -U flash:w:"bootloader.hex":i -U lock:w:0xef:m
avrdude.exe -C "avrdude.conf" -pm644p -cstk500v2 -B2 -P COM%1 -V -U flash:w:"grbl.hex":i -U lock:w:0xef:m
