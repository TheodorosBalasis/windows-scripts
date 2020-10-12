param(
	[Parameter(Mandatory)]
	[ValidateSet(
		'alpine',
		'centos',
		'debian',
		'fedora',
		'ubuntu'
	)][String] $Type,
	[String] $ContainerName = 'OSContainer',
	[int[]] $ExposedPorts
)

if ($ContainerName -eq '') {
	$ContainerName = $Type
}

[String[]] $Ports = New-Object String[] $ExposedPorts.Count

for ($i = 0; $i -lt $ExposedPorts.Count; $i++) {
	$Port = $ExposedPorts[$i]
	$Ports[$i] = '-p ' + $Port + ':' + $Port
}

# Running the Docker command directly causes the first '-p' to be omitted
$DockerCommand = "docker run --name $ContainerName $Ports -dit $Type"
Invoke-Expression $DockerCommand