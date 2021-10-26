@echo off

REM - - - - - - - - - - - - version 26october2021 - - -
REM
REM
REM  ExifTool - https://exiftool.org/install.html
REM
REM  Blat (64bit) - https://www.blat.net
REM
REM
REM - - - - - - - - - - - - - - - - - - - - - - - - - -


set exiftoollocation=C:\Windows

set blatlocation=C:\Program Files\Blat

set scanfolder=D:\ASSETS

set scanlogfolder=D:\PostScript Scan

set scanlogfilename=PostScript_Scan_Log.txt

set scanoutputfilename=Jobs_with_PostScript_Fonts.tsv

set emailserver=mail.example.com

set emailto=recipient@example.com

set emailfrom=server_noreply@example.com

set emailsubject="Automation Notification: PostScript Scan Log"

set emailbody="See the attached - PostScript Scan Log - Report in TSV ( Tab Separated Value ) format..."


REM - - - - - - - - - - - - - - - - - - - - - - - - -
REM - - - - - - - - - - - - - - - - - - - - - - - - -


del "%scanlogfolder%\%scanlogfilename%" /Q
del "%scanlogfolder%\%scanoutputfilename%" /Q

> "%scanlogfolder%\%scanlogfilename%" 2>&1 (

"%exiftoollocation%\exiftool.exe" -T -m -directory -filename -fontname -fontfilename -r -if "$FontType =~ /PostScript/" "%scanfolder%" > "%scanlogflder%\%scanoutputfilename%"

)

"%blatlocation%\blat.exe" -to %emailto% -f %emailfrom% -s %emailsubject% -server %emailserver% -body %emailbody% -attach "%scanlogfolder%\%scanlogfilename%","%scanlogfolder%"\%scanoutputfilename%"
