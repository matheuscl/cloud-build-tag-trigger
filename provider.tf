provider "google" {
  project = "apigee-tests-350816"
}

terraform {
	required_providers {
		google = {
	    version = "~> 4.24.0"
		}
  }
}
