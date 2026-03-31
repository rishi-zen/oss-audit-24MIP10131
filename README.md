# Open Source Audit: Python
**A Capstone Project for OSS NGMC Course**

* **Student Name:** Rishi Kumar Singh
* **Roll Number:** 24MIP10131
* **Chosen Software:** Python

## Project Overview
This repository contains five shell scripts written as part of an open-source software audit. These scripts demonstrate practical Linux system administration, package inspection, file system auditing, log analysis, and interactive user input.

## Dependencies Required
To run these scripts, you will need:
* A Linux environment (Debian/Ubuntu recommended based on package manager usage).
* Standard GNU core utilities (`uname`, `whoami`, `uptime`, `ls`, `du`, `grep`, `awk`, `cat`).
* `dpkg` (used in Script 2 to check package installation).

## Script Descriptions & Execution Instructions

Before running any script, you must make it executable. Open your terminal, navigate to the directory containing the scripts, and run:
`chmod +x *.sh`

### Script 1: System Identity Report (`script1.sh`)
* **Description:** Introduces the Linux system by displaying the OS distribution, kernel version, current user, uptime, date, and the overarching open-source license of the OS.
* **How to run:** `./script1.sh`

### Script 2: FOSS Package Inspector (`script2.sh`)
* **Description:** Takes a package name as an argument, checks if it is installed on the system, outputs its version/summary, and prints a philosophical note about the software using a `case` statement.
* **How to run:** `./script2.sh [package_name]` (e.g., `./script2.sh python3`)

### Script 3: Disk and Permission Auditor (`script3.sh`)
* **Description:** Loops through critical system directories (`/etc`, `/var/log`, etc.) to report their sizes, ownership, and permissions. It also explicitly checks for Python's configuration/library directory.
* **How to run:** `./script3.sh`

### Script 4: Log File Analyzer (`script4.sh`)
* **Description:** Reads a specified log file line by line to count the occurrences of a specific keyword (defaults to "error"). If the file is empty or invalid, it prompts the user to enter a valid path. It outputs the total count and the last 5 matching lines.
* **How to run:** `./script4.sh /var/log/syslog "error"` (Note: You may need `sudo` depending on the log file's read permissions).

### Script 5: The Open Source Manifesto Generator (`script5.sh`)
* **Description:** Interactively prompts the user with three questions about their open-source usage and philosophy. It compiles these answers into a personalized manifesto paragraph, saves it to a `.txt` file, and displays the output.
* **How to run:** `./script5.sh`
