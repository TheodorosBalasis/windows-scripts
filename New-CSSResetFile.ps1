param(
	[String] $Path = '.',
	[String] $Name = 'reset.css'
)

Copy-Item -Path $PSScriptRoot\reset.css -Destination $Path\$Name