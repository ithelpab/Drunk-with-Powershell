#DHCP server Name
$_DHCPServer = 'morgan'
$_PercentageThreshhold = 50


Get-DhcpServerv4ScopeStatistics -ComputerName $_DHCPServer | Where-Object -FilterScript { $_.PercentageInUse -Gt $_PercentageThreshhold }