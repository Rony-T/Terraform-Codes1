#-------------------------------
# Local Declarations
#-------------------------------

locals {
  locals_resourcegroup_name = lower(var.adf_resourcegroup_name)
  locals_location           = var.adf_location
  locals_adf_name           = "${lower(var.adf_name)}-adf01"
 
  //substr(format(lower(replace("sta%s%s", var.adf_name, "/[[:^alnum:]]/", "")), random_string.unique.result), 0, 24)

}

