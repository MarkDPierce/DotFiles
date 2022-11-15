#Set-PoshPrompt -Theme ~\interface\themes\unicorn.json
function Invoke-Starship-PreCommand {
    $Env:STARSHIP_DISTRO = ""
}
Invoke-Expression (&starship init powershell)
