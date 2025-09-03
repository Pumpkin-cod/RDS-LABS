# AWS RDS Labs – Consolidated Documentation

## 📌 Overview

This repository documents a series of hands-on AWS RDS labs focused on database deployment, high availability, performance scaling, and disaster recovery.  
Each lab simulates real-world scenarios and follows AWS best practices for security, cost management, and availability.

---

## 🚀 Labs Summary

### Lab 1: Instance Creation & Basic Operations
- Deployed MySQL and PostgreSQL RDS instances
- Configured security groups for controlled access
- Verified connectivity and performed basic DDL/DML operations

**Key Learnings:**
- Setup is similar for MySQL and PostgreSQL; main differences are ports and client tools
- Security groups are the primary network access control
- Instance class selection impacts cost and performance

---

### Lab 2: Multi-AZ Deployment & Failover Testing
- Converted MySQL instance to Multi-AZ
- Verified standby replica in a separate Availability Zone
- Performed manual failover and measured downtime

**Key Learnings:**
- Multi-AZ improves availability and fault tolerance (not performance)
- Failover typically takes 1–2 minutes; endpoints remain unchanged
- Multi-AZ roughly doubles compute/storage costs

---

### Lab 3: Read Replicas & Performance Scaling
- Created same-region and cross-region read replicas
- Measured replication lag and promoted a replica for failover testing

**Key Learnings:**
- Read replicas scale reads, not writes
- Cross-region replication adds latency and data transfer costs
- Promoting a replica breaks replication permanently

---

### Lab 4: Automated Backups & Point-in-Time Recovery
- Configured automated backups (14-day retention)
- Created manual snapshots for on-demand recovery
- Simulated accidental deletion and restored via PITR

**Key Learnings:**
- Automated backups enable PITR within retention period
- Manual snapshots provide long-term recovery options
- PITR creates a new instance; update application endpoints
- Recovery time depends on DB size (10–15 mins in this lab)

---

## 🔒 Security Considerations
- Restricted access via security groups (least privilege)
- Password authentication used; IAM authentication recommended for production
- Encryption disabled for labs; enable KMS encryption in production
- Deletion protection disabled for cleanup; enable in production

---

## 📈 Availability & Resilience
- Multi-AZ ensures automatic failover
- Read replicas support scaling and disaster recovery
- Backups and PITR protect against logical errors
- Snapshots serve as long-term recovery points

---

## 💰 Cost Optimization
- Used `db.t3.micro` for minimal cost (~$0.017/hour)
- Multi-AZ doubles cost but increases availability
- Cross-region replication incurs data transfer charges
- Snapshots incur storage costs until deleted
- Enable storage autoscaling to avoid over-provisioning

---

## ✅ Best Practices Applied
- Consistent naming conventions for traceability
- Automated backups enabled for PITR
- Security groups restrict access
- Regular failover and recovery drills
- Post-lab cleanup to minimize billing

---

## 📊 Lessons Learned
- Cost, availability, and performance trade-offs:
  - Single-AZ: lowest cost, least resilient
  - Multi-AZ: high availability, higher cost
  - Read Replicas: scalability & DR, adds latency/cost
- Backups are essential for compliance and recovery
- Endpoints remain stable during Multi-AZ failover
- Monitoring and alerts (CloudWatch, RDS events) are vital for production

---

## 📂 Deliverables
- Screenshots: Instance states, Multi-AZ config, replica status, backup/recovery validation
- SQL Scripts: Table creation, inserts, validation queries
- Final Lab Report: Performance timings, cost analysis, observations

---

## 🔚 Conclusion

These labs provided practical experience with RDS deployment models, high availability, replication, and recovery.  
They highlight operational trade-offs and align with AWS Solutions Architect Associate exam scenarios, serving as a reference for real-world cloud