#-------------------------------
# Local Declarations
#-------------------------------
locals {
  locals_sql_name     = substr(format("%s%s", lower(replace(var.sql_name, "/[[:^alnum:]]/", "")), random_string.unique.result), 0, 24)
  locals_default_tags = {}
  locals_sql_tags     = merge({ "MS SQL Server" = local.locals_sql_name }, var.sql_tags, )
}
