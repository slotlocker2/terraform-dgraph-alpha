variable "prefix" {
  type = string
  default = "ha"
}

variable "namespace" {
  type = string
  default = "dgraph"
}

variable "initialize_data" {
  type = bool
  default = false
}

variable image {
  type = string
  default = "dgraph/dgraph"
}

variable image_version {
  type = string
  default = "latest"
}

variable image_pull_policy { 
  type = string
  default = "IfNotPresent"
}

variable http_port {
  type = number
  default = 8080
}

variable grpc_port {
  type = number
  default = 9080
}

variable grpc_int_port {
  type = number
  default = 7080
}

variable command {
  type = list
  default = ["bash", "/cmd/dgraph_alpha.sh"]
}

variable init_command {
  type = list
  default = ["bash", "/cmd/dgraph_init_alpha.sh"]
}

variable persistence_mount_path {
  type = string
  default = "/dgraph"
}


# Probes
variable "liveness_probe_path" {
  type = string
  default = "/health?live=1"
}

variable "liveness_probe_initial_delay_seconds" {
  type = number
  default = 15
}

variable "liveness_probe_timeout_seconds" {
  type = number
  default = 5
}

variable "liveness_period_seconds" {
  type = number
  default = 10
}

variable "liveness_probe_success_threshold" {
  type = number
  default = 1
}

variable "liveness_probe_failure_threshold" {
  type = number
  default = 6
}

variable "readiness_probe_path" {
  type = string
  default = "/health"
}

variable "readiness_probe_initial_delay_seconds" {
  type = number
  default = 15
}

variable "readiness_probe_timeout_seconds" {
  type = number
  default = 5
}

variable "readiness_period_seconds" {
  type = number
  default = 10
}

variable "readiness_probe_success_threshold" {
  type = number
  default = 1
}

variable "readiness_probe_failure_threshold" {
  type = number
  default = 6
}


variable termination_grace_period_seconds {
  type = number
  default = 600
}

# Zero
variable zero_address {
  type = string
  description = "The address of a Zero pod"
}


variable "persistence" {
  type = bool
  default = true
}

variable "pod_anti_affinity" {
  type = bool
  default = false
}

variable "storage_size" {
  type = number
  default = "5"
  description = "The size in GiB"
}

variable "replicas" {
  type = number
  default = 3
  description = "The count of Aplha pods to run"
}

variable "lru" {
  type = number
  default = 1025
  description = "The LRU cache size in MiB"
}
