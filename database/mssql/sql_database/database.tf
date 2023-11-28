#--------------------------------------------------------------------
# SQL Database creation
#--------------------------------------------------------------------

resource "azurerm_mssql_database" "mssql_db" {
  name                        = var.mssql_db_name
  server_id                   = var.mssql_server_id
  collation                   = var.mssql_db_collation
  license_type                = var.mssql_db_license_type //LicenseIncluded and BasePrice.
  max_size_gb                 = var.mssql_db_max_size_gb
  read_scale                  = var.mssql_db_read_scale
  sku_name                    = var.mssql_db_sku_name
  zone_redundant              = var.mssql_db_zone_redundant
  auto_pause_delay_in_minutes = var.mssql_db_auto_pause_delay_in_minutes
  create_mode                 = var.mssql_db_create_mode
  creation_source_database_id = var.mssql_db_creation_source_database_id
  elastic_pool_id             = var.mssql_db_elastic_pool_id
  min_capacity                = var.mssql_db_min_capacity
  restore_point_in_time       = var.mssql_db_restore_point_in_time
  read_replica_count          = var.mssql_db_read_replica_count
  sample_name                 = var.mssql_db_sample_name //(Optional) Specifies the name of the sample schema to apply when creating this database. Possible value is AdventureWorksLT.
  tags                        = merge({ "MSSQL Database Name" = format("%s-primary", var.mssql_db_name) }, var.mssql_db_tags, )

  short_term_retention_policy {
    retention_days = var.mssql_db_short_retentiondays
  }

  long_term_retention_policy {
    weekly_retention  = var.mssql_db_long_weekly_retention
    monthly_retention = var.mssql_db_long_monthly_retention
    yearly_retention  = var.mssql_db_long_yearly_retention
    week_of_year      = var.mssql_db_long_week_of_year
  }
}
