<# change prompt ,shorter #>
function prompt {
  $p = Split-Path -leaf -path (Get-Location)
  "$p> "
}

<#
function to stop all gradle processes, include GradleDaemon and GradleServer
#>
function stopGradle {
	get-process | Where-Object CommandLine -Like '*Gradle*' | Select-Object Id | Stop-Process
}

<#
set executable file alias, no need to add path to PATH env variable
#>
set-alias -Name gradle2 -Value H:\dev\gradle-2.14.1-all\gradle-2.14.1\bin\gradle.bat -Scope "Global"
set-alias -Name gradle7 -Value H:\dev\gradle-7.3.3-all\gradle-7.3.3\bin\gradle.bat -Scope "Global"
set-alias -Name groovy -Value H:\dev\apache-groovy-sdk-4.0.22\groovy-4.0.22\bin\groovy.bat -Scope "Global"