param(
    [String] $ContainerName = 'Vault',
    [Parameter(Mandatory)][String] $RootTokenID
)

docker run --name=$ContainerName --cap-add=IPC_LOCK -e VAULT_DEV_ROOT_TOKEN_ID=$RootTokenID -d vault:latest