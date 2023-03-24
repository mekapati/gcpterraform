variable "project" {
    description = "Project ID"
    default    = "static-ceiling-361209"
}

variable "zone" {
    description = "zone"
    default = "us-central1-c"
}

variable "machine_type" {
    description = "machine type"
    default = "f1-micro"
}

variable "image" {
    description  = "image for the instances"
    default    = "debian-cloud/debian-11"
}


