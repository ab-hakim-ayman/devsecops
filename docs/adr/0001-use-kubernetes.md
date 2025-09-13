# ADR 0001: Use Kubernetes

## Status

Accepted

## Context

- Microservices deployment requires scaling & orchestration
- Security and monitoring policies must be enforceable

## Decision

- Use Helm to deploy apps to Kubernetes clusters
- Apply PodSecurity policies (Kyverno)
- Enforce resource limits and non-root containers
