# Lab-Shortcuts
Code to make life in lab a little easier

**Renaming files for Legendplex Assay**
1. Download script titled "rename_files.sh"
2. Edit the configuration portion of "rename_files.sh"
   * Change "Souce_Dir" to the path to your file directory (where the files you want to rename are located)
   * Change "Prefix" to the part of the file name you want to remove. Copy and paste, it must be identical.
   * Change "Dest_Dir" to change the name and location of the new folder created with the renamed files, defaults to "renamed_files" within the folder of the files being renamed
   * Save and close
4. Open terminal and navigate to where script is saved using cd /path/to/destination
   * You can type cd into the terminal and drag the location of the script to get the exact path
   * Try not to have spaces in the names of your folders to avoid potential issues
5. Run the following commands:
   * chmod +x rename_files.sh # gives permission to execute
   * ./rename_files.sh # runs the script
