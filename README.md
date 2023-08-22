# Local Vault Demo

This is just a demo of the local docker environment on your machine. This is intended for test purposes.

## Prerequisites

- [Install `vault` CLI](https://developer.hashicorp.com/vault/tutorials/getting-started/getting-started-install)

- [Docker installed](https://docs.docker.com/desktop/install/mac-install/)

- [`curl` installed](https://formulae.brew.sh/formula/curl)

## Running this demo

1. Clone the repo `git clone git@github.com:turner-aptible/vault-demo.git`

2. `cd` into the folder `cd ./vault-demo`

3. Create the `/logs` and `/files` in `/volumes` with `mkdir -p volumes/{file,logs}`

4. Run `docker compose up -d`

5. Export the `VAULT_ADDR` by running `export VAULT_ADDR='http://127.0.0.1:8200'`

6. Run `vault operator init -key-shares=1 -key-threshold=1`

7. Save the Unseal Key and Initial Root Token as these are used to unseal and login to `vault`

8. Unesal `vault` by running `vault operator unseal` and entering the Unseal Key when prompted

9. Run `vault login`

10. You are now able to run any `vault` commands

11. When done run `docker compose down`
