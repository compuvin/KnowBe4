function Get-KnowBe4Campaign {
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $true)]
        [String]$AccessToken   
    )
    [String]$authorizationHeader = "Authorization: Bearer $AccessToken"
    curl.exe https://us.api.knowbe4.com/v1/phishing/campaigns -H $authorizationHeader | ConvertFrom-Json | ForEach-Object {
        return $_
    }
}

function Get-KnowBe4User {
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $true)]
        [String]$AccessToken   
    )
    [String]$authorizationHeader = "Authorization: Bearer $AccessToken"
    curl.exe https://us.api.knowbe4.com/v1/users -H $authorizationHeader | ConvertFrom-Json | ForEach-Object {
        return $_
    }
}