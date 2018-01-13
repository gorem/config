#!/usr/bin/python

import datetime

today = datetime.datetime.now()

# Could use %p in strftime below, but that uses AM/PM
if today.hour > 12:
    suffix = "p.m."
else:
    suffix = "a.m."

print today.strftime("%A, %B %-d, %Y")
print today.strftime("%-I:%M") + " " + suffix
