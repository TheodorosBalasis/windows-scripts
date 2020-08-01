param(
    [String] $ContainerName = 'MongoDB',
    [Parameter(Mandatory)][String] $RootUsername,
    [Parameter(Mandatory)][String] $RootPassword
)

docker run --name $ContainerName -e MONGO_INITDB_ROOT_USERNAME=$RootUsername `
-e MONGO_INITDB_ROOT_PASSWORD=$RootPassword -d mongo:latest