# Create Security Groups
New-ADGroup -Name "Developers" -GroupScope Global -GroupCategory Security -Path "OU=IT,OU=Corporate-HQ,DC=lab,DC=local"
New-ADGroup -Name "HR-Managers" -GroupScope Global -GroupCategory Security -Path "OU=HR,OU=Corporate-HQ,DC=lab,DC=local"
New-ADGroup -Name "Finance-Approvers" -GroupScope Global -GroupCategory Security -Path "OU=Finance,OU=Corporate-HQ,DC=lab,DC=local"
New-ADGroup -Name "Helpdesk" -GroupScope Global -GroupCategory Security -Path "OU=IT,OU=Corporate-HQ,DC=lab,DC=local"
