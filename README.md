# Local Vault Demo

This is just a demo of the local docker environment on your machine. This is intended for test purposes.

## Prerequisites

- [Install `vault` CLI](https://developer.hashicorp.com/vault/tutorials/getting-started/getting-started-install)

- [Docker installed](https://docs.docker.com/desktop/install/mac-install/)

- [`curl` installed](https://formulae.brew.sh/formula/curl)

## Running this demo

1. Clone the repo `git clone git@github.com:turner-aptible/vault-demo.git`

2. `cd` into the folder `cd ./vault-demo`

3. Run `docker compose up -d`

4. Export the `VAULT_ADDR` by running `export VAULT_ADDR='http://127.0.0.1:8200'`

5. Run `vault operator init -key-shares=1 -key-threshold=1`

6. Save the Unseal Key and Initial Root Token as these are used to unseal and login to `vault`

7. Unesal `vault` by running `vault operator unseal` and entering the Unseal Key when prompted

8. Run `vault login`

9. You are now able to run any `vault` commands

10. When done run `docker compose down`
