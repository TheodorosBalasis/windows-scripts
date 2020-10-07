param(
	[String] $ContainerName = 'PostgreSQL',
	[Parameter(Mandatory)][String] $RootPassword
	[Switch] $Expose
)

if ($Expose) {
	docker run 	--name $ContainerName `
				-e POSTGRES_PASSWORD=$RootPassword `
				-p 5432:5432 `
				-d postgres:latest
} else {
	docker run 	--name $ContainerName `
				-e POSTGRES_PASSWORD=$RootPassword `
				-d postgres:latest
}