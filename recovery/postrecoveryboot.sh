#!/sbin/sh

## Dim the display and buttons
echo 120 > /sys/class/leds/lcd-backlight/brightness
echo 5 > /sys/class/leds/button-backlight/brightness
echo "0x404010 -1 -1" > /sys/class/leds/R/device/led_blink
