# DNS Zone
resource "netlify_dns_zone" "matijsbrinkhuis_com" {
  name = "matijsbrinkhuis.com"

  lifecycle {
    prevent_destroy = true
  }
}
