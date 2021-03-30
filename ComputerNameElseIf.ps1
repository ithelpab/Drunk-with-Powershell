if ($env:computerName.StartsWith("ES"))
{
msiexec.exe /i "C:\CDT_temp\ESdrc_insight_setup_10.2.0-23.msi" ALLUSERS=1 /qn /norestart /log output.log
}
elseif ($env:computerName.StartsWith("HS"))
{
msiexec.exe /i "C:\CDT_temp\HSdrc_insight_setup_10.2.0-23.msi" ALLUSERS=1 /qn /norestart /log output.log
}
else
{
}