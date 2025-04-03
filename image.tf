resource "openstack_images_image_v2" "rancheros" {
  name             = "cirros"
  image_source_url = "https://download.cirros-cloud.net/0.6.0/cirros-0.6.0-x86_64-disk.img"
  container_format = "bare"
  disk_format      = "qcow2"
}
