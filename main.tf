data vsphere_datacenter "this" {
  name = var.datacenter
}

data vsphere_compute_cluster "this" {
  for_each      = toset(var.clusters)
  name          = each.value
  datacenter_id = data.vsphere_datacenter.this.id
}

data vsphere_datastore "this" {
  for_each = toset(var.datastores)
  name          = each.value
  datacenter_id = data.vsphere_datacenter.this.id
}

data vsphere_datastore_cluster "this" {
  for_each = toset(var.datastore_clusters)
  name          = each.value
  datacenter_id = data.vsphere_datacenter.this.id
}


data vsphere_network "this" {
  for_each = toset(var.networks)
  name          = each.value
  datacenter_id = data.vsphere_datacenter.this.id
}

data vsphere_virtual_machine "template" {
  for_each = toset(var.templates)
  name          = each.value
  datacenter_id = data.vsphere_datacenter.this.id
}