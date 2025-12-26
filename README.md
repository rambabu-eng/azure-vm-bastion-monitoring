Azure VM + Bastion + Monitoring Project :
# Azure Secure Virtual Machine with Bastion & Monitoring (Terraform)

## Overview
This project deploys a **secure, production-like Azure Virtual Machine environment** using Terraform.
The solution follows enterprise security best practices by:
- Deploying a Linux VM **without public IP**
- Enabling secure access using **Azure Bastion**
- Enforcing network security via **NSG rules**
- Enabling monitoring & diagnostics using **Log Analytics**

## Architecture
The deployment includes:
- **Resource Group**
- **Virtual Network**
- `AzureBastionSubnet` (required for Bastion)
- `subnet-vm` (for Linux VM)
- **Network Security Group**
- Allows only SSH (port 22) within secure access path
- **Linux VM**
- Private IP only (no direct internet exposure)
- **Azure Bastion**
- Provides browser-based SSH access
- **Log Analytics Workspace**
- Collects VM metrics and diagnostics
- Enables monitoring

## Folder structure
azure-vm-bastion-monitoring/
├── terraform/
│ ├── main.tf
│ ├── variables.tf
│ ├── outputs.tf
│ ├── providers.tf
│ ├── terraform.tfvars (not committed – contains sensitive values)
├── README.md
└── .gitignore

## Prerequisites
- Azure Subscription
- Terraform installed (>= 1.5)
- Git version control installed

## Monitoring
This deployment enables:
- Metric collection
- Diagnostic logs
- Performance analytics
Access via :
- Azure Portal → Monitor → Logs / Metrics  
or  
- Open Log Analytics workspace directly.

## Cleanup
To avoid costs, destro resources when finished:
- terraform destroy
- confirm with 'yes'

## Skills demonstrated
This project demonstrates:
- Infrastructure as Code (Terraform)
- Secure Azure networking
- Bastion secured access
- Enterprise monitoring principles
- Cloud governance mindset
- Real-world deployment workflow

 ## Author
 This project is part of my professional Azure Cloud portfolio, demonstrating secure infrastructure deployment, and real-world implementation skills.

