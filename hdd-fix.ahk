; Runs CrystalDiskInfo and disables aggressive HDD head parking.
; Set the path accordingly on line 7.
; Todo: Get regex to work, to interface with different versions of CrystalDiskInfo

Sleep, 100

Run, DiskInfo64.exe, C:\your\path\to\CrystalDiskInfo7_1_1\
Sleep, 500

WinWaitActive, CrystalDiskInfo 7.1.1 x64

WinActivate, CrystalDiskInfo 7.1.1 x64
Sleep, 100

WinMenuSelectItem, CrystalDiskInfo 7.1.1 x64, , Function, Advanced Feature, AAM/APM Control
Sleep, 800

ControlClick, Button4, AAM/APM Control, , Left , 1
Sleep, 400

ControlClick, Button3, AAM/APM Control, , Left , 1
Sleep, 400

WinClose, AAM/APM Control
Sleep, 400

WinClose, CrystalDiskInfo 7.1.1 x64
Sleep, 400

ExitApp