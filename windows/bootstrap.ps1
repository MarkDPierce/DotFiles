#Requires -RunAsAdministrator
function Build-Choco{
    $chocoPacks = (
        "7zip",
        "chromium",
        "kubernetes-cli",
        "kubernetes-helm",
        "oh-my-posh",
        "Pester",
        "pwsh",
        "starship",
        "terraform",
        "vlc",
        "vscode",
        "windirstat"
    )

    if (! (&choco --version)){
        #Install coco
        Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
    }

    $chocoPacks | ForEach-Object -ThrottleLimit 5 -Parallel {
        choco install $PSItem --force
    }
}

function Build-Profile{
    #Build the profile
    New-Item -Path $profile -Type File -Force
    Set-Content -Path $profile -Value (get-content -Force ./profile.ps1) -Force
}

function Starship-Blastoff{
    New-Item -ItemType Directory -Path $HOME -Name '.config' -Force
    Copy-Item ./starship.toml -Destination $HOME\.config
}

function Main {
    Build-Choco
    Build-Profile
    Starship-Blastoff
}
Main