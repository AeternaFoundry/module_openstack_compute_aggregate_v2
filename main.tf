resource "openstack_compute_aggregate_v2" "compute_aggregate_v2s" {
  for_each = var.compute_aggregate_v2s

  name     = each.value.name
  hosts    = each.value.hosts
  metadata = each.value.metadata
  region   = each.value.region
  zone     = each.value.zone

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

