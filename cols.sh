for fgbg in 38 48 ; do #Foreground/Background
    for color in {0..256} ; do #Colors
        #Display the color
        echo -en "\x1B[${fgbg};5;${color}m ${color}\t\x1B[0m"
        #Display 10 colors per lines
        if [ $((($color + 1) % 10)) == 0 ] ; then
            echo #New line
        fi
    done
    echo #New line
done
