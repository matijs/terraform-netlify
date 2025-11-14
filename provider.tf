terraform {
  required_version = ">= 1.0"

  cloud {
    organization = "matijs"

    workspaces {
      name = "Netlify"
    }
  }

  required_providers {
    netlify = {
      source  = "netlify/netlify"
      version = "0.3.2"
    }
  }
}

provider "netlify" {
  token             = var.NETLIFY_API_TOKEN
  default_team_slug = "pers"
}
