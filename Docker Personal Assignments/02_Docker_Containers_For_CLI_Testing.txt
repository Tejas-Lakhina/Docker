############################################################
#   File Name  : 02_Docker_Containers_For_CLI_Testing.txt  #
#                                                          #
#   Created by : Tejas Lakhina                             #
#                                                          #
#   Date       : 14/06/2021                                #
#                                                          #
#   Subject    : Personalized Docker Assignment		   #
############################################################

#################################################################################################################
#1. We can only use docs.docker.com or --help.									#
#2. Use different Linux distribution Containers to check curl cli tool version.					#
#3. Use 2 different Terminal windows to start bash in both Centos:7 and Ubuntu:14.04. 				#
#4. Ensure latest version of curl is installed on both the distributions.					#
#	a. Ubuntu : apt-get update && apt-get install curl.							#
#	b. Centos : yum update curl										#
#5. Check curl version using command curl --version								#
#6. Cleanup the containers created and verify that the cleanup has been completed successfully.			#
#################################################################################################################


docker run -it -d --name <container_mame> centos:7					//Creating a centos7 container in detached mode with interactive terminal and custom container_name

docker run -it -d --name <container_name> ubuntu:14.04					//Creating a ubuntu:14.04 container in detached mode with interactive terminal and custom container_name

docker exec -it <container_id> (or <container_name>) bash				//exec -it command lets us open a shell in a container to execute commands in the container.

//In the Centos Container run the below commands

curl --version										//Displays the version of curl if it exists within the container

yum update curl										//Updates the version of curl cli tool installed in the image

//Exit the container using exit command

//In the Ubuntu Container run the below commands

curl --version										//Displays the version of curl cli tool if it exists within the container

apt-get install curl									//Installs curl cli tool within the ubuntu container

apt-get update										//Downloads and installs the latest updates for all tools.

//Exit the Ubuntu container using exit command

docker ps										//Displays the status of active containers

docker stop <container_Id> (or Container Name)						//Stops the running containers

docker ps -a										//Displays the status of all the containers (both stopped as well as active ones)

docker rm <container_id> (or Container_Name)						//Removes the containers.

