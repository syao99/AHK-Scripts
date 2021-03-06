; Runs CrystalDiskInfo and disables aggressive HDD head parking.
; Need to run every power-on from sleep/shutdown/etc. Requires admin.
; Set the path accordingly on line 7.
; Todo: Get regex to work, to interface with different versions of CrystalDiskInfo

Sleep, 100

Run, DiskInfo64.exe, D:\Program Files\CrystalDiskInfo\
Sleep, 500

WinWaitActive, CrystalDiskInfo 8.5.2 x64

WinActivate, CrystalDiskInfo 8.5.2 x64
Sleep, 100

WinMenuSelectItem, CrystalDiskInfo 8.5.2 x64, , Function, Advanced Feature, AAM/APM Control
Sleep, 800

ControlClick, Button4, AAM/APM Control, , Left , 1
Sleep, 400

ControlClick, Button3, AAM/APM Control, , Left , 1
Sleep, 400

WinClose, AAM/APM Control
Sleep, 400

WinClose, CrystalDiskInfo 8.5.2 x64
Sleep, 400

ExitApp