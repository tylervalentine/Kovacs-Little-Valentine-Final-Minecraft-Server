# Stop ngrok if the script is stopped with ctrl-c
    trap ctrl_c INT

    function ctrl_c() {
            killall ngrok
    }

    # stop ngrok if it is already running
    killall ngrok

    # start ngrok
    (../../../../../Downloads/ngrok tcp 25565 -log=stdout &)

    # start the server
    java -jar spigot-1.16.5.jar nogui

    # if the server stops (/stop or crash), stop ngrok
    killall ngrok
