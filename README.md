# **Bash Scripting Projects**

Welcome to my Bash Scripting repository! This repository contains a collection of Bash scripting projects designed to automate tasks, manage systems, and demonstrate my skills in writing efficient and reusable scripts for various use cases.

---

## **Repository Structure**

The repository is organized into individual project folders. Each folder includes:

- **Project Description:** Overview of the project, its objectives, and the problems it addresses.
- **Code:** The Bash script(s) used in the project.
- **Documentation:** Instructions on how to use the script, including dependencies, setup, and examples.

---

## **Projects**

### **1. Backup Automation Script**
- **Description:** A script to back up files from a source directory to a destination directory, preserving older versions in timestamped folders.
- **Technologies Used:** Bash, `rsync`.
- **Highlights:**
  - Validates input arguments and checks for required tools.
  - Automatically creates timestamped backup directories.
  - Logs backup activity for tracking.
- Link to Poject [Backup Automation Script](https://github.com/Wasiu-lab/Bash-Scripting/tree/main/backup_Script)
---

### **2. Log Monitoring Script**
- **Description:** A script to monitor log files in real-time and alert users based on specific conditions or patterns.
- **Technologies Used:** Bash, `tail`, `grep`.
- **Highlights:**
  - Filters log lines based on user-defined patterns.
  - Sends alerts via email or messaging platforms.
  - Flexible configuration for different log formats.

---

### **3. System Resource Monitor**
- **Description:** A script to monitor CPU, memory, and disk usage on a Linux system and generate periodic reports.
- **Technologies Used:** Bash, `top`, `df`, `free`.
- **Highlights:**
  - Generates summary reports and logs them.
  - Configurable thresholds for sending alerts.
  - Lightweight and easy to schedule with `cron`.

---

### **4. Software Installation Manager**
- **Description:** A script to automate the installation of essential software packages on various Linux distributions.
- **Technologies Used:** Bash, `apt`, `yum`, `pacman`.
- **Highlights:**
  - Detects the operating system and selects the appropriate package manager.
  - Supports bulk installation of packages from a list.
  - Logs installation results for review.

---

## **Technologies and Tools**

This repository showcases my expertise in:
- **Bash Scripting:** Writing reusable and efficient scripts for task automation.
- **Linux Utilities:** `grep`, `awk`, `sed`, `rsync`, `tail`, and more.
- **System Administration:** Automating backups, monitoring, and configuration tasks.
- **Task Scheduling:** Using `cron`, `at`, and other scheduling tools.

---

## **How to Use**

1. Clone the repository:
   ```bash
   git clone https://github.com/username/Bash-Scripting.git
   ```

2. Navigate to a project folder to explore its specific implementation.

3. Follow the documentation in the respective folder for setup and usage instructions.

---

## **Contribution**
Feel free to submit issues or pull requests to improve the scripts or add new features. Collaboration is welcome!
