# Beschrijving over hoe een ic2 display te gebruiken op een raspberry met python



Plaatje

[![badge](https://raw.githubusercontent.com/gejanssen/i2c_2004_display/master/IMG_4160-small.jpg)](https://raw.githubusercontent.com/gejanssen/i2c_2004_display/master/IMG_4160-small.jpg))

en aansluitschema

[![badge](https://raw.githubusercontent.com/gejanssen/i2c-dsth01-python/master/Raspberry-Pi-GPIO-Layout-Re-300x149.gif)](https://raw.githubusercontent.com/gejanssen/i2c-dsth01-python/master/Raspberry-Pi-GPIO-Layout-Re-300x149.gif)



Aansluit tabel

Pin  | Description  | GPIO
---- | -------------|------
1    | GND          | 6 
2    | VCC (+5V)    | 2 
3    | SDA          | 3
4    | SCL          | 5


## Install i2c tools
```
	pi@rpi-z:~/i2c_2004_display $ sudo apt-get install python-smbus i2c-tools
	Reading package lists... Done
	Building dependency tree       
```

## Enable i2c modules
```
	pi@rpi-z:~/i2c_2004_display $ raspi-config
	A6	I2C
	Would you like the ARM I2C interface to be enabled? 	YES
	
	Finish
```

## Test of alles werkt
En nu testen
```
	pi@rpi-z:~/i2c_2004_display $ i2cdetect -y 1
	     0  1  2  3  4  5  6  7  8  9  a  b  c  d  e  f
	00:          -- -- -- -- -- -- -- -- -- -- -- -- -- 
	10: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
	20: -- -- -- -- -- -- -- 27 -- -- -- -- -- -- -- -- 
	30: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
	40: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
	50: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
	60: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
	70: -- -- -- -- -- -- -- --                         
	pi@rpi-z:~/i2c_2004_display $
```



# 4 regels, 20 tekens
Voorbeeld voor 4 regels, 20 tekens
```
	pi@rpi-z:~/i2c_2004_display $ sudo python lcd_4lines.py "dit is regel 1" "Dit is regel 2" "Regel 3" "Regel 4"
```

# 2 regels 16 tekens
Voorbeeld voor 2 regels, 16 tekens
```
	pi@rpi-z:~/i2c_2004_display $ sudo python lcd_2lines.py "dit is regel 1" "Dit is regel 2"
```
