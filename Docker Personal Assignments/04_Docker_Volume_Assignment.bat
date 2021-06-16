::########################Docker Volume Assignment###############################
::####################Database upgrade with containers###########################
::#1. Create a postgres container with named volume psql using version 9.6.1. 	#
::#2. Use Docker Hub to learn VOLUME path and versions needed to run it. 		#
::#3. Check Logs, Stop Container												#
::#4. Create a new postgres container with same named volume using 9.6.2 		#
::#5. Check logs to validate.													#
::#6. Inspect container and check logs at every step.							#
::###############################################################################


::This command runs a container in detached mode with custom container name with volume name as psql and the path of the volume within the container is mapped to psql-data.
docker run -d --name <container_name> -v psql:<path_of_volume_in_the_image> postgres:9.6.1

::This command displays the status and the information about the running containers
docker ps

::This command displays the volumes that are present.
docker volume ls

::This command displays the details of the mentioned volume to check where it is mounted within the container.
docker volume inspect <volume_name>

::This command displays the details of the mentioned container with which we can check the volume and its mount point within the container.
docker container inspect <container_name>

::This command stops the container with given container name
docker stop <container_name>

::This command displays the logs of the container with given container name
docker logs <container_name>

::This command runs a container in detached mode with custom container name with volume name as psql and the path of the volume within the container is mapped to psql.
docker run -d --name <container_name> -v psql:<path_of_volume_in_the_image>s postgres:9.6.2

::This command displays the status and the information about the running containers
docker ps

::This command displays the details of the mentioned container with which we can check the volume and its mount point within the container.
docker container inspect <container_name>

