::############################################################
::#   File Name  : 01_Docker_Manage_Multiple_Containers.txt  #
::#                                                          #
::#   Created by : Tejas Lakhina                             #
::#                                                          #
::#   Date       : 14/06/2021                                #
::#                                                          #
::#   Subject    : Personalized Docker Assignment	     #
::############################################################

::#################################################################################################################
::#1. We can only use docs.docker.com or --help.								  #
::#2. Run a nginx, a mysql, and a httpd(apache) server.								  #
::#3. Run all of them in detached mode, and provide custom names to the containers.				  #
::#4. Nginx should listen on 80:80, httpd(apache) should listen on 8080:80, and mysql should listen on 3306:3306. #
::#5. When running mysql we need to pass in environment variable, and set MYSQL_RANDOM_ROOT_PASSWORD=yes.      	  #
::#6. Use docker logs to look into mysql container's logs for RANDOM ROOT PASSWORD.				  #
::#7. Cleanup the containers created and verify that the cleanup has been completed successfully.		  #
::#################################################################################################################


::Creating a nginx container in detached mode and mapped to port 80 with custom container_name
docker run -d -p 80:80 --name <container_name> nginx

::Creating a httpd container in detached mode and mapped port 8080 to port 80, with custom container_name
docker run -d -p 8080:80 --name <container_name> httpd

::Creating a mysql container in detached mode and mapped to port 3306 and declaring environment variable to enable Random Root Password Generation, with custom container_name
docker run -d -p 3306:3306 -e MYSQL_RANDOM_ROOT_PASSWORD=yes --name <container_name> mysql

::Checks the logs of the mysql container for random root password generated during container creation.
docker logs <mysql_container_name>

::Displays the status of active containers
docker ps

::Stops the running containers
docker stop <container_id> (or <container_name>)

::Displays the status of all the containers (both stopped as well as active ones)
docker ps -a

::Removes the containers.
docker rm <container_id> (or container_name)

