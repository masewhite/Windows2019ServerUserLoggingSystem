$logs = Get-EventLog system -source Microsoft-Windows-Winlogon -After (Get-Date).AddDays(-31);
$LoginLogout = @(); ForEach ($log in $logs) {if($log.instanceid -eq 7001) {$type = "Logon"} Elseif ($log.instanceid -eq 7002){$type="Logoff"}  Else {Continue} $LoginLogout += New-Object PSObject -Property @{Time = $log.TimeWritten; "Event" = $type; User = (New-Object System.Security.Principal.SecurityIdentifier $Log.ReplacementStrings[1]).Translate([System.Security.Principal.NTAccount])}};
$LoginLogout = $LoginLogout | Sort-Object -Property User, Time 
$LoginLogout
