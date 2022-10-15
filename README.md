[![CircleCI][circleci-url]][circleci-url]
[![PRs Welcome][pr-welcome-shield]][pr-welcome-url]
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]

<!-- PROJECT LOGO -->
<br />
<p align="center">
  <img alt="delineate.io" src="https://github.com/delineateio/.github/blob/master/assets/logo.png?raw=true" height="75" />
  <h2 align="center">delineate.io</h2>
  <p align="center">portray or describe (something) precisely.</p>

  <h3 align="center">www</h3>

  <p align="center">
    This repo is the website for <a href="https://www.delineate.io">https://www.delineate.io</a>
    <br />
    <a href="https://github.com/delineateio/oss-template"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://www.delineate.io">Website</a>
    ·
    <a href="https://github.com/delineateio/oss-template/issues">Report Bug</a>
    ·
    <a href="https://github.com/delineateio/oss-template/issues">Request Feature</a>
  </p>
</p>

## Table of Contents

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->

- [About The Project](#about-the-project)
- [Built With](#built-with)
- [Application](#application)
- [Infrastructure](#infrastructure)
- [Roadmap](#roadmap)
- [Contributing](#contributing)
- [License](#license)
- [Acknowledgements](#acknowledgements)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

<!-- ABOUT THE PROJECT -->
## About The Project

The [delineate.io](https://www.delineate.io) website is hosted using [Vercel](https://vercel.com/), the deployment takes advantage of the Vercel capabilities for previewing:

* The preview website is at [delineate.dev](https://www.delineate.dev)
* The production website is at [delineate.io](https://www.delineate.io)

As part of this solution the cloud resource infrastructure has also been automated, including both Vercel and [Cloudflare](https://www.cloudflare.com).

## Built With

Further logos can be inserted to highlight the specific technologies used to create the solution from [here](https://github.com/Ileriayo/markdown-badges).

| Syntax | Description |
| --- | ----------- |
| ![pre-commit](https://img.shields.io/badge/precommit-%235835CC.svg?style=for-the-badge&logo=precommit&logoColor=white) | Pre-commit `git` hooks that perform checks before pushes|
| ![GitHub](https://img.shields.io/badge/github-%23121011.svg?style=for-the-badge&logo=github&logoColor=white) | Source control management platform  |
|![Vercel](https://img.shields.io/badge/vercel-%23000000.svg?style=for-the-badge&logo=vercel&logoColor=white) | Hosting of the websites|
| ![Terraform](https://img.shields.io/badge/terraform-%235835CC.svg?style=for-the-badge&logo=terraform&logoColor=white) | Cloud infrastructure provisioning configuration|
| ![Cloudflare](https://img.shields.io/badge/Cloudflare-F38020?style=for-the-badge&logo=Cloudflare&logoColor=white) | Security and DNS services for internet services|

## Application

The application code is [here](./dev), it is a basic html, css and javascript website and doesn't use an advanced web framework.

## Infrastructure

The Vercel and Cloudflare cloud resources have been automated using [Terraform Cloud](https://cloud.hashicorp.com/products/terraform).

```shell
# plans the terraform config
task cloud:plan

# auto approves applying the terraform config
task cloud:apply
```

<!-- ROADMAP -->
## Roadmap

See the [open issues](https://github.com/delineateio/oss-template/issues) for a list of proposed features (and known issues).

<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

If you would like to contribute to any delineate.io OSS projects please read:

* [Code of Conduct](https://github.com/delineateio/.github/blob/master/CODE_OF_CONDUCT.md)
* [Contributing Guidelines](https://github.com/delineateio/.github/blob/master/CONTRIBUTING.md)

<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE` for more information.

<!-- ACKNOWLEDGEMENTS -->
## Acknowledgements

* [Best README Template](https://github.com/othneildrew/Best-README-Template)
* [Markdown Badges](https://github.com/Ileriayo/markdown-badges)
* [DocToc](https://github.com/thlorenz/doctoc)

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->

[circleci-url]: https://img.shields.io/circleci/build/gh/delineateio/oss-template?style=for-the-badge&logo=circleci
[pr-welcome-shield]: https://img.shields.io/badge/PRs-welcome-ff69b4.svg?style=for-the-badge&logo=github
[pr-welcome-url]: https://github.com/delineateio/oss-template/issues?q=is%3Aissue+is%3Aopen+label%3A%22good+first+issue
[contributors-shield]: https://img.shields.io/github/contributors/delineateio/oss-template.svg?style=for-the-badge&logo=github
[contributors-url]: https://github.com/delineateio/oss-template/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/delineateio/oss-template.svg?style=for-the-badge&logo=github
[forks-url]: https://github.com/delineateio/oss-template/network/members
[stars-shield]: https://img.shields.io/github/stars/delineateio/oss-template.svg?style=for-the-badge&logo=github
[stars-url]: https://github.com/delineateio/oss-template/stargazers
[issues-shield]: https://img.shields.io/github/issues/delineateio/oss-template.svg?style=for-the-badge&logo=github
[issues-url]: https://github.com/delineateio/oss-template/issues
[license-shield]: https://img.shields.io/github/license/delineateio/oss-template.svg?style=for-the-badge&logo=github
[license-url]: https://github.com/delineateio/oss-template/blob/master/LICENSE
