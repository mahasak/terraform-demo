variable "openstack_user_name" {
    description = "The username for the Tenant."
    default  = "fill_me"
}

variable "openstack_tenant_name" {
    description = "The name of the Tenant."
    default  = "fill_me"
}

variable "openstack_password" {
    description = "The password for the Tenant."
    default  = "fill_me"
}

variable "openstack_auth_url" {
    description = "The endpoint url to connect to OpenStack."
    default  = "fill_me"
}

variable "openstack_keypair" {
    description = "The keypair to be used."
    default  = "fill_me"
}

variable "tenant_network" {
    description = "The network to be used."
    default  = "fill_me"
}

variable "openstack_domain_id" {
    description = "The network to be used."
    default  = "fill_me"
}
