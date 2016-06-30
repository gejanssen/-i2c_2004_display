from lcd_display import lcd
import sys

line1=(sys.argv[1])
line2=(sys.argv[2])
line3=(sys.argv[3])
line4=(sys.argv[4])

my_lcd = lcd()
my_lcd.display_string(line1, 1)
my_lcd.display_string(line2, 2)
my_lcd.display_string(line3, 3)
my_lcd.display_string(line4, 4)
