; Volume Control Script - Right CTRL + Up or Down to adjust volume
; Todo: Add other media keys?

>^Down:: ; >^ RCtrl
SendEvent {Volume_Down}
return

>^Up::
SendEvent {Volume_Up}
return