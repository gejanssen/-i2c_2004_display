# systemd autostart

Hier wordt beschreven hoe systemd werkt

Voowaarden:
	- werkende i2c display
	- pad naar het i2c display script aangepast in i2c_display_service
	- of alles draaien vanuit de pi user (/home/pi/i2c_2004_display)

eerlijk gejat/geplakt van http://www.raspberrypi-spy.co.uk/2015/10/how-to-autorun-a-python-script-on-boot-using-systemd/


## Kopieer het systemd script
Kopieer het script naar de juiste plek en zet daarna de rechten even goed.

```
	$ sudo cp i2c_display.service /lib/systemd/system/
	$ sudo chmod 644 /lib/systemd/system/i2c_display.service
```
## Tegen systemd vertellen dat er een nieuw script is

```
	$ sudo systemctl daemon-reload
```

## Enable het script
```
	$ sudo systemctl enable i2c_display.service
```

## En als laatste, start het script	

Start het script:
```
	$ sudo systemctl start i2c_display.service
```
