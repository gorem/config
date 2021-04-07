# Pythonista script for iOS
import clipboard
import datetime
import webbrowser
import sys

# "Monday, April 6, 2020"
def date_str(today):
	return today.strftime("%A, %B %-d, %Y")

# "6:30 a.m." or "12:45 p.m."
def time_str(today):
	suffix = "a.m."
	if today.hour >= 12:
		suffix = "p.m."
	return today.strftime("%-I:%M ") + suffix

# "Denver, CO, U.S.A."
def place_str():
	city = sys.argv[1]
	state = sys.argv[2]
	country = sys.argv[3]
	if country == "United States":
		country = "U.S.A."
	return city + ", " + state + ", " + country

def journal_date():
	today = datetime.datetime.now()
	prefix = ""
	if today.day != 1:
		prefix = "\n\n"
	return prefix + date_str(today) + "\n" + time_str(today) + "\n" + place_str() + "\n\n"

journal_date = journal_date()
clipboard.set(journal_date)
webbrowser.open("iawriter://")