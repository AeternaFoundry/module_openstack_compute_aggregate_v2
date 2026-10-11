output "compute_aggregate_v2s_id" {
  description = "Map of id values across all compute_aggregate_v2s, keyed the same as var.compute_aggregate_v2s except keys with no id are omitted"
  value       = { for k, v in openstack_compute_aggregate_v2.compute_aggregate_v2s : k => v.id if v.id != null && length(v.id) > 0 }
}
output "compute_aggregate_v2s_hosts" {
  description = "Map of hosts values across all compute_aggregate_v2s, keyed the same as var.compute_aggregate_v2s except keys with no hosts are omitted"
  value       = { for k, v in openstack_compute_aggregate_v2.compute_aggregate_v2s : k => v.hosts if v.hosts != null && length(v.hosts) > 0 }
}
output "compute_aggregate_v2s_metadata" {
  description = "Map of metadata values across all compute_aggregate_v2s, keyed the same as var.compute_aggregate_v2s except keys with no metadata are omitted"
  value       = { for k, v in openstack_compute_aggregate_v2.compute_aggregate_v2s : k => v.metadata if v.metadata != null && length(v.metadata) > 0 }
}
output "compute_aggregate_v2s_name" {
  description = "Map of name values across all compute_aggregate_v2s, keyed the same as var.compute_aggregate_v2s except keys with no name are omitted"
  value       = { for k, v in openstack_compute_aggregate_v2.compute_aggregate_v2s : k => v.name if v.name != null && length(v.name) > 0 }
}
output "compute_aggregate_v2s_region" {
  description = "Map of region values across all compute_aggregate_v2s, keyed the same as var.compute_aggregate_v2s except keys with no region are omitted"
  value       = { for k, v in openstack_compute_aggregate_v2.compute_aggregate_v2s : k => v.region if v.region != null && length(v.region) > 0 }
}
output "compute_aggregate_v2s_zone" {
  description = "Map of zone values across all compute_aggregate_v2s, keyed the same as var.compute_aggregate_v2s except keys with no zone are omitted"
  value       = { for k, v in openstack_compute_aggregate_v2.compute_aggregate_v2s : k => v.zone if v.zone != null && length(v.zone) > 0 }
}

