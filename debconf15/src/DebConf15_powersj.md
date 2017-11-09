---
title: hLinux
subtitle: HP's Debian derivative a year later
author: Joshua Powers
fontsize: 10pt
output: beamer_presentation
---

## Survey
- Are you a DM/DD?
- Do you work on a blend?
- Do you work on a derivative?
- Do you work for HP?

## Helion and hLinux
### Helion
- OpenStack based
- Offerings in public, private, and hybrid clouds

### hLinux
- Debian Jessie
- Foreign Packages
    - Modified for specific needs
    - Not found in Debian
    - The goal is to get into Debian wherever possible
- Kernel
    - 3.14 and 4.1 longterm kernels
    - Driver enhancements with External Partners

## hLinux - Year 2014
### Debian
- The clear choice

### HP Helion
- Distribution model as "embedded"
- Unknown update process or exposure to customers
- Do not want to break or harm Debian and its reputation
- Avoid Debian getting blamed for our packages

### DebConf14
- Great feedback and enthusiasm
- Encouragement to use existing tools
- Get involved!

## hLinux - Involvement
- Overall, we fell short
- gcc5 effort
    - Over 60 patches submitted and over 80 bugs closed (not bugs, fixed, etc.)
    - Great learning exercise
    - Feedback was great, team is ready to do more
- Rebuild of entire arm64 archive

## hLinux - Rebranding
### Protect Debian
- Intent was to avoid harming Debian
- Have people come to us where we make changes
- Done by adding +hLinux to version

### Lessons Learned
- Many, many crazy versions, but all valid according to Debian policy guidelines
- We were too paranoid
- All Debian wisdom really is online
    - Policy manual and mailing lists
    - However, the wisdom takes time to digest

## hLinux - Tooling
### Distribution Tools
- Day 1 used Debian tools, but not the best ones
- reprepro
- aptly

### Packaging
- git-buildpackage
- wrapper for a git hook

## hLinux - Areas of Contribution
### QA
- 30 years of HP-UX and Red Hat experience
- Bring those tools and QA to Debian
- Access to hardware
- Testing of Debian testing

### HP Servers
- Manageability and tools

### ARM64
- HP Moonshot m400
- First class experience
- uEFI and secure boot support

## hLinux - Areas of Contribution (cont.)
### QEMU
- Do not enable SDL, avoid X11 and Pulseaudio
- Most current QEMU stable version
- Watch for CVEs

### Containers
- Lots of interest
- Investigating a solution
- Manageability

## hLinux - Areas of Contribution (cont.)
### Security
- On-going vulnerability scanning
- re: OVAL Bug #738199 and #794615

### Secure Boot
- kexec-tools, kdump-tools, efitools, sbsigntool, grub2, systemd
- Very interested in the recently formed group
- Want to share our learnings

## What's in a name?
- hLinux is an internal name (codename)
- We are Debian, with some additions
    - Foreign packages
    - e.g. kernel, newer packages, missing packages
- Advantageous for HP and Debian to work together

## Thank you!
Big thank you for the help and warm welcome!

Any comments and questions can be sent to:

- powersj@hpe.com
- powersj on irc
