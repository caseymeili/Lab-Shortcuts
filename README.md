# Lab-Shortcuts
Code to make life in lab a little easier

**Renaming files for Legendplex Assay**
1. Download script titled "rename_files.sh"
2. Open "rename_files.sh" and edit the "SOURCE_DIR" and "PREFIX" fields. Script must be opened using a text editor like BBEdit
   * Change "SOURCE_DIR" to the path to your file directory (where the files you want to rename are located)
   * Change "PREFIX" to the part of the file name you want to remove. Copy and paste, it must be identical.
   * Change "DEST_DIR" to change the name and location of the new folder created with the renamed files, defaults to "renamed_files" within the folder of the files being renamed
   * Save and close
4. Open terminal and navigate to where script is saved using cd /path/to/destination
   * You can type cd into the terminal and drag the location of the script to get the exact path
5. Run the following commands:
   * chmod +x rename_files.sh # gives permission to execute
   * ./rename_files.sh # runs the script
6. Check for errors
   * Renamed files will be located in a new folder titled "renamed_files" (or whatever you named it if you changed DEST_DIR)
   * "❌ Error: Source directory not found: $SOURCE_DIR" means the path to the source directory was incorrect
   * "⚠️ Skipping (does not match prefix)" means that a file did not begin with the specified prefix and it will not be renamed

**Balance Centrifuge**
Code modified from derekLS1: https://github.com/derekLS1/BalanceCentrifuge/tree/master

