# Pythonista script for iOS
import clipboard
import datetime
import webbrowser

def date_str(today):
	return today.strftime("%A, %B %-d, %Y")

def time_str(today):
	if today.hour >= 12:
		suffix = "p.m."
	else:
		suffix = "a.m."
	return today.strftime("%-I:%M") + " " + suffix

def journal_date(today):
	prefix = ""
	if today.day != 1:
		prefix = "\n\n"
	return prefix + date_str(today) + "\n" + time_str(today) + "\n\n"

today = datetime.datetime.now()
journal_date = journal_date(today)
clipboard.set(journal_date)
webbrowser.open("iawriter://")