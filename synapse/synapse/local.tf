locals {
  sy_firewall_rules = { for idx, security_rule in var.sy_firewall : security_rule.name => {
    idx : idx,
    security_rule : security_rule,
    }
  }
}