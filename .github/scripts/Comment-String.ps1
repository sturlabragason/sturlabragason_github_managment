function Comment-String {
    param (
        $String
    )    
    $StringLenght = $String.Length
    $LineLenght = $StringLenght + 16
    $Filler = "#" * $LineLenght
    $CommentString = @()
    $CommentString += " " + $Filler + "`n"
    $CommentString += "####    " + $String + "    ####" + "`n"
    $CommentString += $Filler
    Write-Host $CommentString
}

Comment-String -String "sturlabragason_xmrig"