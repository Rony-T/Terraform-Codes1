#---------------------------------------
# Action Group within Azure Monitor - Local Declarations
#---------------------------------------

locals {
  locals_actiongroup_name               = format("%s", lower(replace(var.actiongroup_name, "/[[:^alnum:]]/", "")))
  locals_actiongroup_resourcegroup_name = var.actiongroup_resourcegroup_name
  default_tags                          = {}
  locals_actiongroup_tags                        = merge({ "Action Group Email" = "${var.actiongroup_name}" }, var.actiongroup_tags, )
  
}


