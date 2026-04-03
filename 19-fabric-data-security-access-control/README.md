# Securing Data Access in Microsoft Fabric

This project demonstrates how to implement **multi-layered data security** in Microsoft Fabric using workspace roles, item permissions, and OneLake security.

The lab focuses on controlling access at different levels and applying fine-grained data restrictions within a lakehouse.

---

## Architecture

Workspace Access (Roles)  
        ↓              
Item-Level Permissions (Warehouse / Lakehouse)  
        ↓                
OneLake Security (Table-Level Access)  

---

## Technologies Used

- Microsoft Fabric
- Data Warehouse
- Lakehouse
- OneLake Security (Manage OneLake security)

---

## Key Concepts Demonstrated

### Workspace Security

- Role-based access (Admin vs Viewer)
- Controls access to all workspace items

---

### Item-Level Security

- Permissions applied to individual items
- Restrict access to specific warehouses or lakehouses

---

### OneLake Security

- Fine-grained data access control
- Restrict access to specific tables or folders

---

### Layered Security Model

- Workspace → Item → Data
- Combines broad and granular access control

---

## Outcome

✔ Created workspace, warehouse, and lakehouse  
✔ Configured workspace-level access  
✔ Applied item-level permissions  
✔ Implemented OneLake security roles  
✔ Restricted access to specific data assets  

---

## Why This Project Matters

- Data security in modern data platforms  
- Access control strategies in enterprise environments  
- How to protect sensitive data at multiple levels  

