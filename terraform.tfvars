x = {
  rg1 = {
    name     = "rg-prod"
    location = "eastus"
  }
   rg2 = {
    name     = "rg-dev"
    location = "eastus"
  }
}

y = {
  stg1 = {
    name                     = "ashishpstorage12"
    rgroup_name              = "rg-prod"
    location                 = "eastus"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
}