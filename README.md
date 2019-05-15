# DateStamp-File
Renames a file to include either the Created on or Modified on Date of the file itself.

This function renames a file to include it's datestamp in the format
of C:\Filepath\OriginalFileName-YYYYMMDD.ext
Example for Created Date
  * DateStamp-File -FileName "C:\Sourcefile.png" -WhichDate "Created"

Example for Modified Date
  * DateStamp-File -FileName "C:\Sourcefile.png" -WhichDate "Modified" 


## To-Do
* Input Error Checking 
  * Will error out if -WhichDate Switch is absent and rename incorrectly.
  * Will error out if -FileName Switch is absent or incorrect
* WhichDate should be replaced with a -Created and -Modified XOR option
* File Path Check should be completed first prior to attempting rename
* Function needs a -Help switch page for completeness
