import datetime

today = datetime.datetime.now()

# Could use %p in strftime below, but that uses AM/PM
suffix = "a.m."
if today.hour >= 12:
    suffix = "p.m."

# Need to handle the "file is empty" case and not put a newline in
# Should handle this in PowerShell
print("\n")
print(today.strftime("%A, %B %#d, %Y"))
print(today.strftime("%#I:%M ") + suffix)
print("Denver, CO, U.S.A.\n")
