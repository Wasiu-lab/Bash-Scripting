# **Backup Script**

This repository contains `backup.sh`, a Bash script designed to back up a source directory to a destination directory using the `rsync` tool. It ensures that files are backed up efficiently while preserving older versions in timestamped directories for easy organization and retrieval.

---

## **Features**
- Validates that the correct number of arguments are passed.
- Ensures `rsync` is installed before running.
- Automatically creates a dated backup directory for modified or deleted files.
- Uses a log file to capture the details of the backup process.
- Supports testing the script with the `--dry-run` option (commented in the script).

---

## **Usage**
```bash
./backup.sh <source_directory> <destination_directory>
```

### **Example**
```bash
./backup.sh /home/user/documents /backup/user/documents
```
This will:
1. Back up `/home/user/documents` to `/backup/user/documents/current`.
2. Save deleted/modified files in `/backup/user/documents/YYYY-MM-DD`.
3. Log the process in `backup_YYYY-MM-DD.log`.

---

## **How to Test the Script**
The script includes a comment about the `--dry-run` option for testing. The `--dry-run` option simulates the backup process without making actual changes. This helps verify the script's behavior before running it for real.

### **To Enable `--dry-run`**
Modify the `rsync_options` variable in the script as follows:
```bash
rsync_options="-avb --backup-dir $2/$current_date --delete --dry-run"
```

### **Why Use `--dry-run`?**
1. **Safe Testing:** Ensures no files are moved, deleted, or modified.
2. **Error Detection:** Allows you to identify and fix any potential issues with directory paths or file handling.
3. **Confidence:** Confirms the backup process works as intended before executing it.

### **Run the Script in Dry Run Mode**
```bash
./backup.sh /source/path /destination/path
```
The script will display the operations it would perform but will not actually execute them.

---

## **Requirements**
- Bash shell.
- `rsync` installed on your system.
  - On Ubuntu/Debian:
    ```bash
    sudo apt install rsync
    ```
  - On Fedora/RHEL:
    ```bash
    sudo dnf install rsync
    ```

---

## **Error Handling**
The script checks for:
1. **Invalid Number of Arguments:**
   - If the script is called without exactly two arguments, it exits with an error message.
2. **Missing `rsync`:**
   - If `rsync` is not installed, the script exits and prompts the user to install it.

---

## **Output Logs**
Each time the script runs, it generates a log file named `backup_YYYY-MM-DD.log` in the current directory. This log contains detailed information about the backup process, including:
- Files transferred.
- Files deleted.
- Errors (if any).

---

## **Contributing**
Feel free to submit issues or pull requests to improve the script or add new features. 😊
