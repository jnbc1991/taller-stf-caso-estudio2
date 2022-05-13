/*resource "google_service_account" "default" {
  account_id   = "service_account_id"
  display_name = "Service Account"
}*/

provider "google"{
  credentials = file("./taller-stefanini-e4b9f4f59d3a.json")
}

resource "google_container_cluster" "default" {
  name         = var.name
  project      = var.project
  description      = "GKE Caso estudio"
  //machine_type = var.machine_type
  location         = var.location

  remove_default_node_pool = true
  initial_node_count       = var.initial_node_count
}

resource "google_container_node_pool" "default" {
  name       = var.name-pool
  location   = var.location
  project      = var.project
  cluster    = google_container_cluster.default.name
  node_count = var.initial_node_count

  node_config {
    preemptible  = true
    machine_type = var.machine_type

    //metadata = {
      //disabl
    //}
    
    oauth_scopes    = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }
}