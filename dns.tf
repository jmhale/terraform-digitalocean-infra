provider "dns" {}

data "dns_a_record_set" "my_ip" {
  host = "jhale.no-ip.biz"
}

data "dns_a_record_set" "ludlow_ip" {
  host = "hale-ma.ddns.net"
}
