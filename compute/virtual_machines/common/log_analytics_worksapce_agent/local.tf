#----------------------------------------------------------------------------
# Virtual Machine Windows Log Analytics Worksapce Agent - Local Declarations
#----------------------------------------------------------------------------

locals {
  locals_law_agent_extension_name = lower("${var.law_agent_extension_name}")
  default_tags                    = {}
  locals_law_agent_extension_tags  = merge({ "Log Analytics Worksapce Agent" = local.locals_law_agent_extension_name}, var.law_agent_extension_tags, )

}
