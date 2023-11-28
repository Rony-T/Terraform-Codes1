#-------------------------------
# Local Declarations
#-------------------------------
locals {
  locals_ca_name      = lower (var.ca_name)
  locals_ca_tags = merge({ "Cognitive Services Account Tag" = lower (var.ca_name) }, var.ca_tags)
}
