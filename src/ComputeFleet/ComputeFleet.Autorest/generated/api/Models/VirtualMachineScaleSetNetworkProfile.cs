// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is regenerated.

namespace Microsoft.Azure.PowerShell.Cmdlets.ComputeFleet.Models
{
    using static Microsoft.Azure.PowerShell.Cmdlets.ComputeFleet.Runtime.Extensions;

    /// <summary>Describes a virtual machine scale set network profile.</summary>
    public partial class VirtualMachineScaleSetNetworkProfile :
        Microsoft.Azure.PowerShell.Cmdlets.ComputeFleet.Models.IVirtualMachineScaleSetNetworkProfile,
        Microsoft.Azure.PowerShell.Cmdlets.ComputeFleet.Models.IVirtualMachineScaleSetNetworkProfileInternal
    {

        /// <summary>Backing field for <see cref="HealthProbe" /> property.</summary>
        private Microsoft.Azure.PowerShell.Cmdlets.ComputeFleet.Models.IApiEntityReference _healthProbe;

        /// <summary>
        /// A reference to a load balancer probe used to determine the health of an
        /// instance in the virtual machine scale set. The reference will be in the form:
        /// '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/loadBalancers/{loadBalancerName}/probes/{probeName}'.
        /// </summary>
        [Microsoft.Azure.PowerShell.Cmdlets.ComputeFleet.Origin(Microsoft.Azure.PowerShell.Cmdlets.ComputeFleet.PropertyOrigin.Owned)]
        internal Microsoft.Azure.PowerShell.Cmdlets.ComputeFleet.Models.IApiEntityReference HealthProbe { get => (this._healthProbe = this._healthProbe ?? new Microsoft.Azure.PowerShell.Cmdlets.ComputeFleet.Models.ApiEntityReference()); set => this._healthProbe = value; }

        /// <summary>
        /// The ARM resource id in the form of
        /// /subscriptions/{SubscriptionId}/resourceGroups/{ResourceGroupName}/...
        /// </summary>
        [Microsoft.Azure.PowerShell.Cmdlets.ComputeFleet.Origin(Microsoft.Azure.PowerShell.Cmdlets.ComputeFleet.PropertyOrigin.Inlined)]
        public string HealthProbeId { get => ((Microsoft.Azure.PowerShell.Cmdlets.ComputeFleet.Models.IApiEntityReferenceInternal)HealthProbe).Id; set => ((Microsoft.Azure.PowerShell.Cmdlets.ComputeFleet.Models.IApiEntityReferenceInternal)HealthProbe).Id = value ?? null; }

        /// <summary>Internal Acessors for HealthProbe</summary>
        Microsoft.Azure.PowerShell.Cmdlets.ComputeFleet.Models.IApiEntityReference Microsoft.Azure.PowerShell.Cmdlets.ComputeFleet.Models.IVirtualMachineScaleSetNetworkProfileInternal.HealthProbe { get => (this._healthProbe = this._healthProbe ?? new Microsoft.Azure.PowerShell.Cmdlets.ComputeFleet.Models.ApiEntityReference()); set { {_healthProbe = value;} } }

        /// <summary>Backing field for <see cref="NetworkApiVersion" /> property.</summary>
        private string _networkApiVersion;

        /// <summary>
        /// specifies the Microsoft.Network API version used when creating networking
        /// resources in the Network Interface Configurations for Virtual Machine Scale Set
        /// with orchestration mode 'Flexible'
        /// </summary>
        [Microsoft.Azure.PowerShell.Cmdlets.ComputeFleet.Origin(Microsoft.Azure.PowerShell.Cmdlets.ComputeFleet.PropertyOrigin.Owned)]
        public string NetworkApiVersion { get => this._networkApiVersion; set => this._networkApiVersion = value; }

        /// <summary>Backing field for <see cref="NetworkInterfaceConfiguration" /> property.</summary>
        private System.Collections.Generic.List<Microsoft.Azure.PowerShell.Cmdlets.ComputeFleet.Models.IVirtualMachineScaleSetNetworkConfiguration> _networkInterfaceConfiguration;

        /// <summary>The list of network configurations.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.ComputeFleet.Origin(Microsoft.Azure.PowerShell.Cmdlets.ComputeFleet.PropertyOrigin.Owned)]
        public System.Collections.Generic.List<Microsoft.Azure.PowerShell.Cmdlets.ComputeFleet.Models.IVirtualMachineScaleSetNetworkConfiguration> NetworkInterfaceConfiguration { get => this._networkInterfaceConfiguration; set => this._networkInterfaceConfiguration = value; }

        /// <summary>Creates an new <see cref="VirtualMachineScaleSetNetworkProfile" /> instance.</summary>
        public VirtualMachineScaleSetNetworkProfile()
        {

        }
    }
    /// Describes a virtual machine scale set network profile.
    public partial interface IVirtualMachineScaleSetNetworkProfile :
        Microsoft.Azure.PowerShell.Cmdlets.ComputeFleet.Runtime.IJsonSerializable
    {
        /// <summary>
        /// The ARM resource id in the form of
        /// /subscriptions/{SubscriptionId}/resourceGroups/{ResourceGroupName}/...
        /// </summary>
        [Microsoft.Azure.PowerShell.Cmdlets.ComputeFleet.Runtime.Info(
        Required = false,
        ReadOnly = false,
        Read = true,
        Create = true,
        Update = true,
        Description = @"The ARM resource id in the form of
        /subscriptions/{SubscriptionId}/resourceGroups/{ResourceGroupName}/...",
        SerializedName = @"id",
        PossibleTypes = new [] { typeof(string) })]
        string HealthProbeId { get; set; }
        /// <summary>
        /// specifies the Microsoft.Network API version used when creating networking
        /// resources in the Network Interface Configurations for Virtual Machine Scale Set
        /// with orchestration mode 'Flexible'
        /// </summary>
        [Microsoft.Azure.PowerShell.Cmdlets.ComputeFleet.Runtime.Info(
        Required = false,
        ReadOnly = false,
        Read = true,
        Create = true,
        Update = true,
        Description = @"specifies the Microsoft.Network API version used when creating networking
        resources in the Network Interface Configurations for Virtual Machine Scale Set
        with orchestration mode 'Flexible'",
        SerializedName = @"networkApiVersion",
        PossibleTypes = new [] { typeof(string) })]
        [global::Microsoft.Azure.PowerShell.Cmdlets.ComputeFleet.PSArgumentCompleterAttribute("2020-11-01")]
        string NetworkApiVersion { get; set; }
        /// <summary>The list of network configurations.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.ComputeFleet.Runtime.Info(
        Required = false,
        ReadOnly = false,
        Read = true,
        Create = true,
        Update = true,
        Description = @"The list of network configurations.",
        SerializedName = @"networkInterfaceConfigurations",
        PossibleTypes = new [] { typeof(Microsoft.Azure.PowerShell.Cmdlets.ComputeFleet.Models.IVirtualMachineScaleSetNetworkConfiguration) })]
        System.Collections.Generic.List<Microsoft.Azure.PowerShell.Cmdlets.ComputeFleet.Models.IVirtualMachineScaleSetNetworkConfiguration> NetworkInterfaceConfiguration { get; set; }

    }
    /// Describes a virtual machine scale set network profile.
    internal partial interface IVirtualMachineScaleSetNetworkProfileInternal

    {
        /// <summary>
        /// A reference to a load balancer probe used to determine the health of an
        /// instance in the virtual machine scale set. The reference will be in the form:
        /// '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/loadBalancers/{loadBalancerName}/probes/{probeName}'.
        /// </summary>
        Microsoft.Azure.PowerShell.Cmdlets.ComputeFleet.Models.IApiEntityReference HealthProbe { get; set; }
        /// <summary>
        /// The ARM resource id in the form of
        /// /subscriptions/{SubscriptionId}/resourceGroups/{ResourceGroupName}/...
        /// </summary>
        string HealthProbeId { get; set; }
        /// <summary>
        /// specifies the Microsoft.Network API version used when creating networking
        /// resources in the Network Interface Configurations for Virtual Machine Scale Set
        /// with orchestration mode 'Flexible'
        /// </summary>
        [global::Microsoft.Azure.PowerShell.Cmdlets.ComputeFleet.PSArgumentCompleterAttribute("2020-11-01")]
        string NetworkApiVersion { get; set; }
        /// <summary>The list of network configurations.</summary>
        System.Collections.Generic.List<Microsoft.Azure.PowerShell.Cmdlets.ComputeFleet.Models.IVirtualMachineScaleSetNetworkConfiguration> NetworkInterfaceConfiguration { get; set; }

    }
}