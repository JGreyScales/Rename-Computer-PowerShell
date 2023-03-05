function rename-pc($newName, $restart){
    
    $restart = $newName[1]
    $newName = $newName | out-string
    $newName = $newName.Substring(0,$newName.Length - 5)

    Rename-Computer -newName $newName
    if ($restart -eq "y"){
        Restart-Computer -Force
    }
}

$newName = Read-Host "Type new name"
$restart = Read-Host "Restart? [y,n]"
rename-Pc($newName, $restart)
