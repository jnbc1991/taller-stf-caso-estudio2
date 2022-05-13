variable "name" {
  default     = "taller-stf-2"
}

variable machine_type{
    default = "e2-micro"
}

variable "project"{
  default = "taller-stefanini"
}

variable "name-pool"{
  default = "gke-pool1"
}

variable "location"{
  default = "us-central1"
}

variable "initial_node_count"{
  default = 1
}