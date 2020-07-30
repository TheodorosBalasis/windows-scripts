param(
    [String] $ContainerName = 'MySQL',
    [Parameter(Mandatory)][String] $RootPassword
)

docker run --name $ContainerName -e MYSQL_ROOT_PASSWORD=$RootPassword -d mysql:latest