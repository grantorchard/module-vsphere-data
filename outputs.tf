output clusters {
  value = [
    for k, v in data.vsphere_compute_cluster.this : {
      "name" = v.name,
      "id"   = v.id
    }
  ]
}

output custom_attributes {
  value = [
    for k,v in data.vsphere_custom_attribute.this: {
      "name" = v.name,
      "id" = v.id
    }
  ]
}

output datacenter {
  value = data.vsphere_datacenter.this.id
}

output datastores {
  value = [
    for k,v in data.vsphere_datastore.this: {
      "name" = v.name,
      "id" = v.id
    }
  ]
}

output datastore_clusters {
  value = [
    for k,v in data.vsphere_datastore_cluster.this: {
      "name" = v.name,
      "id" = v.id
    }
  ]
}

output distributed_virtual_switches {
  value = [
    for k,v in data.vsphere_distributed_virtual_switch.this: {
      "name" = v.name,
      "id" = v.id
    }
  ]
}

output hosts {
  value = [
    for k,v in data.vsphere_host.this: {
      "name" = v.name,
      "id" = v.id
    }
  ]
}

output networks {
  value = [
    for k,v in data.vsphere_network.this: {
      "name" = v.name,
      "id" = v.id
    }
  ]
}

output resource_pools {
  value = [
    for k,v in data.vsphere_resource_pool.this: {
      "name" = v.name,
      "id" = v.id
    }
  ]
}

output storage_policies {
  value = [
    for k,v in data.vsphere_storage_policy.this: {
      "name" = v.name,
      "id" = v.id
    }
  ]
}

output tags {
  value = [
    for k,v in data.vsphere_tag.this: {
      "name" = v.name,
      "id" = v.id
    }
  ]
}

output tag_categories {
  value = [
    for k,v in data.vsphere_tag_category.this: {
      "name" = v.name,
      "id" = v.id
    }
  ]
}

output templates {
  value = [
    for k,v in data.vsphere_virtual_machine.this: {
      "name" = v.name,
      "id" = v.id
    }
  ]
}