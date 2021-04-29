# Kovacs-Little-Valentine-Final-Minecraft-Server by Nikolas Kovacs, Tyler Valentine, and Cory Little

## Host a Minecraft server locally, in Vagrant, and on AWS

## Requirements

1. Ngrok Account for hosting locally and in Vagrant

2. Minecraft Client to join the game

3. AWS account for hosting on AWS

## Usage

To start the Minecraft server locally, enter the local folder and type:

```
bash start_server.sh
```

To start the Minecraft server in Vagrant, enter the vm folder and type:

```
vagrant up
```

To start the Minecraft server using AWS:
  # Login into your AWS Account
  # Create a instance using Ubuntu
  # Add a new firewall rule to run port 25565 in the Networking table
  # Connect using SSH
  # Type these commands:
    <!-- Update the server and install the Java Runtime. -->
      1. sudo apt -y update && sudo apt -y install default-jre screen
      <!-- Create a directory to hold the Minecraft files. -->
      2. sudo mkdir /usr/games/minecraft
      cd /usr/games/minecraft
      <!-- Go to Minercraft website and download the server. Also, download the server jar file -->
      3. sudo wget -O mcserver.jar https://launcher.mojang.com/v1/objects/bb2b6b1aefcd70dfd1892149ac3a215f6c636b07/server.jar
      <!-- Change ownership of eula.txt and accept the EULA to true  -->
      4. sudo chown ubuntu eula.txt
        echo "eula=true" > eula.txt
      <!-- Re-run the Minecraft server command-->
      5. sudo java -Xmx1G -Xms1G -jar mcserver.jar nogui

  # Now, you have a Minecraft server running
  # Launch Minecraft. Enter your unique IP address into the Multiplayer/server and press Done.
