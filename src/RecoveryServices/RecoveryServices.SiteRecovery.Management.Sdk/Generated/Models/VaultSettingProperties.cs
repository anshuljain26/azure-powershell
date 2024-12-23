// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is regenerated.

namespace Microsoft.Azure.Management.RecoveryServices.SiteRecovery.Models
{
    using System.Linq;

    /// <summary>
    /// Vault setting properties.
    /// </summary>
    public partial class VaultSettingProperties
    {
        /// <summary>
        /// Initializes a new instance of the VaultSettingProperties class.
        /// </summary>
        public VaultSettingProperties()
        {
            CustomInit();
        }

        /// <summary>
        /// Initializes a new instance of the VaultSettingProperties class.
        /// </summary>

        /// <param name="migrationSolutionId">The migration solution ARM Id.
        /// </param>

        /// <param name="vmwareToAzureProviderType">VMware to Azure provider type.
        /// </param>
        public VaultSettingProperties(string migrationSolutionId = default(string), string vmwareToAzureProviderType = default(string))

        {
            this.MigrationSolutionId = migrationSolutionId;
            this.VmwareToAzureProviderType = vmwareToAzureProviderType;
            CustomInit();
        }

        /// <summary>
        /// An initialization method that performs custom operations like setting defaults
        /// </summary>
        partial void CustomInit();


        /// <summary>
        /// Gets or sets the migration solution ARM Id.
        /// </summary>
        [Newtonsoft.Json.JsonProperty(PropertyName = "migrationSolutionId")]
        public string MigrationSolutionId {get; set; }

        /// <summary>
        /// Gets or sets vMware to Azure provider type.
        /// </summary>
        [Newtonsoft.Json.JsonProperty(PropertyName = "vmwareToAzureProviderType")]
        public string VmwareToAzureProviderType {get; set; }
    }
}