# Lab 4: Automated Backups and Point-in-Time Recovery

## 🎯 Objective

This lab demonstrates how to configure automated backups in Amazon RDS, create manual snapshots, simulate data loss, and perform point-in-time recovery (PITR) to restore lost data.  
Understand backup strategies, recovery workflows, and the trade-offs between cost and availability.

---

## ⏱ Estimated Duration

- **Backup Configuration:** 10 mins  
- **Manual Snapshot & Test Data:** 10 mins  
- **Data Loss & Recovery:** 15 mins  
- **Verification:** 5 mins  
**Total:** ~40 minutes

---

## 🛠 Key Activities

- Configured automated backups with a **14-day retention period**
- Created a **manual snapshot** as a recovery baseline
- Inserted test data, then **simulated accidental deletion** of a table
- Performed **point-in-time recovery** to restore the lost data
- Verified the restored instance contained the missing table and data

---

## 🔍 Observations

- Backup retention successfully extended to 14 days, providing longer recovery coverage
- Manual snapshot offered an additional, user-managed recovery option
- Simulated human error by deleting the `backup_test` table
- PITR created a new RDS instance, leaving the original untouched
- Recovery time: **~10–15 minutes** (varies by instance size)

---

## 🧠 Assessment Q&A

**1. How does backup retention period affect storage costs?**  
Longer retention means more backups are stored. Since backups are incremental, cost depends on storage size and retention length. For example, 14 days vs. 7 days roughly doubles storage duration and cost.

**2. Difference between manual snapshots and automated backups?**  
- **Automated backups:** Created daily, used for PITR, retention 1–35 days  
- **Manual snapshots:** Created on-demand, retained until deleted, ideal before major changes/migrations

**3. How long did PITR take?**  
On average, **10–15 minutes** to create and restore a new RDS instance to the specified timestamp.

**4. Limitations of PITR?**  
- Only possible within the configured retention period  
- Creates a new instance (update application endpoints)  
- Cannot restore beyond earliest retained backup  
- Recovery time depends on DB size; may cause downtime if failover isn’t planned

---

## 📷 Deliverables

- **Backup configuration screenshot:** 14-day retention & backup window
- **Manual snapshot screenshot:** "Available" state
- **Process documentation:** Recovery duration notes
- **Data comparison:**  
  - Original instance: `backup_test` table missing  
  - Restored instance: `backup_test` table and data intact

---

## ✅ Outcome

Successfully demonstrated that automated backups and PITR provide resilience against accidental data loss,