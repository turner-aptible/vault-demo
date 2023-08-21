storage "postgresql" {
  connection_url = "postgresql://aptible:3IAXS9ZFKCZ3gGk2qINFT4njheEfmFr_@elb-shared-us-west-1-75959.aptible.in:5432/db"
}

listener "tcp" {
  address = "0.0.0.0:8200"
  tls_disable = 1
}

ui = true