## RGB scripts for the TP-Link OnHub device running OpenWrt.

Just some simple scripts for some basic RGB effects using the device's built-in LED ring. I don't know if these will work on the Asus model since I don't own one.

Consists of a helper script and one example program script.


There are six LEDs (0-5) around the ring.

The helper script takes a led number and hex code and writes the proper value to each led.

ex. ```./led_write.sh 0 ff00ff```

In the example program script, you will need to edit the path for the helper script if it's stored somewhere other than ```/root/led```:

```rgb-shift.sh``` colors shift from one to the next

![image](https://github.com/crazeeghost/onhub_openwrt_rgb/blob/main/ezgif-4-cc8eec086d.gif?raw=true)
