# Bash Script: Install and Run `htop`

## Project Overview
This Bash script checks whether the `htop` command-line tool is installed on your Linux system. If it's available, the script runs it. If not, it installs `htop` using `apt` and then executes it.

`htop` is an interactive process viewer for Unix systems that provides a user-friendly interface to monitor system resources and processes in real-time.

### Explanation of Each Line

1. **Shebang Line**:
   ```bash
   #!/bin/bash
   ```
   - This indicates the script should be executed using the Bash shell.

2. **Define the Command Path**:
   ```bash
   command=/usr/bin/htop
   ```
   - This sets the `command` variable to the full path of `htop`. It assumes `htop` would be installed at `/usr/bin/htop`.

3. **Check if `htop` Exists**:
   ```bash
   if [ -f $command ]
   ```
   - The `-f` flag checks if the file specified by `$command` exists and is a regular file.

4. **Run `htop` if Available**:
   ```bash
   echo "$command is available, let's run it..."
   ```
   - If the file exists, the script outputs a message indicating `htop` is available and ready to run.

5. **Handle Missing `htop`**:
   ```bash
   echo "$command is Not available, installing it......"
   sudo apt update && sudo install -y htop
   ```
   - If `htop` is not found, the script outputs a message that it is installing `htop`.
   - `sudo apt update` updates the package index.
   - `sudo apt install -y htop` installs `htop` without prompting for confirmation (`-y` flag).

6. **Execute `htop`**:
   ```bash
   $command
   ```
   - After installation (if required), this line runs the `htop` command.

## Prerequisites
1. A Linux system with `apt` as the package manager (e.g., Ubuntu, Debian).
2. Sudo privileges to install software.
3. Internet access to fetch updates and download `htop`.

## How to Use the Script
1. Clone the repository or copy the script to your local machine.
2. Make the script executable:
   ```bash
   chmod +x script.sh
   ```
3. Run the script:
   ```bash
   ./script.sh
   ```

## Output Example
1. **When `htop` is already installed**:
   ```
   /usr/bin/htop is available, let's run it...
   ```
   - The `htop` interface will open.

2. **When `htop` is not installed**:
   ```
   /usr/bin/htop is Not available, installing it......
   ```
   - The script updates the package index, installs `htop`, and then opens it.

## Notes
- Ensure the script runs in a Bash-compatible shell.
- Modify the `command` variable if `htop` is located in a different path on your system.

---

Feel free to contribute, report issues, or suggest enhancements for this script!

