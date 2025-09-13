# Disaster Recovery

- Backup schedule:
  - Database daily
  - Kubernetes manifests in Git
- Restore procedures:
  - Database: restore from backup using pg_restore / mysqldump
  - App: redeploy Helm charts
