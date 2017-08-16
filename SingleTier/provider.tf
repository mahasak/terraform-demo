provider "openstack" {
  user_name = "${var.openstack_user_name}"
  password  = "${var.openstack_password}"
  auth_url  = "${var.openstack_auth_url}"
  domain_id = "dd07d7ea40db4146908d6d4d44b2c5fb"
}