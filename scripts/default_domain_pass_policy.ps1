# Set baseline password policy for all users
Set-ADDefaultDomainPasswordPolicy -Identity "lab.local" `
    -MinPasswordLength 14 `
    -MaxPasswordAge "90.00:00:00" `
    -MinPasswordAge "1.00:00:00" `
    -PasswordHistoryCount 12 `
    -LockoutThreshold 5 `
    -LockoutDuration "00:30:00" `
    -LockoutObservationWindow "00:30:00" `
    -ComplexityEnabled $true
