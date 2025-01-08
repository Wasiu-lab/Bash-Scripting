# Universal Update Script

This is a simple Bash script designed to check the operating system of the host machine and run the appropriate update commands based on the distribution. The script checks for **Arch-based** and **Debian/Ubuntu-based** distributions and runs the respective package manager commands.

## Features

- Detects the operating system from the `/etc/os-release` file.
- Executes package update commands for:
  - **Arch-based systems** using `pacman`.
  - **Debian/Ubuntu-based systems** using `apt`.

### How It Works

1. **Checks the OS:**
   - Reads the `/etc/os-release` file to identify the host's operating system.

2. **Performs OS-specific updates:**
   - For Arch-based systems: Executes `sudo pacman -Syu` to synchronize and update packages.
   - For Debian/Ubuntu-based systems: Executes `sudo apt update` followed by `sudo apt dist-upgrade`.

## Requirements

- **Root privileges:** The script requires `sudo` to run package management commands.
- **Bash shell:** Ensure that the script is executed in a Bash shell environment.

## Usage

1. Clone or download the script:
   ```bash
   git clone https://github.com/yourusername/update-host-script.git
   cd update-host-script
   ```

2. Make the script executable:
   ```bash
   chmod +x update-host.sh
   ```

3. Run the script:
   ```bash
   ./update-host.sh
   ```

## Notes

- Ensure that `sudo` is configured on the system, and the user running the script has the necessary privileges.
- Always back up critical data before running upgrade commands.
- Use this script only on compatible systems (Arch, Debian, or Ubuntu).

---

Happy updating! 🚀
