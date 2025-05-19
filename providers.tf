terraform {
  required_providers {
    akamai = {
      source  = "akamai/akamai"
      version = "7.1.0"
    }
  }
  required_version = "~> 1.1"
}

provider "akamai" {
  edgerc         = "~/.edgerc"
  config_section = "akamai_ps"
}
