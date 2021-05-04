function OnlineStatusCheck
{
Get-Date
try
{
invoke-webrequest www.msn.com | select-object StatusDescription -ErrorAction Stop | Out-Null
Write-Host "Online" -ForegroundColor Green
} catch {
        Write-Host "Offline" -ForegroundColor Red
        [console]::beep(2620,700)
}
Write-Output -InputObject ----------------------------------
Start-Sleep -seconds 10
}


Start-transcript -Path C:\logs.txt

Do 
{
    OnlineStatusCheck
    Test-NetConnection -ComputerName 8.8.8.8 -Hops 2 -InformationLevel Quiet

}
While (1)