
::This command creates a file with the custom name that will be put in the place of <custom_password_file_name> in the directory /run/secrets/ inside the node, 
::and enters the custom password that will be put in place of <custom_password> in the file.
echo "<custom_password>" | docker secret create <custom_password_file_name> -

::This command will deploy the stack with the name docker_stack_with_secrets.yml with a custom name which will be put in place of <custom_stack_name>,
::and all services created within that stack will have their name as <custom_stack_name>.<service_name>
docker stack deploy -c docker_stack_with_secrets.yml <custom_stack_name>