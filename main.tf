data "akamai_group" "npoojary" {
  group_name  = "Npoojary"
  contract_id = "1-1NC95D"
}

output "npoojary_group_id" {
  value = data.akamai_group.npoojary.id
}

// Get one AppSec configuration
data "akamai_appsec_configuration" "npoojary-test" {
  name = "npoojary-test"
}

output "my_appsec_config" {
  value = data.akamai_appsec_configuration.npoojary-test.production_version
}


//Get one Property Configuration
data "akamai_property" "npoojary-iontest" {
  name    = "npoojary-iontest"
  version = "93"
}

output "my_property" {
  value = data.akamai_property.npoojary-iontest.rule_format
}


