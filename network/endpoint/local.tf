locals {
  locals_pep_resourcegroup_name = lower(var.pep_resourcegroup_name)
  locals_pep_location           = var.pep_location
  locals_pep_tags = merge({ "Private Endpoint Name" = format("%s", var.pep_name) }, var.pep_tags)
   }
