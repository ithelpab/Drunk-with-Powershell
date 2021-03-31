if (($env:computerName.StartsWith("ES")) -and ($env:computerName.Contains("2400")))
{
write-host "Yes, contains AD and 2400"
}
else
{
write-host "nope"
}