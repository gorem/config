#!/usr/local/bin/python3

import datetime

today = datetime.datetime.now()

# Could use %p in strftime below, but that uses AM/PM
suffix = "a.m."
if today.hour >= 12:
    suffix = "p.m."

print(today.strftime("%A, %B %-d, %Y"))
print(today.strftime("%-I:%M ") + suffix + "\n")
