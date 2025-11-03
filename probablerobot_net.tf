# DNS Zone
resource "netlify_dns_zone" "probablerobot_net" {
  name = "probablerobot.net"

  lifecycle {
    prevent_destroy = true
  }
}
