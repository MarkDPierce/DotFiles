# Mark's dotfiles

---

![shell screenshot](https://i.imgur.com/PTyg7s8.png)

## Intro

---

I have been a big Windows and Powershell user for a long time. I eventually took inspiration from oh-my-zsh and found oh-my-posh and have been using a custom prompt ever since. Recently I started a new job where I was issued a Mac. This meant it's time for a new prompt and a new rabbit hole to explore.

Linux and Windows use zsh and powershell/pwsh respectively. These can render some awesome prompts to use. If you're after a similar result to screenshot posted. You will have to use a Mac since the prompt I use is called `borg` and is currently only available for MacOS.

**Warning:** I have not configured anything that will go about installing the correct fonts. For the time being find a [Nerd font](https://www.nerdfonts.com) you enjoy and install it on your OS.

## Settings up Windows Powershell

---

I have made this pretty easy with a simple `bootstrap.ps1` script. The script will install chocolatey and choco will install additional packages. A `$PROFILE` is created and updated with some starship initialization.

**NOTE:** This must be ran from an elevated prompt
`windows\bootstrap.ps1`

## Settings up MacOS

---

Move files from `generic` and `macos` to your `$HOME`
To reconfigure from default system settings.

`./.macos`

To install brew and formulae that I commonly use.
`./brew.sh`

## Linux (debian)

---

Move over all files from `generic` to your `$HOME`
