# Bulk import users from CSV with duplicate username handling
Import-Csv "C:\new_starters.csv" | ForEach-Object {
    $baseUsername = "$($_.FirstName.ToLower()[0])$($_.LastName.ToLower())"
    $username = $baseUsername
    $counter = 1
    
    while (Get-ADUser -Filter {SamAccountName -eq $username} -ErrorAction SilentlyContinue) {
        $username = "$baseUsername$counter"
        $counter++
    }

    $ou = switch ($_.Department) {
        "HR"      { "OU=HR,OU=Corporate-HQ,DC=lab,DC=local" }
        "Finance" { "OU=Finance,OU=Corporate-HQ,DC=lab,DC=local" }
        "IT"      { "OU=IT,OU=Corporate-HQ,DC=lab,DC=local" }
    }

    New-ADUser -Name "$($_.FirstName) $($_.LastName)" `
               -SamAccountName $username `
               -UserPrincipalName "$username@lab.local" `
               -Path $ou `
               -AccountPassword (ConvertTo-SecureString "Welcome@Lab2024!" -AsPlainText -Force) `
               -ChangePasswordAtLogon $true `
               -Enabled $true
    Write-Host "Created user: $username in $($_.Department)"
}
