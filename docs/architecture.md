# DevSecOps Application Architecture

## Overview

- Kubernetes-based deployment using Helm charts
- CI/CD pipelines with GitHub Actions & Jenkins
- Security integrated at every stage (SAST, container scanning, runtime security)
- Observability with Prometheus, Grafana, and Alertmanager

## Components

1. **App**: Dockerized microservices
2. **Database**: PostgreSQL or MySQL (managed)
3. **Ingress**: TLS-secured routing
4. **Monitoring**: Prometheus + Grafana dashboards
5. **Security**: Kyverno, Trivy, Semgrep, Bandit, ESLint, GoSec, PHP Security Check, Dart Analyzer, C# Security Code Scan
