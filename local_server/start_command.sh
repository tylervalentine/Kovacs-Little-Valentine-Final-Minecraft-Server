#!/bin/bash

    ./ngrok authtoken 1rsAWN06PEISF3VRO8klqvP8fur_2rWpPWvrkGp8xwJx1MMVn


# Stop ngrok if the script is stopped with ctrl-c
    trap ctrl_c INT

    function ctrl_c() {
            killall ngrok
    }

    # stop ngrok if it is already running
    killall ngrok

    # start ngrok
    (./ngrok tcp 25565 -log=stdout &)

    # start the server
    java -jar spigot-1.16.5.jar nogui

    # if the server stops (/stop or crash), stop ngrok
    killall ngrok
    
    #Link to tutorial: https://www.ravbug.com/tutorials/mc-ngrok/
