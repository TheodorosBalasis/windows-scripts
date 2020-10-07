param(
	[String] $ContainerName = 'MongoDB',
	[Parameter(Mandatory)][String] $RootUsername,
	[Parameter(Mandatory)][String] $RootPassword,
	[Switch] $Expose
)

if ($Expose) {
	docker run 	--name $ContainerName `
				-e MONGO_INITDB_ROOT_USERNAME=$RootUsername `
				-e MONGO_INITDB_ROOT_PASSWORD=$RootPassword `
				-p 27017:27017
				-d mongo:latest
} else {
	docker run 	--name $ContainerName `
				-e MONGO_INITDB_ROOT_USERNAME=$RootUsername `
				-e MONGO_INITDB_ROOT_PASSWORD=$RootPassword `
				-d mongo:latest
}