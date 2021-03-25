Reference for initial stuff:
## https://www.youtube.com/watch?v=MU8HUVlJTEY
## https://github.com/wsargent/docker-cheat-sheet

# User the Docker Desktop to control the images on the machine

# build the current directory if there is a Dockerfile and docker-compose.yml inside
docker-compose build

or:
docker build --tag <NAME>

# List of images on the machine
docker images

# To run image
docker-compose up

or:
docker run <NAME>

or, if the images stopped:
docker start <NAME> 

# Check what is running
docker ps -a

# Remove an image
docker remove <NAME>


# Clean <none> images and related resources in docker space
docker system prune

