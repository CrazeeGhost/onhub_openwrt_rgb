led_write="/root/led/led-write.sh"
interval="1"

# Define colors as positional parameters
colors="0000ff ff0000 ff9900 00ff00 ffff00 ff0099 ffa500 99ff00 009999"
#        Blue   Red   Orange Green  Yellow  Pink   Amber  Lime   Teal

while [ 1 ]; do
    # Set colors as positional parameters
    set -- $colors

    # Loop through each color in sequence
    for color in "$@"; do
        # Apply the current color to all LEDs
        for i in 0 1 2 3 4 5; do
            $led_write $i "$color"
        done

        # Wait for the specified interval
        sleep $interval
    done
done
