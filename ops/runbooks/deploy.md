# Deployment Runbook

1. Ensure code is merged into `main`
2. Update version in `values-prod.yaml`
3. Run CI/CD pipeline or manually:
   ```bash
   helm upgrade --install dev-sec-ops ./helm -f helm/values-prod.yaml
   ```
