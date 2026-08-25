resource "azurerm_resource_group" "rgname" {
    for_each = var.x
    name = each.value.name
    location = each.value.location
}

resource "azurerm_storage_account" "stname" {
    for_each = var.y
    depends_on = [ azurerm_resource_group.rgname ]
  name                     = each.value.name
  resource_group_name     = each.value.rgroup_name
  location                 = each.value.location
  account_tier             = each.value.account_tier
  account_replication_type = each.value.account_replication_type
}
