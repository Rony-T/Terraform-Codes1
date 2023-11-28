resource "random_string" "string" {
  length      = 6
  min_upper   = 4
  min_lower   = 2
  min_numeric = 4
  special     = false
  upper       = false
  
}

resource "random_password" "password" {
  count = 2
  length = 16
  special = true
  override_special = "_%@"
}
