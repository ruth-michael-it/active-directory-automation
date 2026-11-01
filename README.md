# Active Directory Automation & Security Infrastructure Lab

This repository features enterprise-grade PowerShell automation frameworks designed for systems administrators managing Microsoft Active Directory Domain Services (AD DS) environments.

## 🛠️ Operational Capabilities

### 1. Automated Lifecycle Management (`New-UserOnboarding.ps1`)
Optimizes identity provisioning flows by converting raw data exports into secure domain assets.
* **Algorithmic Asset Generation:** Standardizes corporate naming conventions and logical identity keys.
* **Target Container Isolation:** Maps personnel dynamically to specific Departmental Organizational Units (OUs).
* **Defensive Credential Baseline:** Configures accounts to enforce password updates upon initial network authentication.

### 2. Infrastructure Compliance Auditor (`Get-ADSecurityAudit.ps1`)
A defensive security script tailored to evaluate domain identity configurations against security baselines.
* **Stale Account Isolation:** Flags inactive user profiles exceeding standard retention intervals (90 days).
* **Policy Compliance Sweep:** Isolates high-risk exceptions like active accounts with non-expiring passwords.

## 🚀 Use Case Context
These components simulate automation methodologies deployed within enterprise environments to reduce operational friction, eliminate manual onboarding configuration mistakes, and enforce network security hygiene.

