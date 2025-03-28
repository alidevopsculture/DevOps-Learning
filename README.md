# AWS Usage Reporter

## Overview
This script generates a report on AWS resource usage, including:
- **S3 Buckets**
- **EC2 Instance IDs**
- **AWS Lambda Functions**
- **IAM Users**

The script helps system administrators and DevOps engineers quickly gather AWS resource details.

---

##  Prerequisites
Before running the script, ensure the following:
1. **AWS CLI** is installed
   ```bash
   aws --version
   ```
2. **AWS CLI is configured** with valid credentials
   ```bash
   aws configure
   ```
3. **jq** (JSON processor) is installed
   ```bash
   sudo apt install jq  # Debian/Ubuntu
   brew install jq      # macOS
   ```

---

## Usage Instructions

### 1️⃣ Clone the Repository
```bash
git clone <repo-url>
cd aws-usage-reporter
```

### 2️⃣ Make the Script Executable
```bash
chmod +x aws_reports.sh
```

### 3️⃣ Run the Script
```bash
./aws_reports.sh
```

### 4️⃣ Sample Output
```bash
========================================
 AWS USAGE REPORT - Generated on <date>
========================================

 Listing S3 Buckets...
<bucket-list>

 Listing EC2 Instance IDs...
i-06b95e421fcef36bf
i-07139109ac36285b7

 Listing AWS Lambda Functions...
<lambda-function-names>

 Listing AWS IAM Users...
<iam-user-names>

 AWS Usage Report Execution Completed!
```

---

## Automating with Crontab
To schedule the script execution periodically, add the following line to crontab:
```bash
crontab -e
```
Example (runs every day at midnight):
```bash
0 0 * * * /path/to/aws_reports.sh > /path/to/aws_report.log 2>&1
```

---

##  License
This project is open-source. Feel free to modify and use it as needed!

---

##  Contact
For any queries, reach out to **Ali Murtaza** on [LinkedIn](https://www.linkedin.com/in/your-profile).

Happy Scripting! 
