#This command builds a container with image drupal and tag 8.8.2
FROM drupal:8.8.2

#This command will run the commands within a shell in drupal container and the below commands will install git and delete the lists present in the container by default.
RUN apt-get update\
	&& apt-get install -y git \
	&& rm -rf /var/lib/apt/lists/*

#This command will change the current working directory to /var/www/html/themes
WORKDIR /var/www/html/themes

#This command will run the commands within it within a shell in the drupal container and will clone the bootstrap git project within the current working directory and change its owner and permissions.
RUN git clone --branch 8.x-3.x --single-branch --depth 1 https://git.drupalcode.org/project/bootstrap.git \
	&& chown -R www-data:www-data bootstrap

#This command will change the current working directory back to /var/www/html/
WORKDIR /var/www/html