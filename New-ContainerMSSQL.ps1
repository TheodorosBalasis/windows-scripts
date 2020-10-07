param(
	[String] $ContainerName = 'MSSQL',
	[Parameter(Mandatory)][String] $SAPassword,
	[Switch] $Expose
)

if ($Expose) {
	docker run 	--name $ContainerName `
				-e ACCEPT_EULA=Y `
				-e SA_PASSWORD=$SAPassword `
				-e MSSQL_PID=Express `
				-p 1433:1433 `
				-d 'mcr.microsoft.com/mssql/server:2017-latest-ubuntu'
} else {
	docker run 	--name $ContainerName `
				-e ACCEPT_EULA=Y `
				-e SA_PASSWORD=$SAPassword `
				-e MSSQL_PID=Express `
				-d 'mcr.microsoft.com/mssql/server:2017-latest-ubuntu'
}