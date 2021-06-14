::############################################################
::#   File Name  : 02_Docker_Containers_For_CLI_Testing.bat  #
::#                                                          #
::#   Created by : Tejas Lakhina                             #
::#                                                          #
::#   Date       : 14/06/2021                                #
::#                                                          #
::#   Subject    : Personalized Docker Assignment            #
::############################################################

::#################################################################################################################
::#1. We can only use docs.docker.com or --help.								  #
::#2. Use different Linux distribution Containers to check curl cli tool version.				  #
::#3. Use 2 different Terminal windows to start bash in both Centos:7 and Ubuntu:14.04. 			  #
::#4. Ensure latest version of curl is installed on both the distributions.					  #
::#	a. Ubuntu : apt-get update && apt-get install curl.							  #
::#	b. Centos : yum update curl										  #
::#5. Check curl version using command curl --version								  #
::#6. Cleanup the containers created and verify that the cleanup has been completed successfully.		  #
::#################################################################################################################


::Creating a centos7 container in detached mode with interactive terminal and custom container_name
docker run -it -d --name <container_name> centos:7

::Creating a ubuntu:14.04 container in detached mode with interactive terminal and custom container_name
docker run -it -d --name <container_name> ubuntu:14.04

::exec -it command lets us open a shell in a container to execute commands in the container.
docker exec -it <container_id> (or <container_name>) bash

::In the Centos Container run the below commands

::Displays the version of curl if it exists within the container
curl --version

::Updates the version of curl cli tool installed in the image
yum update curl

::Exit the container using exit command
exit

::In the Ubuntu Container run the below commands

::Displays the version of curl cli tool if it exists within the container
curl --version

::Installs curl cli tool within the ubuntu container
apt-get install curl

::Downloads and installs the latest updates for all tools.
apt-get update

::Exit the Ubuntu container using exit command
exit

::Displays the status of active containers
docker ps

::Stops the running containers
docker stop <container_Id> (or container_name)

::Displays the status of all the containers (both stopped as well as active ones)
docker ps -a

::Removes the containers.
docker rm <container_id> (or container_name)

