::############################################################
::#   File Name  : 03_Docker_DNS_Round_Robin_Test.bat	     #
::#                                                          #
::#   Created by : Tejas Lakhina                             #
::#                                                          #
::#   Date       : 14/06/2021                                #
::#                                                          #
::#   Subject    : Personalized Docker Assignment            #
::############################################################

::##########################################################################################################################
::#1. We can only use docs.docker.com or --help.								  	   #
::#2. We can have multiple containers on a created network to respond to the same DNS Address.				   #
::#3. Create a new virtual network (default bridge driver). 			  					   #
::#4. Create two containers from elasticsearch:2 image.									   #
::#5. Research and use -network-alias or --net-alias when creating them to give them an additional DNS name to respond to. #
::#6. Run alpine nslookup <network_alias> with --net to see the two containers list for same DNS name		  	   #
::#7. Run centos curl -s <network_alias>:9200  with --net multiple times until you see both name fields shown.   	   #
::##########################################################################################################################


::Creating a docker bridge network with a custom name
docker network create <network_name>

::Creating 2 elasticsearch:2 containers in detached mode and connecting it with the network created in the previous step, with a custom network_alias same for both containers
::Run the below command twice to create two containers with same network and same network alias
docker run -d --net <network_name> --net-alias <network_alias> elasticsearch:2

::Displays the two DNS entries for the two containers created in the last step and --rm lets it clean up after the command is executed
docker run --rm --net <network_name> alpine nslookup <network_alias>

::Run the below command multiple times so it displays both the elasticsearch server names depending upon the resolved DNS in previous steps.
::It displays details of different containers at different times from the 2 containers created above.
docker run --rm --net <network_name> centos curl -s <network_alias>:9200

::Displays the status of active containers
docker ps

::Stops the running containers
docker stop <container_Id> (or container_name)

::Displays the status of all the containers (both stopped as well as active ones)
docker ps -a

::Removes the containers.
docker rm <container_id> (or container_name)

