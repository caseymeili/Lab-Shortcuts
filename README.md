# Lab-Shortcuts
Code to make life in lab a little easier

# Renaming files for Legendplex Assay
1. Download script titled "rename_files.sh"
2. Edit the configuration portion of "rename_files.sh"
   
Change "Souce_Dir" to the path to your file directory (where the files you want to rename are located)

Change "Prefix" to the part of the file name you want to remove. Copy and paste, it must be identical

   
4. Open terminal and navigate to where script is saved using cd /path/to/destination
5. Run the following commands:
chmod +x rename_files.sh  # Give execute permissions
./rename_files.sh         # Run the script
   
