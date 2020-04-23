variable clusters {
  type    = list
  default = []
}

variable custom_attributes {
  type    = list
  default = []
}

variable datacenter {
  type = string
}

variable datastores {
  type    = list
  default = []
}

variable datastore_clusters {
  type    = list
  default = []
}

variable disks {
  type = list(map(string))
  default = []
}

variable distributed_virtual_switches {
  type    = list
  default = []
}

variable hosts {
  type    = list
  default = []
}

variable networks {
  type    = list
  default = []
}

variable resource_pools {
  type    = list
  default = []
}

variable storage_policies {
  type    = list
  default = []
}

variable tags {
  type    = list(map(string))
  default = []
}

variable tag_categories {
  type    = list
  default = []
}

variable templates {
  type    = list
  default = []
}
