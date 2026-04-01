# Securing Data in Microsoft Fabric Data Warehouse

This project demonstrates how to implement **enterprise-grade data security** in a Microsoft Fabric Data Warehouse using multiple layered security techniques.

The lab focuses on protecting sensitive data through masking, access control, and user-based filtering.

---

## Architecture

Data Warehouse Tables  
        ↓            
Security Layers Applied  
        ↓  
~Dynamic Data Masking  
~Row-Level Security (RLS)  
~Column-Level Security (CLS)  
~SQL Permissions (GRANT / DENY)  
        ↓                  
Secure Data Access for Different Users  

---

## Technologies Used

- Microsoft Fabric
- Fabric Data Warehouse
- T-SQL
- Security Policies
- Role-Based Access Control (RBAC)

---

## Key Concepts Demonstrated

### Dynamic Data Masking (DDM)

- Mask sensitive fields dynamically
- Mask types:
  - Default
  - Email
  - Custom string

---

### Row-Level Security (RLS)

- Restrict rows based on user identity
- Implemented using:
  - Security predicate function
  - Security policy

---

### Column-Level Security (CLS)

- Restrict access to specific columns
- Applied using DENY/GRANT

---

### Granular SQL Permissions

- Control execution and data access
- Use of:
  - GRANT
  - DENY
  - Stored procedures

---

## Outcome

✔ Implemented column-level data masking  
✔ Restricted rows using user-based filtering  
✔ Controlled column visibility  
✔ Applied SQL-level permissions  
✔ Built secure, enterprise-ready data warehouse  

---

## Why This Project Matters

This project demonstrates **real enterprise security practices**, including:

- Protecting sensitive data (PII)
- Enforcing least-privilege access
- Supporting compliance requirements (GDPR-style controls)
