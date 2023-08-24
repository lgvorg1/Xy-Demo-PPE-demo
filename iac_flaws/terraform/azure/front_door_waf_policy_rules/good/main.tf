# pass

resource "azurerm_frontdoor_firewall_policy" "dsr_1_1_default" {
  name                = "example"
  resource_group_name = "example"

  managed_rule {
    type    = "Microsoft_DefaultRuleSet"
    version = "1.1"
  }
}

resource "azurerm_frontdoor_firewall_policy" "dsr_1_0_default" {
  name                = "example"
  resource_group_name = "example"

  managed_rule {
    type    = "DefaultRuleSet"
    version = "1.0"
  }
}

resource "azurerm_frontdoor_firewall_policy" "dsr_1_1_enabled_block" {
  name                = "example"
  resource_group_name = "example"

  managed_rule {
    type    = "Microsoft_DefaultRuleSet"
    version = "1.1"

    override {
      rule_group_name = "JAVA"

      rule {
        action  = "Block"
        enabled = true
        rule_id = "944240"
      }
    }
  }
}

resource "azurerm_frontdoor_firewall_policy" "dsr_1_1_enabled_redirect" {
  name                = "example"
  resource_group_name = "example"

  managed_rule {
    type    = "Microsoft_DefaultRuleSet"
    version = "1.1"

    override {
      rule_group_name = "JAVA"

      rule {
        action  = "Redirect"
        enabled = true
        rule_id = "944240"
      }
    }
  }
}