## Config

This repo contains various configuration files I use repeatedly, including different versions for different operating systems. The Mac ones are probably kept the most up-to-date, while the Windows version of my .emacs is likely to fall the furthest behind.

### Mac
* **mac-zshrc.zsh**: My ~/.zshrc for macOS. Built on oh-my-zsh.

* **timer.sh**: A janky bash script/countdown timer I used in grad school in lieu of inexpensive Pomodoro timers on the Mac App Store. Hey, at least it launches a native Mac notification once time is up. I've been meaning to update it with tons of phrases, and haven't.

### Linux
* **ub-setup.sh**: This is probably my favorite file on here. It's a script to get an Ubuntu machine up and running with the programs and files I like to use, including configuring emacs with Source Code Pro as the default font. At runtime, it asks if you want Spotify installed, because I like to have Spotify on a native install but would never use it inside a VM, and I use Ubuntu in both contexts. The last line of this script is commented out, but it's the command to download the script itself, so I just run it on a new machine, then run the script. Clever, eh? (Maybe I should && something on there to make it run, too.)

### iOS
* **journal.py**: A Pythonista script I use to open my journal on iOS. I'm now using iA Writer and iCloud for syncing.

### Cross-platform editors
* **emacs.el**: My .emacs file for Macs and Linux. I like to enable using command-key shortcuts for copy and paste, change the backup and auto-save directories to a hidden .backups folder, and just get things going my way quickly. If I recall correctly, it lets you use the right-side Option key like a normal Option key within emacs, which is great for foreign language characters (the only other language I speak is German, but you still want to be able to write "tschüß!" in your editor, right?).

* **vimrc.vim**: My .vimrc. All it does is turn on syntax highlighting and, in combination with the other vim file (when placed in the correct directory), allows text to wrap in .txt files. These are must haves if this vim experiment is even worth considering.

* **VSCode-settings.json**: This is my settings.json for Visual Studio Code, which I use on every platform. It's a fine GUI editor, even if you're not a coder.

### Archives
* **fedora-setup.sh**: Fedora is fast and awesome, so here's a quick setup script for it. That said, I've switched back to Ubuntu since it's more familiar and I don't use Linux a ton, anyway.

* **linux-bash-aliases.bash**: This is the Linux version of my Mac .bash_profile. Is it appropriate to put functions, and not just aliases, in ~/.bash_aliases? I look into this sometimes and get distracted by the debates, so I've stopped worrying about it. I'm also using oh-my-zsh on Linux now, too, so I should get around to adding that to this repo.

* **win-emacs.el**: Windows-friendly version of my .emacs file. I don't use Windows much for development work right now.

* **work-phone.bash**: This probably doesn't belong here any more, but it's an old Bash function I used at a previous job to quickly look up phone numbers I'd saved in a text file. Gotta start somewhere!

* **mac-bash-profile.bash**: My .bash_profile for macOS. My favorite command is "jr", which launches my daily journal, inserts the date and time, and puts my cursor in the right spot to start typing. (I've used emacs commands to do this before, but now it's a short Python script followed by opening vim.)