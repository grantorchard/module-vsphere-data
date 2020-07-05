# vSphere Data Terraform Module
Terraform module that discovers vSphere resources to be used for subsequent provisioning operations.

Supports the following [vSphere Data Sources](https://registry.terraform.io/providers/hashicorp/vsphere/latest/docs):
* Datacenter
* Compute Cluster
* Resource Pool
* Host
* Datastore Cluster
* Datastore
* Storage Policy
* Distributed Virtual Switch
* Network (nee Port Group)
* Tag Category
* Tag
* Custom Attribute
* Virtual Machine
* VMFS Disk

## Usage
```
module sydney_datacenter {
  source = "github.com/grantorchard/terraform-vsphere-module-data"

  datacenter = "Sydney"
  cluster    = "Production"
}
```

## Notes
This module makes use of "for_each" as a looping mechanism rather than count, as a lookup via the key name seems like a more realistic usage pattern than using the index of a list as you would for "count".

