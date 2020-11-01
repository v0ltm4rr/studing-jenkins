Param
(
     [string]$UserName = [System.Security.Principal.WindowsIdentity]::GetCurrent().Name
)

Write-Host $UserName