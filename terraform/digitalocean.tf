data "digitalocean_ssh_key" "ssh_key_1" {
  name = var.do_ssh_key_name
}

resource "digitalocean_droplet" "droplets" {
  count    = 2
  image    = "docker-20-04"
  name     = "web-${count.index}"
  region   = "ams3"
  size     = "s-1vcpu-1gb"
  ssh_keys = [data.digitalocean_ssh_key.ssh_key_1.fingerprint]
}

resource "digitalocean_certificate" "certificate_1" {
  name    = "certificate-1"
  type    = "lets_encrypt"
  domains = [digitalocean_domain.domain_1.name]
}

resource "digitalocean_loadbalancer" "loadbalancer_1" {
  name   = "loadbalancer-1"
  region = "ams3"
  forwarding_rule {
    entry_protocol   = "https"
    entry_port       = 443
    target_protocol  = "http"
    target_port      = 3000
    certificate_name = digitalocean_certificate.certificate_1.name
  }
  forwarding_rule {
    entry_protocol  = "http"
    entry_port      = 80
    target_protocol = "http"
    target_port     = 3000
  }
  healthcheck {
    port     = 3000
    protocol = "http"
    path     = "/"
  }
  sticky_sessions {
    type               = "cookies"
    cookie_name        = "cookies-1"
    cookie_ttl_seconds = 300
  }
  redirect_http_to_https           = true
  disable_lets_encrypt_dns_records = true
  droplet_ids                      = [digitalocean_droplet.droplets.0.id, digitalocean_droplet.droplets.1.id]
}

resource "digitalocean_domain" "domain_1" {
  name = var.domain_name
}

resource "digitalocean_record" "record_1" {
  domain = var.domain_name
  type   = "A"
  name   = "@"
  value  = digitalocean_loadbalancer.loadbalancer_1.ip
}

resource "digitalocean_database_cluster" "database_cluster_1" {
  name       = "database-cluster-1"
  engine     = "pg"
  version    = "14"
  size       = "db-s-1vcpu-1gb"
  region     = "ams3"
  node_count = 1
}

resource "digitalocean_database_firewall" "database_firewall_1" {
  cluster_id = digitalocean_database_cluster.database_cluster_1.id
  rule {
    type  = "droplet"
    value = digitalocean_droplet.droplets.0.id
  }
  rule {
    type  = "droplet"
    value = digitalocean_droplet.droplets.1.id
  }
}
