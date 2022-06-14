resource "google_cloudbuild_trigger" "cloud-build-tag-trigger-api-github" {
  name = "cloud-build-tag-trigger-api-github"

  github { // Do not forget to connect the repo in your GCP Project before running
    owner = "matheuscl"
    name = "cloud-build-tag-trigger"
    push {
      tag = ".*"
    }
  }

  included_files = ["api/**"]

  filename = "api/cloudbuild.yaml"
}

resource "google_cloudbuild_trigger" "cloud-build-tag-trigger-app-github" {
  name = "cloud-build-tag-trigger-app-github"

  github { // Do not forget to connect the repo in your GCP Project before running
    owner = "matheuscl"
    name = "cloud-build-tag-trigger"
    push {
      tag = ".*"
    }
  }

  included_files = ["app/**"]

  filename = "app/cloudbuild.yaml"
}
