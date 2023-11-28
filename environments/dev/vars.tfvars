#Common vars
subscription_id = "5a6df672-d974-433f-b8e5-4fc044425c2f"
azure_devops_orica_bac_object_id = ""
#azure_devops_orica_bac_object_id = "f52d5d7e-e640-4d1e-84cf-867db0e19c80"
Environment = "dev"


#VNET info for PROD Environment for PAAS
prod_vnet_name  = "USW2-IT-BAC-DEV-VNET" 
prod_resource_group_name = "USW2-IT-BAC-DEV-NETWORK-RG"
prod_subnet_name = "Presentation-Tier"

#VNET info for SQL Server
ex_vnet_name               = "USW2-IT-BAC-DEV-VNET"
ex_vnet_subnet_name        = "Database-Tier"
ex_vnet_resourcegroup_name = "USW2-IT-BAC-DEV-NETWORK-RG"

location = "westus2"

tags = {
  Environment = "dev"
  Project     = "BAC"
}

#ResourceGroup vars
rg_deploy_condition = "true"
rg_name = "usw2-it-bac-dev-rg01"

# Create KeyVault
kv_name="dev-bac-kv-01"
kv_sku="standard"

# Action Group within Azure Monitor - Deployment
actiongroup_name               = "bac_dev_email_alert"
actiongroup_short_name         = "email_alert"
actiongroup_emails_list = {
  "Steven Benedict" = "steven.benedict@orica.com",
  "krishna kumar"   = "krishna.kumar2@orica.com",
  "sriram.mani"     = "sriram.mani2@orica.com"
}

# Internal Storage Account Deployment
sa_name = "usw2itbacdevsa01"
sa_account_kind = "StorageV2"
sa_access_tier = "Hot"
sa_min_tls_version = "TLS1_2"
#sa_identity_ids = null
sa_sku_name = "Standard_LRS"

#External Storage Account
sa_name_1 = "usw2itbacdevrga01"

# Create Storage Encryption Scope
sa_encryption_scope_name = "usw2itbacdevencrypt01"

# Storage Container Properties
container_list = [
    //Storage Container name, access type one of [blob container private]
    { name = "raw", access_type = "private" },
    { name = "curated", access_type = "private" },
    { name = "archive", access_type = "private" }

  ]

container_list_1 = [ 
    { name = "landing", access_type = "container" }
]

# Create Azure Synapse
sy_name               = "usw2-it-bac-dev-syn01" //name must start and end with a letter or number, can contain only lowercase letters, numbers or hyphens
sy_sql_admin_name         = "sybacadmin01" //"Azure Synapse sql administrator login Name. name may only contain alphanumeric characters and dashes"
sy_workspace_admin01_name = "sywsbacadmin01"
sy_identity = "SystemAssigned"
sy_aad_group_login = "zz_AAD_Azure_BlastAnalyticsCoE_Dev_Applications_Admins"
sy_aad_group_object_id = "3a950ad5-463c-4d6d-a55f-31053e995995"

# Deploy Azure Synapse Spark Pool



# SQL Server Admin secret name
kv_secret_name = "usw2-it-bac-dev-sqladminstrator1-password-01"

#VM Secret Name
kv_secret_name1="usyuv602-bacadminstrator-01"
vm_name="usyuv602"

#VM2 Secret Name
kv_secret_name2="usyuv603-bacadminstrator-01"
vm_name1="usyuv603"

# SQL Server Create
sql_name                  = "usw2itbacdevsql01" //name of the SQL Server on which to create the database
sql_version               = "12.0"
sql_admin_login           = "bacsqladmin01"
#sql_identity              = true
sql_ad_group_display_name = "zz_AAD_Azure_BlastAnalyticsCoE_Dev_Applications_Admins"
sql_ad_group_object_id = "3a950ad5-463c-4d6d-a55f-31053e995995"    

# SQL Server EndPoint
pep_subresource_names = "sqlserver"

# MS SQL Database Variables
mssql_db_name                        = "bac-dwh-dev-metastore01"                           //(Required) The name of the Ms SQL Database. Changing this forces a new resource to be created
mssql_db_collation                   = "SQL_Latin1_General_CP1_CI_AS"                  //(Optional) The name of the collation. Applies only if create_mode is Default. Azure default is SQL_LATIN1_GENERAL_CP1_CI_AS. Changing this forces a new resource to be created."
mssql_db_create_mode                 = "Default"                                       //(Optional) Specifies how to create the database. Must be either Default to create a new database or PointInTimeRestore to restore from a snapshot. Defaults to Default."
mssql_db_creation_source_database_id = null                                            //(Optional) The id of the source database to be referred to create the new database. This should only be used for databases with create_mode values that use another database as reference. Changing this forces a new resource to be created
mssql_db_elastic_pool_id             = null                                            //(Optional) The id of the elastic database pool
mssql_db_license_type                = "LicenseIncluded"                               //(Optional) Specifies the license type applied to this database. Possible values are LicenseIncluded and BasePrice
mssql_db_restore_point_in_time       = null                                            //(Optional) The point in time for the restore. Only applies if create_mode is PointInTimeRestore e.g. 2013-11-08T22:00:40Z
mssql_db_read_scale                  = false                                           //(Optional) Read-only connections will be redirected to a high-available replica. Please see Use read-only replicas to load-balance read-only query workloads
mssql_db_sample_name                 = "AdventureWorksLT"                              //(Optional) Specifies the name of the sample schema to apply when creating this database. Possible value is AdventureWorksLT
mssql_db_sku_name                    = "GP_Gen5_2"                                     //(Optional) Specifies the name of the sku used by the database. Only changing this from tier Hyperscale to another tier will force a new resource to be created. For example, GP_S_Gen5_2,HS_Gen4_1,BC_Gen5_2, ElasticPool, Basic,S0, P2 ,DW100c, DS100
mssql_db_zone_redundant              = false                                           //(Optional) Whether or not this database is zone redundant, which means the replicas of this database will be spread across multiple availability zones. This property is only settable for Premium and Business Critical databases 
mssql_db_long_weekly_retention       = "P1M"                                           //The weekly retention policy for an LTR backup. (1 to 520 weeks eg. P1Y, P1M, P1W, P7D)
mssql_db_long_monthly_retention      = null                                            //The monthly retention policy for an LTR backup. (1 to 120 weeks eg. P1Y, P1M, P4W, P30D)
mssql_db_long_yearly_retention       = null

# MS SQL Database - Matric Alert    
alert_matric_name                 = "bac-dwh-dev-metastore01-cpu"
alert_matric_frequency            = "PT1M"
alert_matric_window_size          = "PT5M"
alert_matric_everity              = "3"                                  //Possible values are 0, 1, 2, 3 and 4. Defaults to 3


#Logic App Settings
logic_app_workflow_name = "usw2_bac_dev_email_alert"
logic_app_trigger_name = "email_alert"



#Log Analytics Workspace Service
log_deploy_condition = "false"
log_name = "usw2-it-bac-dev-log"
log_sku = "Standard"
log_retention = 30

