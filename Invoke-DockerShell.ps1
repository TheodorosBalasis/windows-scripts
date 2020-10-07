param(
	[Parameter(Mandatory)][String] $ContainerName
)

docker exec -it $ContainerName sh