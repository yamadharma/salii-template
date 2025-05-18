Write-Host "Installing chocolatey"
iwr https://community.chocolatey.org/install.ps1 -UseBasicParsing | iex
refreshenv
choco feature enable -n=allowGlobalConfirmation
choco feature enable -n=allowEmptyChecksums
sleep 5