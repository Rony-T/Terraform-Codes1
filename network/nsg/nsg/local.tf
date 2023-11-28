locals {
  nsg_rules = { for idx, security_rule in var.nsg_rules : security_rule.name => {
    idx : idx,
    security_rule : security_rule,
    }
  }
}