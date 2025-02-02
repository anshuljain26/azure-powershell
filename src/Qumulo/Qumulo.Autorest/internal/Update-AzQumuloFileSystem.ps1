
# ----------------------------------------------------------------------------------
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# Code generated by Microsoft (R) AutoRest Code Generator.Changes may cause incorrect behavior and will be lost if the code
# is regenerated.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Update a file system resource
.Description
Update a file system resource
.Example
Update-AzQumuloFileSystem -ResourceGroupName ps-joyer-test -Name qumulo-resource-01 -Tag @{"123"="abc"}

.Inputs
Microsoft.Azure.PowerShell.Cmdlets.Qumulo.Models.IQumuloIdentity
.Outputs
Microsoft.Azure.PowerShell.Cmdlets.Qumulo.Models.Api20221012Preview.IFileSystemResource
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IQumuloIdentity>: Identity Parameter
  [FileSystemName <String>]: Name of the File System resource
  [Id <String>]: Resource identity path
  [ResourceGroupName <String>]: The name of the resource group. The name is case insensitive.
  [SubscriptionId <String>]: The ID of the target subscription.
.Link
https://learn.microsoft.com/powershell/module/az.qumulo/update-azqumulofilesystem
#>
function Update-AzQumuloFileSystem {
[OutputType([Microsoft.Azure.PowerShell.Cmdlets.Qumulo.Models.Api20221012Preview.IFileSystemResource])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
param(
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Alias('FileSystemName')]
    [Microsoft.Azure.PowerShell.Cmdlets.Qumulo.Category('Path')]
    [System.String]
    # Name of the File System resource
    ${Name},

    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.Qumulo.Category('Path')]
    [System.String]
    # The name of the resource group.
    # The name is case insensitive.
    ${ResourceGroupName},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Microsoft.Azure.PowerShell.Cmdlets.Qumulo.Category('Path')]
    [Microsoft.Azure.PowerShell.Cmdlets.Qumulo.Runtime.DefaultInfo(Script='(Get-AzContext).Subscription.Id')]
    [System.String]
    # The ID of the target subscription.
    ${SubscriptionId},

    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Azure.PowerShell.Cmdlets.Qumulo.Category('Path')]
    [Microsoft.Azure.PowerShell.Cmdlets.Qumulo.Models.IQumuloIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Qumulo.Category('Body')]
    [System.String]
    # File system Id of the resource
    ${ClusterLoginUrl},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Qumulo.Category('Body')]
    [System.String]
    # Delegated subnet id for Vnet injection
    ${DelegatedSubnetId},

    [Parameter()]
    [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.Qumulo.Support.ManagedServiceIdentityType])]
    [Microsoft.Azure.PowerShell.Cmdlets.Qumulo.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.Qumulo.Support.ManagedServiceIdentityType]
    # Type of managed service identity (where both SystemAssigned and UserAssigned types are allowed).
    ${IdentityType},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Qumulo.Category('Body')]
    [System.String]
    # Offer Id
    ${MarketplaceOfferId},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Qumulo.Category('Body')]
    [System.String]
    # Plan Id
    ${MarketplacePlanId},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Qumulo.Category('Body')]
    [System.String]
    # Publisher Id
    ${MarketplacePublisherId},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Qumulo.Category('Body')]
    [System.String]
    # Marketplace Subscription Id
    ${MarketplaceSubscriptionId},

    [Parameter()]
    [AllowEmptyCollection()]
    [Microsoft.Azure.PowerShell.Cmdlets.Qumulo.Category('Body')]
    [System.String[]]
    # Private IPs of the resource
    ${PrivateIP},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Qumulo.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.Qumulo.Runtime.Info(PossibleTypes=([Microsoft.Azure.PowerShell.Cmdlets.Qumulo.Models.Api20221012Preview.IFileSystemResourceUpdateTags]))]
    [System.Collections.Hashtable]
    # Resource tags.
    ${Tag},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Qumulo.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.Qumulo.Runtime.Info(PossibleTypes=([Microsoft.Azure.PowerShell.Cmdlets.Qumulo.Models.Api40.IUserAssignedIdentities]))]
    [System.Collections.Hashtable]
    # The set of user assigned identities associated with the resource.
    # The userAssignedIdentities dictionary keys will be ARM resource ids in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}.
    # The dictionary values can be empty objects ({}) in requests.
    ${UserAssignedIdentity},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Qumulo.Category('Body')]
    [System.String]
    # User Email
    ${UserEmail},

    [Parameter()]
    [Alias('AzureRMContext', 'AzureCredential')]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.Qumulo.Category('Azure')]
    [System.Management.Automation.PSObject]
    # The DefaultProfile parameter is not functional.
    # Use the SubscriptionId parameter when available if executing the cmdlet against a different subscription.
    ${DefaultProfile},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.Qumulo.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.Qumulo.Category('Runtime')]
    [Microsoft.Azure.PowerShell.Cmdlets.Qumulo.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.Qumulo.Category('Runtime')]
    [Microsoft.Azure.PowerShell.Cmdlets.Qumulo.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.Qumulo.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.Qumulo.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.Qumulo.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName

        $mapping = @{
            UpdateExpanded = 'Az.Qumulo.private\Update-AzQumuloFileSystem_UpdateExpanded';
            UpdateViaIdentityExpanded = 'Az.Qumulo.private\Update-AzQumuloFileSystem_UpdateViaIdentityExpanded';
        }
        if (('UpdateExpanded') -contains $parameterSet -and -not $PSBoundParameters.ContainsKey('SubscriptionId')) {
            $testPlayback = $false
            $PSBoundParameters['HttpPipelinePrepend'] | Foreach-Object { if ($_) { $testPlayback = $testPlayback -or ('Microsoft.Azure.PowerShell.Cmdlets.Qumulo.Runtime.PipelineMock' -eq $_.Target.GetType().FullName -and 'Playback' -eq $_.Target.Mode) } }
            if ($testPlayback) {
                $PSBoundParameters['SubscriptionId'] = . (Join-Path $PSScriptRoot '..' 'utils' 'Get-SubscriptionIdTestSafe.ps1')
            } else {
                $PSBoundParameters['SubscriptionId'] = (Get-AzContext).Subscription.Id
            }
        }

        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {

        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {

        throw
    }

}
end {
    try {
        $steppablePipeline.End()

    } catch {

        throw
    }
} 
}
