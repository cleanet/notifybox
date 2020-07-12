![](screenshorts/notifybox.png)
notifybox is a command that allow to have a notifications' message box in your terminal, thank at
dialog package. It is programmed in Debian.

This is very easy of install. Execute the INSTALL file with `./INSTALL`, and for uninstall to exist the
command `notifybox-uninstaller`. The installer changes the permissions to `/etc/dialogrc` (chmod o+w)
and the uninstaller delete it.

Directories tree:

/etc/
 |
 |\__ notifybox/                  ___
 |            |\__ dialogrc.error   |
 |            |                     |
 |            |\__ dialogrc.info    | dialog configurations files
 |            |                     |
 |            \__ dialogrc.alert    |
 |                                ___
 |\__ bin/
 |      |\__ notifybox <--- command
 |      |
 |       \__ notifybox-uninstaller <--- uninstaller
 |
  \__ /var/
           \__ cache/
                     \__ notifybox.list <-- notifications list


The command allows to add notifications and only run `notifybox` without arguments, this is hearing for 
show notifications popups with dialog.

IMPORTANT: the command notifybox without arguments (`notifybox`) can execute it without root (superuser),
but with arguments, this needs permissions root.

Examples:

	notifybox --alert --title "bind9" --text "Bind9 doesn't run"
	![](screenshorts/alert.png)
	notifybox --info  --title "ssheld new rule" --text "new IP denied by sshield"
	![](screenshorts/info.png)
	notifybox --error --title "Apache2" --text "Fatal error"
	![](screenshorts/error.png)
