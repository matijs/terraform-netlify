# DNS Zone
resource "netlify_dns_zone" "matijsbrinkhuis_nl" {
  name = "matijsbrinkhuis.nl"
}

# DNS Records
resource "netlify_dns_record" "matijsbrinkhuis_nl_mx_1" {
  zone_id  = netlify_dns_zone.matijsbrinkhuis_nl.id

  hostname = "matijsbrinkhuis.nl"
  type     = "MX"
  ttl      = 3600
  priority = 10
  value    = "in1-smtp.messagingengine.com."
}

resource "netlify_dns_record" "matijsbrinkhuis_nl_mx_2" {
  zone_id  = netlify_dns_zone.matijsbrinkhuis_nl.id

  hostname = "matijsbrinkhuis.nl"
  type     = "MX"
  ttl      = 3600
  priority = 20
  value    = "in2-smtp.messagingengine.com."
}

resource "netlify_dns_record" "matijsbrinkhuis_nl_txt_1" {
  zone_id  = netlify_dns_zone.matijsbrinkhuis_nl.id

  hostname = "matijsbrinkhuis.nl"
  type     = "TXT"
  ttl      = 3600
  value    = "v=spf1 include:spf.messagingengine.com ?all"
}

resource "netlify_dns_record" "matijsbrinkhuis_nl_cname_1" {
  zone_id  = netlify_dns_zone.matijsbrinkhuis_nl.id

  hostname = "fm1._domainkey.matijsbrinkhuis.nl"
  type     = "CNAME"
  ttl      = 3600
  value    = "fm1.matijsbrinkhuis.nl.dkim.fmhosted.com."
}

resource "netlify_dns_record" "matijsbrinkhuis_nl_cname_2" {
  zone_id  = netlify_dns_zone.matijsbrinkhuis_nl.id

  hostname = "fm2._domainkey.matijsbrinkhuis.nl"
  type     = "CNAME"
  ttl      = 3600
  value    = "fm2.matijsbrinkhuis.nl.dkim.fmhosted.com."
}

resource "netlify_dns_record" "matijsbrinkhuis_nl_cname_3" {
  zone_id  = netlify_dns_zone.matijsbrinkhuis_nl.id

  hostname = "fm3._domainkey.matijsbrinkhuis.nl"
  type     = "CNAME"
  ttl      = 3600
  value    = "fm3.matijsbrinkhuis.nl.dkim.fmhosted.com."
}

#resource "netlify_dns_record" "matijsbrinkhuis_nl_netlify_1" {
#  zone_id  = netlify_dns_zone.matijsbrinkhuis_nl.id
#
#  hostname = "matijsbrinkhuis.nl"
#  type     = "NETLIFY"
#  ttl      = 3600
#  value    = "matijs.netlify.app"
#}

#resource "netlify_dns_record" "matijsbrinkhuis_nl_netlifyv6_1" {
#  zone_id  = netlify_dns_zone.matijsbrinkhuis_nl.id
#
#  hostname = "matijsbrinkhuis.nl"
#  type     = "NETLIFYv6"
#  ttl      = 3600
#  value    = "matijs.netlify.app"
#}

#resource "netlify_dns_record" "matijsbrinkhuis_nl_netlify_2" {
#  zone_id  = netlify_dns_zone.matijsbrinkhuis_nl.id
#
#  hostname = "www.matijsbrinkhuis.nl"
#  type     = "NETLIFY"
#  ttl      = 3600
#  value    = "matijs.netlify.app"
#}

#resource "netlify_dns_record" "matijsbrinkhuis_nl_netlifyv6_2" {
#  zone_id  = netlify_dns_zone.matijsbrinkhuis_nl.id
#
#  hostname = "www.matijsbrinkhuis.nl"
#  type     = "NETLIFYv6"
#  ttl      = 3600
#  value    = "matijs.netlify.app"
#}

