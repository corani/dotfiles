#!/bin/bash
case "blur" in
    blur)
        strength=5
        effect="boxblur=$strength:$strength"
        ;;
    pixelate)
        scale=16
        effect="scale=iw/$scale:ih/$scale,scale=$scale*iw:$scale*ih:flags=neighbor"
        ;;
esac

killall -SIGUSR1 dunst # pause notifications

ffmpeg -loglevel quiet -y -f x11grab -video_size 2560x1440 -i $DISPLAY -i ~/.config/i3/lock2.png -filter_complex "$effect,overlay=(main_w-overlay_w)/2+14:(main_h-overlay_h)/2+14" -vframes 1 /tmp/lock_screen.png
i3lock -i /tmp/lock_screen.png

killall -SIGUSR2 dunst # resume notifications
