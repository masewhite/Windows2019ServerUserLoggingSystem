Get-WmiObject  -Class Win32_UserAccount  |
Select Domain, Name, PSComputerName, Caption, PasswordChangeable, PasswordRequired| Export-csv C:\Users\<InsertUserHere>\Desktop\MonthlyServerInformation\MonthlyUserInfo.csv -NoTypeInformation
