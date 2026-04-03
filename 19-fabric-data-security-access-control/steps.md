# Technical Breakdown

## Step 1 – Create Workspace

- Fabric workspace created with capacity enabled
- User assigned as Workspace Admin

---

## Step 2 – Create Data Warehouse

- Sample warehouse created
- Preloaded data available for testing

---

## Step 3 – Create Lakehouse

- New lakehouse created
- Sample dataset (Public Holidays) loaded

---

## Step 4 – Apply Workspace Access Control

- Reviewed workspace roles:
  - Admin
  - Viewer

- Understood permission scope:
  - Full vs read-only access

(Note: Single-user setup used; behavior validated conceptually)

---

## Step 5 – Apply Item-Level Permissions

- Removed workspace-level access (conceptually)
- Applied permissions directly to warehouse:

Permissions granted: - ReadData (SQL access)

Outcome: - Access restricted to warehouse only

---

## Step 6 – Validate Access Behavior (Conceptual)

- Warehouse accessible via OneLake catalog
- Lakehouse not accessible at item level

---

## Step 7 – Configure Lakehouse Permissions

- User added to lakehouse with no data access permissions
- Metadata visibility enabled only

---

## Step 8 – Enable OneLake Security

- Activated "Manage OneLake security"
- Created custom role: - Role name: publicholidays

---

## Step 9 – Apply Data-Level Access

- Assigned role to specific table: - publicholidays

- Added user to role

Outcome:
- Access restricted to a single table
- Other data remains hidden

---

## Step 10 – Clean Up

- Workspace deleted after completion
