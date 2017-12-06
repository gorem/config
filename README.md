## Config

This repo contains various configuration files I use repeatedly, including different versions for different operating systems. The Mac ones are probably kept the most up-to-date, while the Windows version of my .emacs is likely to fall the furthest behind.

### Mac

**mac-bash-profile:** My .bash_profile for macOS. My favorite command is "jr", which launches my daily journal and, in combination with some emacs functions, inserts the date and time and puts my cursor in the right spot to start typing.

**mac-emacs:** My .emacs file for macOS. I like to enable using command-key shortcuts for copy and paste, change the backup and auto-save directories to a hidden .backups folder, and just get things going my way quickly. If I recall correctly, it lets you use the right-side Option key like a normal Option key within emacs, which is great for foreign language characters (the only other language I speak is German, but you still want to be able to write "tschüß!" in your editor, right?).

**timer.sh:** A janky bash script/countdown timer I used in grad school in lieu of inexpensive Pomodoro timers on the Mac App Store. Hey, at least it launches a native Mac notification once time is up. I've been meaning to update it with tons of phrases, and haven't.

**work-phone:** This probably doesn't belong here any more, but it's an old Bash function I used at a previous job to quickly look up phone numbers I'd saved in a text file. Gotta start somewhere!

### Linux

**ub-setup.sh:** This is probably my favorite file on here. It's a script to get an Ubuntu machine up and running with the programs and files I like to use, including configuring emacs with Source Code Pro as the default font. At runtime, it asks if you want Spotify installed, because I like to have it on a native install but would never use it inside a VM, and I use Ubuntu in both scenarios. The last line of this script is commented out, but it's the command to download the script itself. Clever, eh? (Maybe I should && a bit to make it run, too.)

**fedora-setup.sh:** This might be my *new* favoritest file, because I am really enjoying Fedora so far. Very fast and maybe in just the right part of cutting edge.

**linux-bash-aliases:** This is the Linux version of my Mac .bash_profile. Is it appropriate to put functions, and not just aliases, in ~/.bash_aliases? I look into this sometimes and get distracted by the debates, so I've stopped worrying about it.

**linux-emacs:** The Linux version of my Mac's .emacs file. This is probably the "purest" version, in that I don't think it has any concessions to modifier keys the way the Mac one does.

### Windows

**win-emacs:** Windows-friendly version of my .emacs file. I don't use Windows much for development work right now.

### Cross-platform

**vs-code-settings.json:** This is my settings.json for Visual Studio Code, which I use on every platform. It's a fine GUI editor, even if you're not a coder.
