param(
	[String] $ContainerName = 'MariaDB',
	[Parameter(Mandatory)][String] $RootPassword,
	[Switch] $Expose
)

if ($Expose) {
	docker run 	--name $ContainerName `
				-e MYSQL_ROOT_PASSWORD=$RootPassword `
				-p 3306:3306 `
				-d mariadb:latest
} else {
	docker run 	--name $ContainerName `
				-e MYSQL_ROOT_PASSWORD=$RootPassword `
				-d mariadb:latest
}