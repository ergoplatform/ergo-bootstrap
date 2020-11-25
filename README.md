<img src=".github/ergo-bootstrap.svg" align="right" height="100" />

# Ergo Bootstrap

Ergo bootstrap tool, build on top of [ergo-nix](https://github.com/ergoplatform/ergo-nix), will help you to quickly deploy an Ergo blockchain cluster with a handful of useful tools you might need to start developing your dApps.

<p align="center">
  <a href="#key-features">Key Features</a> •
  <a href="#Installation">Installation</a> •
  <a href="#usage">How To Use</a> •
  <a href="#support">Support</a> •
  <a href="#credits">Credits</a>
</p>

## Key Features

* Ergo node, a full blockchain node, the reference client implementation.
* Ergo backends
  * Explorer API, provides a set of HTTP API methods for querying chain/off-chain data.
  * UTX watcher, dumps unconfirmed transactions from mempool to local database.
  * UTX broadcaster, broadcasts unconfirmed transactions to Ergo nodes.
  * Chain grabber, scans blockchain and dumps aggregated data to database.
  * Yoroi backend, a wrapper for the Ergo explorer API providing light wallets endpoints.
* Ergo frontends
  * Ergo node panel, build-in
  * Ergo explorer, a browser for viewing activity on the underlying blockchain network.

## Installation

The bootstrap cluster is supposed to be a development tool and we do not recommend using it as a production deployment. 

You need to have `docker` and `docker-compose` installed on your system. We recommend at least 8GB of memory.

```bash
# Clone this repository
$ git clone https://github.com/ergoplatform/ergo-bootstrap

# Go into the repository
$ cd ergo-bootstrap

# Run the bootstrap script
$ ./ergo-bootstrap
Usage: ./ergo-bootstrap {init|start|stop|status|destroy}

    init      Initialize a ergo bootstrap cluster
    start     Start the cluster
    stop      Stop the cluster
    status    Get status of an initialized cluster
    destroy   Destroy the current cluster
```

## Usage

### Initializing your cluster

![Ergo bootstrap init](.github/ergo-bootstrap-init.svg)

### Starting and stopping your cluster

Use the `start` and `stop` commands.

```
$ ./ergo-bootstrap stop
Stopping ergo-bootstrap_ergo-explorer-api_1                   ... done
$
```

### Status of the cluster

You can view the current status of your cluster using the `status` command.

```
$ ./ergo-bootstrap status
NAMES                                 CONTAINER ID      STATUS            PORTS
ergo-bootstrap_yoroi-backend_1        c5db1d6f2795      Up 35 minutes     0.0.0.0:3001->3001/tcp
ergo-bootstrap_ergo-explorer-api_1    20d17f44e95a      Up 35 minutes     0.0.0.0:8080->8080/tcp
ergo-bootstrap_ergo-postgresql_1      c9ef2a3cdfa4      Up 35 minutes     5432/tcp
ergo-bootstrap_ergo-redis_1           a7ea3d025cc5      Up 35 minutes     6379/tcp
                                              ...

Ergo Node Panel                    http://localhost:9053/panel/
Ergo Node API                      http://localhost:9053/
Yoroi backed API                   http://localhost:3001/api/v2/bestblock
Grafana metrics                    http://localhost:3000/ (user admin / password admin)
```

## Support

If you find a bug or have a feature you would like to see, [please open an issue](https://github.com/ergoplatform/ergo-bootstrap/issues/new). For help, join the [Ergo Platform Discord server](https://discordapp.com/invite/gYrVrjS).

## Credits

This project has [been sponsored by a grant from The Ergo Foundation](https://ergoplatform.org/en/blog/2020-11-18-ergo-foundation-makes-key-dapp-infrastructure-grant/). Ergo is a community-oriented project, with many contributors to various aspects of the ecosystem. If you have a great idea which you are looking to implement that would improve the Ergo ecosystem as a whole, please feel free to apply for an Ergo Foundation grant by emailing your proposal to: ergoplatform@protonmail.com.
