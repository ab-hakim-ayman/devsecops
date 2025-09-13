# Developer Onboarding Guide

1. Clone repo: `git clone git@github.com:org/dev-sec-ops.git`
2. Install dependencies: Docker, Helm, Kubectl, Ansible
3. Setup local `.env` from `.env.example`
4. Run pre-commit hooks: `pre-commit install`
5. Deploy dev environment via Helm: `helm install dev ./helm -f helm/values-dev.yaml`
6. Run tests: `pytest` / `npm test` / `go test`
