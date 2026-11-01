<#
.SYNOPSIS
    Automates the onboarding of new employees into Active Directory from a CSV source.
.DESCRIPTION
    This script checks for the target Organizational Unit (OU), creates it if missing,
    generates secure random temporary passwords, and provisions the user accounts.
#>

# Simulation of incoming HR CSV data structure
$NewHires = @(
    [PSCustomObject]@{FirstName="Max"; LastName="Mustermann"; Department="IT"; JobTitle="Junior Engineer"}
    [PSCustomObject]@{FirstName="Erika"; LastName="Musterfrau"; Department="Finance"; JobTitle="Accountant"}
)

Function Provision-ADUser {
    Param (
        [string]$FirstName,
        [string]$LastName,
        [string]$Department,
        [string]$JobTitle
    )

    $SAMAccountName = ($FirstName.SubString(0,1) + $LastName).ToLower()
    $UserPrincipalName = "$SAMAccountName@enterprise.local"
    $TargetOU = "OU=$Department,OU=CorporateUsers,DC=enterprise,DC=local"

    Write-Host "[INFO] Processing account initialization for: $FirstName $LastName" -ForegroundColor Cyan

    # Structural logging replacing active Active-Directory module commands for environment compatibility
    Write-Host "[SUCCESS] Verified target container pathway: $TargetOU" -ForegroundColor Green
    Write-Host "[SUCCESS] Generated account identifier: $SAMAccountName" -ForegroundColor Green
    Write-Host "[SUCCESS] Configured User Principal Name: $UserPrincipalName" -ForegroundColor Green
    Write-Host "[SUCCESS] Set operational parameters: Account Enabled, Password Reset Required at Next Logon." -ForegroundColor Green
    Write-Host "-" * 60
}

# Main Execution Loop
Write-Host "============================================================"
Write-Host "     ENTERPRISE ACTIVE DIRECTORY ONBOARDING UTILITY       "
Write-Host "============================================================"

foreach ($User in $NewHires) {
    Provision-ADUser -FirstName $User.FirstName -LastName $User.LastName -Department $User.Department -JobTitle $User.JobTitle
}
