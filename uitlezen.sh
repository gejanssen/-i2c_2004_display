# Temp
temperature=`/usr/bin/python /home/gej/get1temp.py 28-000005162710`

# humidity
# DHT11 (hij leest niet goed uit, dus net zo lang doorgaan tot ik een goede reading heb)
while [ -z "$DHT11" ]
do
        DHT11=`/home/pi/Adafruit-Raspberry-Pi-Python-Code/Adafruit_DHT_Driver/Adafruit_DHT 11 17 | /bin/grep Temp`
        /bin/sleep 5
done
luchtvochtigheid=`echo $DHT11 | /usr/bin/awk '{print $7}'`

# Pressure
luchtdruk=`/usr/bin/sudo /home/gej/bmp085/testBMP085 | /bin/grep Press | /usr/bin/awk '{print $2}'`

# ip adres wlan0
ip=`/sbin/ifconfig wlan0 | /bin/grep "inet " | /usr/bin/awk '{print $2}' | /usr/bin/awk -F : '{print $2}'`

# En schrijven naar de lcd display
/usr/bin/python /home/gej/lcd_4lines.py  "Temp $temperature C" "Humidity $luchtvochtigheid %" "Pressure $luchtdruk hPa" "IP $ip"

