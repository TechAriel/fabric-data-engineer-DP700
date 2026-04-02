# Technical Breakdown

## Step 1 – Create Workspaces

Created three workspaces:

- Development
- Test
- Production

All configured with Fabric capacity.

![Workspaces](screenshots/workspaces-created.png)

---

## Step 2 – Create Deployment Pipeline

- New pipeline created
- Named appropriately (e.g., fabric-deployment-pipeline)
![Deployment Pipeline](screenshots/pipeline-created.png)
---

## Step 3 – Assign Workspaces to Pipeline Stages

Mapping:

- Development → Dev stage
- Test → Test stage
- Production → Prod stage

![Workspace-Stage Mapping](screenshots/workspaces-assigned.png)

---

## Step 4 – Create Content in Development

Item created: - Lakehouse: `LabLakehouse`

Data source: - Sample dataset (NYC Taxi)

![Dev-Lakehouse](screenshots/dev-lakehouse-created.png)

---

## Step 5 – Validate Pipeline State

- Dev contains lakehouse
- Test & Prod out of sync (`x` indicator)

![Pipeline Out of Sync](screenshots/pipeline-out-of-sync.png)

---

## Step 6 – Deploy to Test Stage

- Selected lakehouse
- Deployed from Dev → Test

Result:

- Test workspace now contains lakehouse
- Prod still out of sync

![Deploy to Test](screenshots/deploy-to-test.png)

---

## Step 7 – Deploy to Production Stage

- Deployed from Test → Production

Result: - All stages synchronized (✔ indicator)

![Deploy to Prod](screenshots/deploy-to-prod.png)
---

## Step 8 – Validate Across Workspaces

Verified:

- Lakehouse exists in:
  - Development
  - Test
  - Production
![Test Workspace](screenshots/test-workspace.png)
![Prod Workspace](screenshots/production-workspace.png)
---

## Step 9 – Clean Up

- Deleted deployment pipeline
- Removed all workspaces
