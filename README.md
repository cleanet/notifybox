# notifybox

![notifybox](https://github.com/cleanet/notifybox/blob/master/screenshots/notifybox.png)

notifybox is a command that allow to have a notifications' message box in your terminal, thank at
dialog package. It is programmed in Debian.

This is very easy of install. Execute the INSTALL file with `./INSTALL`, and for uninstall, exist the
command `notifybox-uninstaller`. The installer changes the permissions to `/etc/dialogrc` (chmod o+w)
and the uninstaller delete it. Also you can configures the `notifybox-conf` script for that in each status of one systemd's service, it inform you

 ## Directories tree:

	/etc/
	 |
	 |\__ notifybox/                  ___
	 |            |\__ dialogrc.error   |
	 |            |                     |
	 |            |\__ dialogrc.info    | dialog configurations files
	 |            |                     |
	 |            |\__ dialogrc.alert   |
	 |            |                   ___
	 |            \__ notifybox.conf <---- notifybox configuration file
	 |\__ bin/
	 |      |\__ notifybox <--- command
	 |      |
	 |      |\__ notifybox-uninstaller <--- uninstaller
	 |      |
	 |      \__ notifybox-conf <-- script configuration
	 |
	  \__ /var/
	           \__ cache/
		            \__ notifybox/
		                         |\__ history_commands.list <-- notifications list
		                         |
		                         \__ services.list <-- services list for the script config

The command allows to add notifications and only run `notifybox` without arguments, this is hearing for 
show notifications popups with dialog.

## diagram of notifybox-conf
![diagram](https://github.com/cleanet/notifybox/blob/master/screenshots/diagram_config.png)

## Examples:

`notifybox --alert --title "bind9" --text "Bind9 doesn't run"`

![alert](https://github.com/cleanet/notifybox/blob/master/screenshots/alert.png)

`notifybox --info  --title "ssheld new rule" --text "new IP denied by sshield"`

![info](https://github.com/cleanet/notifybox/blob/master/screenshots/info.png)

`notifybox --error --title "Apache2" --text "Fatal error"`

![error](https://github.com/cleanet/notifybox/blob/master/screenshots/error.png)
## License
GNU General Public License v3.0
## Contact
Autor      | cleanet
------------|----------
Website  |  https://cleanet.alwaysdata.net
Email      |  cleannet29@gmail.com
