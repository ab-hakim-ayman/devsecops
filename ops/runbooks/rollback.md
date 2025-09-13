### **`ops/runbooks/rollback.md`**

````markdown
# Rollback Runbook

1. Identify last working release: `helm history dev-sec-ops`
2. Rollback to previous release:
   ```bash
   helm rollback dev-sec-ops <REVISION>
   ```
````
