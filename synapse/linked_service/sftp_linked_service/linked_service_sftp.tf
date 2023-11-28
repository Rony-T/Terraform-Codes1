resource "azurerm_synapse_linked_service" "sftp_linked_service" {
  name                = "sftp_linked_service"
  type                = "Sftp"
  linked_service_name = "sftp_linked_service"
  depends_on          = [azurerm_synapse_workspace.this]

  properties = jsonencode({
    host                 = var.sftp_host
    port                 = var.sftp_port
    userName             = var.sftp_userName
    password             = var.sftp_password
    authenticationType   = "Basic"
    enableSsl            = var.sftp_enableSsl
    hostKey              = var.sftp_hostKey
    privateKeyContent    = var.sftp_privateKeyContent
    passphrase           = var.sftp_passphrase
    skipHostKeyValidation= var.sftp_skipHostKeyValidation
    }
  )
}

