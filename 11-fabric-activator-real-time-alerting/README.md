# Real-Time Alerting with Activator in Microsoft Fabric

This exercise demonstrates how to build **event-driven alerting systems** in Microsoft Fabric using Activator.

The lab focuses on monitoring real-time streaming data and triggering automated actions (email alerts) based on business rules and filters.

---

## Architecture

Event Stream (Package Delivery Data)        
        ↓  
Activator (Monitoring Engine)          
        ↓  
Object (Redmond Packages)          
        ↓  
Rule (Temperature Threshold)          
        ↓  
Filters (City + Product + Cold Chain)        
        ↓  
Action (Email Alert)          

---

## Dataset

Sample real-time package delivery event stream containing:

- PackageId
- Temperature
- City
- SpecialCare (e.g., Medicine)
- ColdChainType (e.g., Refrigerated)

---

## Technologies Used

- Microsoft Fabric
- Activator
- Eventstream (Sample Data)
- Event-driven Architecture
- Real-Time Monitoring
- Alerting (Email Notifications)

---

## Key Concepts Demonstrated

### Event-Driven Automation

- Monitoring streaming data in real time
- Triggering actions based on conditions

---

### Rule-Based Alerting

- Defining thresholds (temperature conditions)
- Configuring alert frequency

---

### Data Filtering

- Applying business logic filters:
  - City
  - Product type
  - Cold chain requirements

---

### Operational Monitoring

- Tracking critical events (temperature breaches)
- Automating notifications

---

## Outcome

✔ Built real-time alerting system  
✔ Created custom Activator object  
✔ Implemented rule-based monitoring  
✔ Applied multi-condition filters  
✔ Triggered automated email alerts  
✔ Simulated production monitoring scenario  
