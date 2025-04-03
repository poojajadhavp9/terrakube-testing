resource "openstack_compute_instance_v2" "example_vm" {
  name        = "example-instance"
  image_name  = "cirros"
  flavor_name = "m1.tiny"
  network {
    name = "vnet"
  }
}

output "instance_ip" {
  value = openstack_compute_instance_v2.example_vm.access_ip_v4
}

