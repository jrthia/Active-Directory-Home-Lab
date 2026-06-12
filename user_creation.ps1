# Create individual users and add to groups
New-ADUser -Name "Tom Brady" `
           -SamAccountName "tbrady" `
           -UserPrincipalName "tbrady@lab.local" `
           -Path "OU=Finance,OU=Corporate-HQ,DC=lab,DC=local" `
           -AccountPassword (ConvertTo-SecureString "Secure@Admin2024!" -AsPlainText -Force) `
           -ChangePasswordAtLogon $true `
           -Enabled $true

Add-ADGroupMember -Identity "Finance-Approvers" -Members "tbrady"

New-ADUser -Name "Sarah Connor" `
           -SamAccountName "sconnor" `
           -UserPrincipalName "sconnor@lab.local" `
           -Path "OU=IT,OU=Corporate-HQ,DC=lab,DC=local" `
           -AccountPassword (ConvertTo-SecureString "Secure@Admin2024!" -AsPlainText -Force) `
           -Enabled $true

Add-ADGroupMember -Identity "Helpdesk" -Members "sconnor"
