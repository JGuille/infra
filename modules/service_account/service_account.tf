resource "google_service_account" "sa" {
  account_id   = var.sa_account_id
  display_name = var.sa_display_name
}
output "google_service_account_email" {
  value = google_service_account.sa.email
}