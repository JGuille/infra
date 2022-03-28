terraform {
  backend "gcs" {
    bucket = "telus_task"
    prefix = "terraform/state"
  }
}