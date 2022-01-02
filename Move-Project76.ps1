$OSDrivePath = "C:\Users\$($ENV:USERNAME)\OneDrive\Documents\My Games\Fallout 76\Project76.ini"
$InstallationPath = "E:\Program Files\ModifiableWindowsApps\Fallout 76\Project76.ini"
$newline = [System.Environment]::NewLine

$MakeCopy = Test-Path $OSDrivePath
if (!$MakeCopy){
    write-host "Project76.ini not found at $OSDrivePath. $newline Copying Project76.ini from $InstallationPath"
    Copy-Item -Path $InstallationPath -Destination $OSDrivePath
    if(Test-Path $OSDrivePath){
        write-host "Copy Success."
    }else{
        write-host "Copy Failed."
    }
   
} else {
    write-host "Project76.ini already found."
}