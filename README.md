# bless-bootcamp-EFI

Check SIP is disabled

`csrutil status`

If it is enabled, reboot into recovery mode, open Terminal then run:

`csrutil disable`

Allows older macOS devices to locate and 'bless' Windows Bootcamp EFI partition. 
I'm using a mid 2010 mac pro 5.1 with aftermarket GPU so no EFI boot screen available. 

This finds a microsoft EFI boot device, and restarts into Windows assuming it's been correctly installed. 

To get back to Mojave from windows I use an intermediary installation of High Sierra with the older +HFS partitioning scheme which the Windows Bootcamp app can see and select. 

Without that you're looking at booting into the recovery partition in OSX and rebooting from there. 


## run 
./bless-bootcamp-EFI.sh


