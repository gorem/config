#!/usr/local/bin/python3

import datetime
import os

today = datetime.datetime.now()

# Could use %p in strftime below, but that uses AM/PM
suffix = "a.m."
if today.hour >= 12:
    suffix = "p.m."

location_command = '''CoreLocationCLI -once -format "%locality^%administrativeArea^%country"'''
location_string = os.popen(location_command).read()
location_data = location_string[:-1].split("^")
city = location_data[0]
state = location_data[1]
country = location_data[2]
if country == "United States":
    country = "U.S.A."

if today.day != 1:
    print("\n")
print(today.strftime("%A, %B %-d, %Y"))
print(today.strftime("%-I:%M ") + suffix)
print(city + ", " + state + ", " + country)
print("")