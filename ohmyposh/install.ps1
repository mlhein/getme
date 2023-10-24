# Run the following command before execute this script
# Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope Process

param (
    [Parameter(Mandatory = $false)][string]$config = "https://raw.githubusercontent.com/mlhein/getme/main/ohmyposh/themes/me.omp.json"
)

winget list -e JanDeDobbeleer.OhMyPosha
$ohmyposhisinstalled = $?
if ( ! $ohmyposhisinstalled) {
    winget.exe install JanDeDobbeleer.OhMyPosh -s winget 
}
else {
    Write-Output "ALREADY INSTALLED" 
}

# Check C:\Users\USER\Documents\PowerShell\Microsoft.PowerShell_profile.ps1 exist

if (Test-Path $PROFILE) {
    Write-Output "Path existing. Copy the following into $PROFILE`n"
    Write-Output "`toh-my-posh init pwsh --config '$config' | Invoke-Expression"
    notepad.exe $PROFILE
}
else {
    $body = "oh-my-posh init pwsh --config '$config' | Invoke-Expression"
    $body | Out-File -Encoding utf8NoBOM -FilePath $PROFILE
}