# 📝 System Info Script – Project Report

## ✅ Overview

This project demonstrates a Bash script `sysinfo.sh` that reports system information: CPU load, memory usage, and disk space. The script is tracked using Git, managed via branches, pushed to GitHub, and packaged in a Docker container.

---

## 🔧 Git Workflow

### Step 1: Initialize Git
```bash
git init
git add sysinfo.sh
git commit -m "Initial commit with base script"
```

### Step 2: Create Feature Branches

#### ▪ CPU Feature
```bash
git checkout -b cpu-feature
# (Enhance CPU info in script)
git commit -am "Add CPU load display"
git checkout main
git merge cpu-feature
```

#### ▪ Disk Feature
```bash
git checkout -b disk-feature
# (Improve disk formatting if needed)
git commit -am "Improve disk usage output"
git checkout main
git merge disk-feature
```

### Step 3: Push to GitHub
```bash
git remote add origin https://github.com/supravat001/sysinfo-project.git
git push -u origin main
git push origin cpu-feature
git push origin disk-feature
```

### Step 4: Pull Request & Issue

- Opened a **Pull Request** from `cpu-feature` to `main`
- Created an **Issue**:
  
---

## 🐳 Docker Steps

### Build Docker Image
```bash
docker build -t my-custom-image .
```

### Run Docker Container
```bash
docker run --rm my-custom-image
```

### Sample Output:
root@DASH:/home/sdash/sysinfo-project# docker run -it my-custom-image
 >>> cpu load
 08:54:41 up  2:13,  0 user,  load average: 0.00, 0.00, 0.00

 >>> memory usaage
               total        used        free      shared  buff/cache   available
Mem:           3.7Gi       594Mi       2.9Gi       3.7Mi       382Mi       3.1Gi
Swap:          1.0Gi          0B       1.0Gi

 >>> disk space
Filesystem      Size  Used Avail Use% Mounted on
overlay        1007G  3.1G  953G   1% /
tmpfs            64M     0   64M   0% /dev
shm              64M     0   64M   0% /dev/shm
/dev/sdd       1007G  3.1G  953G   1% /etc/hosts
tmpfs           1.9G     0  1.9G   0% /proc/acpi
tmpfs           1.9G     0  1.9G   0% /proc/scsi
tmpfs           1.9G     0  1.9G   0% /sys/firmware
root@DASH:/home/sdash/sysinfo-project#
## 📦 Submission Contents

| File/Folder     | Description                            |
|------------------|----------------------------------------|
| `sysinfo.sh`     | System info script                    |
| `Dockerfile`     | Docker setup to run the script        |
| `report.md`      | Documentation of Git, PR, Issue, Docker |
