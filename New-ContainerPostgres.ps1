param(
    [String] $ContainerName = 'PostgreSQL',
    [Parameter(Mandatory)][String] $RootPassword
)

docker run --name $ContainerName -e POSTGRES_PASSWORD=$RootPassword -d postgres:latest