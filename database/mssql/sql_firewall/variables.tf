#-------------------------------------------------------------
# SQL servers Firewall Rule - Variables
#-------------------------------------------------------------

variable "sql_server_id" {
  description = "Sql server id"

}

variable "sql_fw_rules_condition" {
  description = "Manage an Azure SQL Firewall Rule"
  default     = true
}

variable "sql_fw_rules" {
  description = "Range of IP addresses to allow firewall connections."
  type = list(object({
    name             = string
    start_ip_address = string
    end_ip_address   = string
  }))
  default = []
}