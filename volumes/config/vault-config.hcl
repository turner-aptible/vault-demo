storage "file" {
  path = "/vault/file"
}

listener "tcp" {
  address = "0.0.0.0:8200"
  tls_disable = 1
}

log_file = "/vault/logs/vault_audit.log"
log_format = "json"
ui = true