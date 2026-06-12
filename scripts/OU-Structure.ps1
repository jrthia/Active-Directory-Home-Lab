# Create OU Structure
New-ADOrganizationalUnit -Name "Corporate-HQ" -Path "DC=lab,DC=local"
New-ADOrganizationalUnit -Name "HR" -Path "OU=Corporate-HQ,DC=lab,DC=local"
New-ADOrganizationalUnit -Name "IT" -Path "OU=Corporate-HQ,DC=lab,DC=local"
New-ADOrganizationalUnit -Name "Finance" -Path "OU=Corporate-HQ,DC=lab,DC=local"
