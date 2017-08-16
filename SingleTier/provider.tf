provider "openstack" {
  version = "~> 0.2"
  user_name = "${var.openstack_user_name}"
  password  = "${var.openstack_password}"
  auth_url  = "${var.openstack_auth_url}"
  domain_id = "${var.openstack_domain_id}"
}

provider "random" {
  version = "~> 0.1"
}