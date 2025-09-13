# Threat Model

## Assets

- Application source code
- Docker images
- Kubernetes cluster
- Database credentials
- CI/CD pipeline secrets

## Threats

- Unauthorized access to GitHub repo
- Image tampering
- Misconfigured Kubernetes RBAC
- Vulnerable dependencies

## Mitigations

- Protected branches & required PR checks
- Container signing & SBOM
- Kyverno PodSecurity policies
- Automated dependency updates via Dependabot
