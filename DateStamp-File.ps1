# DateStamp-File Function
# By Optoisolated
#
# This function renames a file to include it's datestamp in the format
# of C:\Filepath\OriginalFileName-YYYYMMDD.ext
#
# Example for Created Date
#   DateStamp-File -FileName "C:\Sourcefile.png" -WhichDate "Created"
# Example for Modified Date
#   DateStamp-File -FileName "C:\Sourcefile.png" -WhichDate "Modified" 
#

Function DateStamp-File
 {
    param([string]$FileName, [string]$WhichDate)
    $FileData = Get-Item $FileName 
    Switch ($WhichDate)
    {
        Created  { $FileDate = $($FileData.CreationTime)  }
        Modified { $FileDate = $($FileData.LastWriteTime) }
    }
    $OutDate = $FileDate.ToString('yyyyMMdd')
    $NewFile = $($FileData.BaseName + "-" + $OutDate + $FileData.Extension)
    "Renaming $($FileData.Name) to $NewFile "
    Rename-Item -Path $FileName -NewName $NewFile
 }
