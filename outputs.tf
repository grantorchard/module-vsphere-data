output datacenter_id {
  value = data.vsphere_datacenter.this.id
}

output cluster_ids {
  value = [
    for k, v in data.vsphere_compute_cluster.this: {
      "name" = v.name,
      "id" = v.id
    }
  ]
}

output network_ids {
  value = [
    for k, v in data.vsphere_network.this: {
      "name" = v.name,
      "id" = v.id
    }
  ]
}