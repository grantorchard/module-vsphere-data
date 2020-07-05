variable clusters {
  type    = list(string)
  default = []
}

variable custom_attributes {
  type    = list(string)
  default = []
}

variable datacenter {
  type = string
}

variable datastores {
  type    = list(string)
  default = []
}

variable datastore_clusters {
  type    = list(string)
  default = []
}

variable disks {
  type = list(map(string))
  default = []
}

variable distributed_virtual_switches {
  type    = list(string)
  default = []
}

variable hosts {
  type    = list(string)
  default = []
}

variable networks {
  type    = list(string)
  default = []
}

variable resource_pools {
  type    = list(string)
  default = []
}

variable storage_policies {
  type    = list(string)
  default = []
}

variable tags {
  type    = list(map(string))
  default = []
}

variable tag_categories {
  type    = list(string)
  default = []
}

variable templates {
  type    = list(string)
  default = []
}
