###### **Lab – Basic Firewall Setup using UFW on RHEL 9**



This lab demonstrates how to install and configure the **Uncomplicated Firewall (UFW) on a RHEL 9 system, running on VMware**.

The task includes installing UFW, enabling SSH access, blocking HTTP traffic, and verifying firewall rules.



---



\# **Steps Performed**--
**1. Install EPEL Repository**



RHEL does not include UFW by default, so the EPEL repository is required:



```bash

sudo dnf install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-9.noarch.rpm

```



**2. Install UFW**



```bash

sudo dnf install -y ufw

```



**3. Enable and Start UFW**



```bash

sudo systemctl enable ufw

sudo systemctl start ufw

```



**4. Allow SSH (Port 22)**



SSH must remain accessible:



```bash

sudo ufw allow 22/tcp

```



**5. Deny HTTP (Port 80)**



Block all HTTP traffic:



```bash

sudo ufw deny 80/tcp

```



**6. Enable UFW**



```bash

sudo ufw enable

```



**7. Verify Firewall Status**



```bash

sudo ufw status verbose

```



Expected output:



```

22/tcp   ALLOW

80/tcp   DENY

```



---



**Purpose of Rules--**



**| Port   | Service | Rule  | Reason**                                                       |

| ------ | ------- | ----- | ------------------------------------------------------------ |

| **22/tcp** | SSH     | ALLOW | Needed for remote login \& server administration              |

| **80/tcp** | HTTP    | DENY  | Blocks web traffic to secure the server from unwanted access |



---



**Included Files--**



\* **ufw\_configuration.sh** — Shell script for automatic UFW setup

\* **README.md** — Explanation of configuration and rules



---



**Outcomes--**



After completing this lab, the system will:



\* Permit secure SSH access

\* Block HTTP traffic

\* Display active UFW rules confirming correct configuration



