This script is designed to create a backup of a specified file or directory in a given target directory.

## Usage

1. Make the script executable using the command chmod +x backup_script.sh.
2. Run the script using the command ./backup_script.sh.
3. Enter the path to the source file or directory you want to back up.
4. Enter the path to the target directory where the backup will be created.

The script will check for the existence of the source file/directory and the target directory. If the target directory does not exist, it will be created. Then, the script will create a new directory inside the target directory with a name consisting of the source file/directory name and the current date/time in the format YYYYMMDD_HHMMSS. The source file/directory will be copied into this new directory.


The script has been tested on Linux, but should work on other Unix-like systems with Bash installed.
