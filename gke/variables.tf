variable "gcp_credentials" {
    description = "location of service account of gcp"
    default = "key.json"
}

variable "gcp_project_id" {
    description = "gcp project id"
    default = "static-ceiling-361209"
}

variable "gcp_region" {
    description = "gcp region"
    default = "us-west1"
}

variable "gke_cluster_name" {
    description = "gke cluster name"
    default = "terraform-cluster"
}

variable "gcp_zones" {
    description = "zone of the cluster"
    type = list(string)
    default = ["us-west1-a"]
}

variable "gke_default_nodepool_name" {
    description = "name of the node"
    default   = "node-pool"
}

variable "gke_service_account" {
    description = "service account for the gke"
    default = "gks-705@static-ceiling-361209.iam.gserviceaccount.com"
}