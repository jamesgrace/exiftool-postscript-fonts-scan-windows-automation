# exiftool-postscript-fonts-scan-windows-automation
Microsoft Windows Batch script that performs recursive scanning ( _within a folder structure_ ) for files containing `XMP-TPg:Fonts` PostScript metadata values. Script includes logging , output as TSV ( _Tab Separated Values - compatible with most spreadsheet applications_ ) , customizable email notifications , as well as the capability for predetermined scheduling ( _via the Microsoft Windows Task Scheduler_ ).

#### Requirements :
* ExifTool - https://exiftool.org/install.html
* Blat ( _64bit_ ) - https://www.blat.net

## Installation Procedure :

#### 1. BATCH FILE CONFIGURATION
* **`Ancestors_Scan.cmd`**

  * `exiftoollocation` = `C:\Windows`
    * ExifTool installation location.
  * `blatlocation` = `C:\Program Files\Blat`
    * Blat installation location.
  * `scanfolder` = `D:\ASSETS`
    * Folder location containing files to be scanned.
  * `scanlogfolder` = `D:\PostScript Scan`
    * Folder location containing scan logs.
  * `scanlogfilename` = `PostScript_Scan_Log.txt`
    * Filename for the scan log.
  * `emailserver` = `mail.example.com`
    * Email - Server:
  * `emailto` = `recipient@example.com`
    * Email - To:
  * `emailfrom` = `server_noreply@example.com`
    * Email - From:
  * `emailsubject` = `"Automation Notification: ExifTool Scan Log"`
    * Email - Subject:

:star: Detailed information regarding Adobe's PostScript Type 1 fonts end of life can be found here : https://helpx.adobe.com/fonts/kb/postscript-type-1-fonts-end-of-support.html
and here : https://helpx.adobe.com/photoshop/kb/announcement-end-of-support-postscript-type-1-fonts.html
