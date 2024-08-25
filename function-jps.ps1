<#
.DESCRIPTION
Stop java process for specified name patter, *Eclipse* will terminate all processes
that process name contains 'Eclipse' sub-string
#>
function stopJavaApp() {
  [CmdletBinding()]
  param (
    <#
    Java app Main class simple name
    #>
    [Parameter(Mandatory)]
    [string]$Main
  )

  jps | Out-String -OutVariable str
  [System.Text.RegularExpressions.Regex]::Split($str, "\n") |
  Where-Object { $_.Trim() -Like "*$Main*" } |
  ForEach-Object -Process {
    Write-Warning $_
    $p = $_.Split(' ')
    $p_id = $p[0]
    $p_main_name = $p[1]
    #Write-Warning $p_main_name
    Stop-Process -Id $p_id
  }
}