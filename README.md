---

# AKS Azure Terraform

This repository contains Terraform configurations for deploying and managing Azure Kubernetes Service (AKS) clusters. The configurations allow for a scalable and maintainable infrastructure as code approach to managing AKS resources on Microsoft Azure.

## Prerequisites

Before you can use the Terraform configurations in this repository, you need to have the following:

- An Azure subscription.
- Azure CLI installed.
- Terraform installed.

## Installation

Follow these steps to get your development environment set up:

1. **Clone the repository**

   ```bash
   git clone https://github.com/Ayodejiola/AKS-Azure-Terraform.git
   cd AKS-Azure-Terraform
   ```

2. **Log in to Azure**

   Ensure that you are logged into your Azure account via the Azure CLI:

   ```bash
   az login
   ```

3. **Initialize Terraform**

   Initialize a new or existing Terraform working directory by running:

   ```bash
   terraform init
   ```

4. **Create a Terraform plan**

   Generate and show an execution plan, detailing what actions Terraform plans to take in order to change real infrastructure to match the configuration:

   ```bash
   terraform plan
   ```

5. **Apply the Terraform plan**

   Apply the changes required to reach the desired state of the configuration, or the pre-determined set of actions generated by a `terraform plan` execution plan:

   ```bash
   terraform apply
   ```

## Usage

Provide instructions on how to use the deployed infrastructure or how to modify the configurations for personal use.

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License

[MIT](https://choosealicense.com/licenses/mit/)

---

