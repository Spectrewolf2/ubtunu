# DevOps Toolkit Bootstrap Script

This repository provides a `bootstrap.sh` script to automate the installation of essential DevOps tools on Ubuntu-based systems. The script simplifies the setup process by installing and configuring the following tools:

- **Git**: Version control system for tracking changes in source code.
- **Docker Compose**: Tool for defining and running multi-container Docker applications.
- **Ansible**: Configuration management and automation tool.
- **Terraform**: Infrastructure as Code (IaC) tool for building, changing, and versioning infrastructure.
- **Kubectl**: Command-line tool for managing Kubernetes clusters.
- **AWS CLI**: Command-line interface for managing AWS services.

## Features
- Installs the latest stable versions of each tool.
- Configures repositories and dependencies for seamless installation.
- Ensures compatibility with Ubuntu-based systems.

## Prerequisites
- Ubuntu-based operating system (20.04 or later recommended).
- Root or `sudo` privileges to install software and dependencies.

## Instructions for Use

1. Clone the repository and navigate to the `ubuntu` folder:
```bash
git clone https://github.com/Spectrewolf2/ubtunu
cd ubtunu
```

2. Make the script executable:
```bash
chmod +x bootstrap.sh
```

3. Run the script:
```bash
sudo ./bootstrap.sh
```

## Post-Installation Verification

To verify the installations, run these commands:

```bash
git --version
docker-compose --version
ansible --version
terraform --version
kubectl version --client
aws --version
```

## Troubleshooting

If you encounter any issues:

1. Check system requirements
2. Verify internet connectivity
3. Ensure sufficient disk space
4. Review logs in `/var/log/` directory

## Contributing

Feel free to contribute by:

1. Forking the repository
2. Creating your feature branch
3. Submitting a pull request
