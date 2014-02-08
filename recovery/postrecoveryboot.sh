#!/sbin/sh

## Dim the display and buttons
echo 120 > /sys/class/leds/lcd-backlight/brightness
echo 5 > /sys/class/leds/button-backlight/brightness
echo "0x404010 -1 -1" > /sys/class/leds/R/device/led_blink

# wait for system to settle
sleep 5

# Tell us that we're in postrecoveryboot.sh
echo "I:Postrecoveryboot script started!" >> /cache/recovery/log

# Clear "recovery --bnr_recovery-s" or etc flag.
busybox dd if=/dev/zero of=/dev/block/platform/msm_sdcc.1/by-name/misc conv=notrunc bs=1 count=32 seek=64

# Tell us that it worked!
echo "I:LGE MISC flag reset" >> /cache/recovery/log
