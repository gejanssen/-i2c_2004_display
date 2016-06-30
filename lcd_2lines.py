from lcd_display import lcd
import sys

line1=(sys.argv[1])
line2=(sys.argv[2])

my_lcd = lcd()
my_lcd.display_string(line1, 1)
my_lcd.display_string(line2, 2)
