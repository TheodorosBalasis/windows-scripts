param(
    [String] $ContainerName = 'MariaDB',
    [Parameter(Mandatory)][String] $RootPassword
)

docker run --name $ContainerName -e MYSQL_ROOT_PASSWORD=$RootPassword -d mariadb:latest