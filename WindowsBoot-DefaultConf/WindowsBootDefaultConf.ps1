if( Test-Path -Path "C:\DATA")
{
    bcdedit /createstore C:\DATA\boot
}
else
{
    New-Item -Path C:\ -ItemType "directory" -Name DATA
    bcdedit /createstore C:\DATA\boot 
}

bcdedit /export C:\DATA\boot
bcdedit /store C:\DATA\boot /enum all