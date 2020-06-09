# DOKS Deploy tools

> Docker Image containing all the tools needed to deploy an application to [DigitalOcean Kubernetes](https://www.digitalocean.com/products/kubernetes/).

[![Build Status](https://img.shields.io/github/workflow/status/brpaz/doks-deploy-tools/CI?style=for-the-badge)](https://github.com/brpaz/doks-deploy-tools/actions)
![Docker Pulls](https://img.shields.io/docker/pulls/brpaz/doks-deploy-tools.svg?style=for-the-badge)
![MicroBadger Layers](https://img.shields.io/microbadger/layers/brpaz/doks-deploy-tools.svg?style=for-the-badge)
![MicroBadger Size](https://img.shields.io/microbadger/image-size/brpaz/doks-deploy-tools.svg?style=for-the-badge)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg?style=for-the-badge)](https://opensource.org/licenses/MIT)

## What is Included:

* [Docker](https://www.docker.com/)
* [Doctl](https://github.com/digitalocean/doctl)
* [Kubectl](https://kubernetes.io/docs/reference/kubectl/kubectl/)
* [Helm](https://helm.sh/) with [Helm Secrets Plugin](https://github.com/futuresimple/helm-secrets)
* [Sops](https://github.com/mozilla/sops)
* [Fluxctl](https://docs.fluxcd.io/en/1.17.1/references/fluxctl.html)

## Usage

You can get the latest image from [Docker hub](https://hub.docker.com/repository/docker/brpaz/doks-deploy-tools).

```bash
docker pull brpaz/doks-deploy-tools:latest
```

## Run tests

This project uses [Hadolint](https://github.com/hadolint/hadolint) for Linting and [Container structure test](https://github.com/GoogleContainerTools/container-structure-test) for unit/integration tests.

You can run both tools with `make` commands. (Note that you dont have to install these tools locally as they are run with Docker).

```sh
make lint
make test
```

## Author

👤 **Bruno Paz**

* Website: [brunopaz.net](https://brunopaz.net)
* Github: [@brpaz](https://github.com/brpaz)
* Twitter: [@brunopaz88](https://twitter.com/brunopaz88)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check [issues page](https://github.com/brpaz/doks-deploy-tools/issues).

## Show your support

If this project have been useful for you, I would be grateful to have your support.

Give a ⭐️ to the project, or just:

<a href="https://www.buymeacoffee.com/Z1Bu6asGV" target="_blank"><img src="https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png" alt="Buy Me A Coffee" style="height: auto !important;width: auto !important;" ></a>

## 📝 License

Copyright © 2019 [Bruno Paz](https://github.com/brpaz).

This project is [MIT](https://opensource.org/licenses/MIT) licensed.

