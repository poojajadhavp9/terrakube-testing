resource "openstack_networking_network_v2" "main" {
  name           = "vnet"
  description    = "Main network for general purpose."
  admin_state_up = "true"
}

resource "openstack_networking_subnet_v2" "main" {
  name        = "main"
  description = "Main network subnet for general purpose."
  network_id  = openstack_networking_network_v2.main.id
  cidr        = 10.10.10.0/24
  ip_version  = 4
}
