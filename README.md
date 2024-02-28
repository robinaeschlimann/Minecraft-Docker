# Docker Minecraft Server
This is a simple Minecraft server. You can download the image on kaegi6/docker-minecraft-server:latest.

## Initial installation
Here is a small instruction to install the image and run it in a container.

### Download Docker Desktop
Download the latest version of Docker Desktop on https://www.docker.com/products/docker-desktop/

### Pull the image
After the installation of Docker you can pull the image as follows:

1. Run the terminal (Search for "Terminal" on Windows)
2. Execute this script: 
```shell
docker pull kaegi6/docker-minecraft-server:latest
```
### Startup the container
1. Startup Docker Desktop
2. Go to the tab "Images"
3. Click "Run" on the image called "kaegi6/docker-minecraft-server:latest"
4. Then click on "Optional settings"
5. Optional: Enter a name for the container
6. Enter the port 25565
7. Then configure the volume
  1. Enter the location of the Minecraft server files or where they should be stored in the input called "Host path"
  2. In the input "Container path" enter /minecraft
8. Click on "Run"
9. The container will start up

### Setup in Minecraft
1. Startup Minecraft
2. Click on Multiplayer
3. Click on Add Server
4. Enter a name for the server
5. In the input "Server Address" enter localhost:25565
6. Click on done
7. Now you can connect with the server and enjoy the game

## Run the server
Once you have done the installation, you can startup the server in Docker Desktop in the tab "Containers". Just click on the run button to start the container with the server and you can play the game.
