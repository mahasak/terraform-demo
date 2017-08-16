variable "count" {
  default = 1
}

resource "openstack_compute_instance_v2" "sinisters" {
  count = "${var.count}"
  name = "SIN-${random_id.sinister.hex}"
  image_name = "Windows2012R2-x64SE-EN"
  flavor_name = "nc1.C"
  availability_zone = "th-central-a"
  key_pair = "${var.openstack_keypair}"
  security_groups = ["default"]
  network {
    name = "${var.tenant_network}"
  }
  user_data = "${file("CloudInit/Install.ps1")}"
}

resource "random_id" "sinister" {
  byte_length = 8
}

#terraform {
#  backend "consul" {
#    address = "bigbears.local:8500"
#    path    = "sinisters/state"
#  }
#}
