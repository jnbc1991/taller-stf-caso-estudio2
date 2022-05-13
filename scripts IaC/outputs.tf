output "name" {
  value  = google_container_cluster.default.name
}

output "id" {
  value  = google_container_cluster.default.id
}

output "endpoint" {
  value  = google_container_cluster.default.endpoint
}

output "project" {
  value  = google_container_cluster.default.project
}

output "description" {
  value  = google_container_cluster.default.description
}

output "name-pool" {
  value = google_container_node_pool.default.name
}

output "max-pod" {
  value = google_container_node_pool.default.max_pods_per_node
}