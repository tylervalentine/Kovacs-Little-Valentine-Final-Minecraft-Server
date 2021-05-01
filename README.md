# Kovacs-Little-Valentine-Final-Minecraft-Server by Nikolas Kovacs, Tyler Valentine, and Cory Little

## Host a Minecraft server locally, in Vagrant, and on AWS

## Requirements

1. Vagrant for hosting in a VM

2. Ngrok Account for hosting locally and in Vagrant

3. Minecraft Client to join the game

4. AWS account for hosting on AWS

## Usage

To start the Minecraft server locally, enter the local folder and type:

```
bash start_command.sh
```

To start the Minecraft server in Vagrant, enter the vm folder and type:

```
vagrant up
```

To start the Minecraft server using AWS Lightsail:
```
  1. Login into your AWS Account.
  2. Create a Lightsail instance using Ubuntu.
  3. Add a new firewall rule to run port 25565 in the Networking tab on the AWS website.
  4. Setup ssh config to connect to Lightsail instance using the default key
```
To setup the config file for ssh:
```
nano ~/.ssh/config
```

Add the following to the config file
```
Host <name_of_aws_instance>
  User <user>
  HostName <IP Address>
  IdentityFile <Path to default lightsail pem file>
```

SSH into the Lightsail instance and run the following commands
```
ssh <name_of_aws_instance> (NOTE: this is the same name from the previous step)

<!-- Update the server and install the Java Runtime. -->
sudo apt -y update && sudo apt -y install default-jre

<!-- Create a directory to hold the Minecraft files. -->
mkdir ~/minecraft
```

Exit ssh and copy the contents of the aws folder to the minecraft folder
```
scp path/to/aws/* <name_of_aws_instance>:~/minecraft
```

SSH again and type these commands:
```
    <!-- Update the server and install the Java Runtime. -->
    1. sudo apt -y update && sudo apt -y install default-jre screen
    <!-- Create a directory to hold the Minecraft files. -->
    2. mkdir ~/minecraft
    3. cd ~/minecraft
    <!-- Accept the EULA agreement  -->
    4. echo "eula=true" > eula.txt
```

  To Run the Minecraft server, ssh back into the Lightsail instance and run the following command:
```
  sudo mv ~/minecraft/minecraft.service /etc/systemd/system
  sudo systemctl enable minecraft.service
  sudo systemctl start minecraft.service
```
