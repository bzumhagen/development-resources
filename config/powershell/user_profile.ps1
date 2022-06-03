# Use this file to run your own startup commands

## Prompt Customization
<#
.SYNTAX
    <PrePrompt><CMDER DEFAULT>
    λ <PostPrompt> <repl input>
.EXAMPLE
    <PrePrompt>N:\Documents\src\cmder [master]
    λ <PostPrompt> |
#>

[ScriptBlock]$PrePrompt = {

}

# Replace the cmder prompt entirely with this.
# [ScriptBlock]$CmderPrompt = {}

[ScriptBlock]$PostPrompt = {

}

## <Continue to add your own>

Set-PSReadlineKeyHandler -Key Tab -Function Complete
Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward
Set-PSReadlineOption -ShowToolTips
Set-PSReadlineOption -HistorySearchCursorMovesToEnd
. C:\SourceCode\kubectl-aliases-powershell\kubectl_aliases.ps1
function .. { cd .. }
function kmini { & k config use-context minikube }
function kplay { & k config use-context ctus-k8s-play-1-b }
function kdev { & k config use-context ctus-k8s-dev-1-a }
function kreg { & k config use-context ctus-k8s-reg-1-b }
function kprodctus { & k config use-context ctus-k8s-prod-1-a }
function kprodukso { & k config use-context ukso-k8s-prod-1-b }
function kprodbrso { & k config use-context brso-k8s-prod-1-a }
function kprodcact { & k config use-context cact-k8s-prod-1-b }
function kprodstage { & k config use-context ctus-k8s-stage-1-b }
function klos2dev([Parameter(ValueFromRemainingArguments = $true)]$params) {
  $match = [regex]::match($params[0],'^([^-]+)-([a-z-]+)-.+$')
  $release = $match.Groups[1].Value
  $service = $match.Groups[2].Value
  $container = "$service-$release"
  if ($release -eq "s216e6b8" -or $release -eq "s297611c" -or !$release)
  {
    $container = $service
  }
  & klo -c $container $params
}
function klos2([Parameter(ValueFromRemainingArguments = $true)]$params) {
  $match = [regex]::match($params[0],'^[^-]+-([a-z-]+)-.+$')
  $service = $match.Groups[1].Value
  & klo -c $service $params
}
function kloag([Parameter(ValueFromRemainingArguments = $true)]$params) { & klo -n r1-agents $params}
function kgpoag([Parameter(ValueFromRemainingArguments = $true)]$params) { & kgpon r1-agents -L tenantId -L instanceId --sort-by=.metadata.labels.tenantId $params}
function kfpoag([Parameter(ValueFromRemainingArguments = $true)]$params) { & kgpon r1-agents $params}
function kdpoag([Parameter(ValueFromRemainingArguments = $true)]$params) { & kdpon r1-agents $params}
function krmpoag([Parameter(ValueFromRemainingArguments = $true)]$params) { & krmpon r1-agents $params}
function kgco([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods -o jsonpath="{range .items[*]}{range .spec.containers[*]}{.image}{'\n'}{end}{end}" | Sort-Object | Get-Unique }
