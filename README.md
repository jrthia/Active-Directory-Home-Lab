# Windows-Active-Directory-Home-Lab-
Active Directory home lab on Windows Server 2025 using UTM virtual machine for Apple Silicon (ARM64)
1. Created Domain “lab.Local” with DNS.
<img width="1900" height="254" alt="image" src="https://github.com/user-attachments/assets/e39b4e7d-7232-4a3c-a800-96bd362f5381" />
2. Created Organizational Unit “Corporate-HQ”, and added child Organizational Units IT, HR and Finance. 
<img width="1864" height="416" alt="image" src="https://github.com/user-attachments/assets/f666b377-0056-474c-b7f4-56fa1213b022" />
3. Created groups “Developers", "Helpdesk", "Finance-Approvers", "HR-Managers" and nested each within respective child OU in Corporate-HQ. 
<img width="2902" height="406" alt="image" src="https://github.com/user-attachments/assets/5f0dfad8-fa55-48c9-898a-41158e05180f" />
4. Set Domain Password Policy to a minimum of 14 characters, with a 90 days expiration age and with a minimum of one day before user can change password. Every time a user resets their password, the last 12 passwords are remembered meaning they cannot re-use old passwords. Users have 5 attempts to enter correct password before account locks. After account is locked, users can re-try to login after 30 minutes. Passwords must contain upper case, lower case and symbols. 
<img width="2902" height="736" alt="image" src="https://github.com/user-attachments/assets/b08dcbef-2462-4a67-a62c-773eb31b1ce0" />
5. Set Fine-Grained Password Policies for specific groups in Finance, HR and IT. This means that The Finance-Approvers, HR-Managers and Developers in the OU follow a different password policy from the rest of the domain.
<img width="2270" height="1440" alt="image" src="https://github.com/user-attachments/assets/31035e52-e547-4aa1-8fc2-60869a2cc2b7" />
<img width="2900" height="1188" alt="image" src="https://github.com/user-attachments/assets/2d39d984-0142-482c-bd52-9f66132bb68b" />
6. Added users to the groups “Finance-Approvers”,  “HR-Managers” and “Developers”.
<img width="2062" height="1142" alt="image" src="https://github.com/user-attachments/assets/cfd00d11-a1a3-4117-ada0-cdb9a7f436f8" />
7. Reset password for group member. User must immediately change password on first login. 
<img width="1522" height="856" alt="image" src="https://github.com/user-attachments/assets/bc77ea4b-762a-4146-bbd9-a979c800c3aa" />
8. Imported users from CSV file. Set that users must immediately change password on first login.
<img width="1922" height="1410" alt="image" src="https://github.com/user-attachments/assets/b417be62-9a6a-4e1b-9892-d670979687e7" />
<img width="2906" height="1000" alt="image" src="https://github.com/user-attachments/assets/bc6f3c9e-3a5b-4740-8c0f-334c30caba6a" />
9. Created three Group Object Policies for Corporate-HQ OU, a screen lock policy, a USB restriction policy and a control panel restriction policy. In this lab WMI filters were not used.


Screen lock policy: Forces the screensaver to activate after 10 minutes, and this forces the screen to lock, requiring the user log in again to prevent unauthorized access. 

USB Restriction policy: Disables USB storage devices to prevent standard users from copying sensitive data or introducing malware. 

Control panel restriction policy: Prevents standard users from changing system settings, uninstalling, network configurations or uninstalling software.
<img width="2134" height="916" alt="image" src="https://github.com/user-attachments/assets/50d83d73-4711-4a67-8870-ac635ee62916" />
10. Delegated permission to Helpdesk to change passwords of all users in Corporate-HQ, applying the principle of least privilege. Helpdesk can only reset passwords and cannot perform any other administrative actions.
<img width="1078" height="840" alt="image" src="https://github.com/user-attachments/assets/9d721a85-1814-4706-b267-bbc539819e18" />
<img width="1511" height="996" alt="image" src="https://github.com/user-attachments/assets/4d174173-cff2-4fcc-a2cf-bcbb9c22857b" />
Skills Demonstrated: 
- Active Directory administration and domain controller deployment
- PowerShell scripting and automation
- Organisational Unit (OU) design and configuration
- User and group provisioning
- Group Policy Object (GPO) creation and configuration
- Fine-grained password policy implementation
- Bulk user provisioning via CSV import
- AD delegation and least privilege security principles
- Virtualisation using UTM on Apple Silicon (ARM64)
