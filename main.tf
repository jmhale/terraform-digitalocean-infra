terraform {
  backend "s3" {
    bucket     = "dogsec-tf-state"
    key        = "digitalocean/tf"
    region     = "us-east-1"
    encrypt    = "true"
    kms_key_id = "arn:aws:kms:us-east-1:251236465048:key/61373608-c64d-4f1c-8b71-bf4b35741b14"
    role_arn   = "arn:aws:iam::251236465048:role/admins"
  }
}

provider "digitalocean" {
  token = "${var.do_token}"
}

module "dnsproxy" {
  source    = "git@github.com:jmhale/terraform-digitalocean-dnsproxy.git"
  admin_ips = "${data.dns_a_record_set.my_ip.addrs}"
  user_ips  = "${data.dns_a_record_set.ludlow_ip.addrs}"
  ssh_keys  = ["7a:39:de:0c:a4:05:36:da:44:4c:ef:c0:06:01:73:ff"]
}
