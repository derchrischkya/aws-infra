<a name="readme-top"></a>
![terraform](https://img.shields.io/badge/Terraform-623CE4?style=for-the-badge&logo=terraform&logoColor=white#readme-top)
![terraform.io](https://img.shields.io/badge/Terraform_Cloud-623CE4?style=for-the-badge&logo=terraform&logoColor=white#readme-top)
![github-actions](https://img.shields.io/badge/GitHub_Actions-2088FF?style=for-the-badge&logo=github-actions&logoColor=white#readme-top)
![aws](https://img.shields.io/badge/AWS-232F3E?style=for-the-badge&logo=amazon-aws&logoColor=white#readme-top)
![eks](https://img.shields.io/badge/EKS-232F3E?style=for-the-badge&logo=amazon-aws&logoColor=white#readme-top)
![vpc](https://img.shields.io/badge/VPC-232F3E?style=for-the-badge&logo=amazon-aws&logoColor=white#readme-top)


<br />
<div align="center">
  <h3 align="center">AWS-INFRA</h3>

  <p align="center">
    An awesome README template to jumpstart your projects!
    <br />
    <a href="https://github.com/derchrischkya/aws-infra"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    ·
    <a href="https://github.com/derchrischkya/aws-infra/issues">Report Bug</a>
    ·
    <a href="https://github.com/derchrischkya/aws-infra/issues">Request Feature</a>
  </p>
</div>



<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

The project provides a set of terrafom modules to create a basic infrastructure in AWS.
Terraform is automatically executed by Github Actions, when a merge request is created to the "prod" or "dev" branch. The terraform state is stored on Terraform Cloud within the organization "derchrischkya". (My privat Terraform Cloud organization)

For the Github action workflow the following secrets are required:
- `AWS_ACCESS_KEY_ID` stored in Terraform Cloud as environment variable
- `AWS_SECRET_ACCESS_KEY` stored in Terraform Cloud as environment variable "AWS_SECRET_ACCESS_KEY"
- `TF_API_TOKEN` stored in GitHub as secret

<p align="right">(<a href="#readme-top">back to top</a>)</p>


### Built With
* [![Terraform][terraform]][terraform-url]
* [![Terraform Cloud][terraform.io]][Terraform Cloud-url]
* [![Github Actions][github-actions]][github-actions-url]
* [![AWS][aws]][aws-url]

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- GETTING STARTED -->
## Getting Started

Clone the repository and create a new branch for your changes.
Modify the terraform files in the "modules" directory.
To get started just run the Github Action workflow by creating a merge request to the "prod" or "dev" branch.

### Prerequisites

- cloned repository
- terraform cloud account
- aws account
- github account

### Installation

_Below is an example of how you can instruct your audience on installing and setting up your app. This template doesn't rely on any external dependencies or services._

0. Clone the repo
   ```sh
   git clone
   ```
1. Create a new branch
   ```sh
   git checkout -b feature/AmazingFeature
   ```
2. Make your changes
3. Commit your changes
   ```sh
   git commit -m 'Add some AmazingFeature'
   ```
4. Push to the branch
   ```sh
    git push origin feature/AmazingFeature
    ```
6. Define API token from Terraform Cloud in Github Secrets
7. Define AWS access key and secret in Terraform Cloud as environment variables
8. Create a merge request to the "prod" or "dev" branch
9. Check the Github Action workflow
10. Check the Terraform Cloud workspace
11. Check the AWS console
12. Enjoy your new infrastructure

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- USAGE EXAMPLES -->
## Usage

The project can be used to create a basic infrastructure in AWS. The following resources are created:
- VPC
- EKS Cluster

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- ROADMAP -->
## Roadmap

- [x] Create VPC
- [x] Create EKS Cluster

See the [open issues](https://github.com/derchrischkya/aws-infra/issues) for a full list of proposed features (and known issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- CONTACT -->
## Contact

Christoph Richter  - christoph.richter1997@gmail.com

Project Link: [https://github.com/derchrischkya/aws-infra](https://github.com/derchrischkya/aws-infra)

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- ACKNOWLEDGMENTS -->
## Acknowledgments

Use this space to list resources you find helpful and would like to give credit to. I've included a few of my favorites to kick things off!

* [GitHub Pages](https://pages.github.com)
* [Terraform](https://www.terraform.io/docs/index.html)
* [Terraform Cloud](https://www.terraform.io/docs/cloud/index.html)
* [Github Actions](https://docs.github.com/en/actions)
* [AWS](https://aws.amazon.com/de/)
* [Best README Template](https://github.com/othneildrew/Best-README-Template)

<p align="right">(<a href="#readme-top">back to top</a>)</p>
