variable "openstack_user_name" {
    description = "The username for the Tenant."
    default  = "mahasak"
}

variable "openstack_tenant_name" {
    description = "The name of the Tenant."
    default  = "mahasak"
}

variable "openstack_password" {
    description = "The password for the Tenant."
    default  = "]^dglnvg-kw,j0y[,nv-;k"
}

variable "openstack_auth_url" {
    description = "The endpoint url to connect to OpenStack."
    default  = "https://identity-service.nipa.cloud/v3"
}

variable "openstack_keypair" {
    description = "The keypair to be used."
    default  = "FUBAR"
}

variable "tenant_network" {
    description = "The network to be used."
    default  = "aio"
}
