# $Owner = "sturlabragason"
# $Repo = "terraform_state_artifact"
$BaseUri = "https://api.github.com"
# $ArtifactUri = "$BaseUri/repos/$Owner/$Repo/actions/artifacts"
$RunsUri = "$BaseUri/repos/$Owner/$Repo/actions/runs"
$Token = "PAT" | ConvertTo-SecureString -AsPlainText
# $RestResponse = Invoke-RestMethod -Authentication Bearer -Uri $ArtifactUri -Token $Token | Select-Object -ExpandProperty artifacts
$RestResponse = Invoke-RestMethod -Authentication Bearer -Uri $RunsUri -Token $Token | Select-Object -ExpandProperty workflow_runs #| Select-Object -ExpandProperty artifacts

$RunIds = Invoke-RestMethod -Authentication Bearer -Uri $RunsUri -Token $Token | Select-Object -ExpandProperty workflow_runs | Select-Object -ExpandProperty id | Sort-object | Select-Object -Skip 1

foreach ($RunId in $RunIds){
    $RunIdURI = "$BaseUri/repos/$Owner/$Repo/actions/runs/$RunId"
    Invoke-RestMethod -Authentication Bearer -Uri $RunIdURI -Token $Token -Method Delete
}


# $MostRecentArtifactURI = $RestResponse | Sort-Object -Property created_at -Descending | Select-Object -First 1 | Select-Object -ExpandProperty archive_download_url
# Invoke-RestMethod -uri $MostRecentArtifactURI -Token $Token -Authentication bearer -OutFile

# https://api.github.com/repos/sturlabragason/sturlabragason/terraform_state_artifact/actions/artifacts
# https://api.github.com/repos/sturlabragason/terraform_state_artifact/actions/artifacts/115178700/zip

