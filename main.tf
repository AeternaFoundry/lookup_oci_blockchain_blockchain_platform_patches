data "oci_blockchain_blockchain_platform_patches" "blockchain_blockchain_platform_patches_lookup" {
  for_each = var.blockchain_blockchain_platform_patches_lookup

  blockchain_platform_id = each.value.blockchain_platform_id

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

