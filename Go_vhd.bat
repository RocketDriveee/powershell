@echo off

set vdisk=c:\RocketDrive\RocketDrive.vhd
 
(
   create vdisk file="%vdisk%" maximum=5000 type=expandable
   select vdisk file="%vdisk%"
   attach vdisk
   convert mbr
   create partition primary
   format fs=NTFS label="RocketDrive" quick
   assign letter R:
) | diskpart

Exit
 