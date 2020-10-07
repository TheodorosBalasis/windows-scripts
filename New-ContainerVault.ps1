param(
	[String] $ContainerName = 'Vault',
	[Parameter(Mandatory)][String] $RootTokenID
	[Switch] $Expose
)

if ($Expose) {
	docker run 	--name=$ContainerName `
				--cap-add=IPC_LOCK `
				-e VAULT_DEV_ROOT_TOKEN_ID=$RootTokenID `
				-p 8200:8200 `
				-d vault:latest
} else {
	docker run 	--name=$ContainerName `
				--cap-add=IPC_LOCK `
				-e VAULT_DEV_ROOT_TOKEN_ID=$RootTokenID `
				-d vault:latest
}