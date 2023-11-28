#---------------------------------------
# Metric Alert within Azure Monitor - Local Declarations
#---------------------------------------

locals {
  locals_alert_matric_name               = format("%s", lower(replace(var.alert_matric_name, "/[[:^alnum:]]/", "")))
  locals_alert_matric_resourcegroup_name = var.alert_matric_resourcegroup_name
  default_tags                          = {}
  locals_alert_matric_tags                        = merge({ "Action Group Email" = "${var.alert_matric_name}" }, var.alert_matric_tags, )
  
}


