# DateStamp-File
Renames a file to include either the Created on or Modified on Date of the file itself.

This function renames a file to include it's datestamp in the format
of C:\Filepath\OriginalFileName-YYYYMMDD.ext
Example for Created Date
  * DateStamp-File -FileName "C:\Sourcefile.png" -WhichDate "Created"

Example for Modified Date
  * DateStamp-File -FileName "C:\Sourcefile.png" -WhichDate "Modified" 

