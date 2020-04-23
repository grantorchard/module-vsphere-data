data vsphere_compute_cluster "this" {
  for_each      = toset(var.clusters)
  name          = each.value
  datacenter_id = data.vsphere_datacenter.this.id
}

data vsphere_custom_attribute "this" {
  for_each = toset(var.custom_attributes)
  name     = each.value
}

data vsphere_datacenter "this" {
  name = var.datacenter
}

data vsphere_datastore "this" {
  for_each      = toset(var.datastores)
  name          = each.value
  datacenter_id = data.vsphere_datacenter.this.id
}

data vsphere_datastore_cluster "this" {
  for_each      = toset(var.datastore_clusters)
  name          = each.value
  datacenter_id = data.vsphere_datacenter.this.id
}

data vsphere_distributed_virtual_switch "this" {
  for_each      = toset(var.distributed_virtual_switches)
  name          = each.value
  datacenter_id = data.vsphere_datacenter.this.id
}

data vsphere_host "this" {
  for_each      = toset(var.hosts)
  name          = each.value
  datacenter_id = data.vsphere_datacenter.this.id
}

data vsphere_network "this" {
  for_each      = toset(var.networks)
  name          = each.value
  datacenter_id = data.vsphere_datacenter.this.id
}

data vsphere_resource_pool "this" {
  for_each      = toset(var.resource_pools)
  name          = each.value
  datacenter_id = data.vsphere_datacenter.this.id
}

data vsphere_storage_policy "this" {
  for_each = toset(var.storage_policies)
  name     = each.value
}

data vsphere_tag "this" {
  for_each = toset(var.tags)
  name     = each.value["name"]
  category_id = each.value["category_id"]
}

data vsphere_tag_category "this" {
  for_each = toset(var.tag_categories)
  name     = each.value
}

data vsphere_virtual_machine "this" {
  for_each      = toset(var.templates)
  name          = each.value
  datacenter_id = data.vsphere_datacenter.this.id
}

data vsphere_vmfs_disks "this" {
  for_each = toset(var.disks)
  host_system_id = each.value["host_id"]
  rescan         = true
  filter         = each.value["filter"]
}