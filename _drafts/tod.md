---
title: "TOD"
description: "Terminal Only Development"
---

The teminal is love, the terminal is life, what the hell do you do if you can
only use the terminal? Well, you get a project like TOD. 

Now, as word of advice - this is not a reasonable system to daily drive. That
should probably be obvious but I would not recommend trying to reapeat this
system. This was created mostly as a thought experiment, because I wanted to
try to create a system that would force me to focus by minimizing all of the
usual desktop distractions, and make me learn terminal tools. In addition to
that it was to help understand the general linux filesystem and stuff better.

### Base System

What am I using for the base system? Well, Linux From Scratch, of course!
Just kidding, I'm not that insane yet (I'm considering installing Linux
from Scratch this summer break though someone please talk me out of this
for the sake of my own sanity). For this system however, we're using Gentoo
as the base. So, why Gentoo? I needed to flex on the Arch users. In all
seriousness though, I wanted to try a non-source based distro for the
additional control that could be had with use flags, as well as to see how
OpenRC worked as an init system as compared to runit from Void Linux (my
favorite linux distro). In addition to that, this is the first system that I
am trying to use a custom linux kernel on. This very basic installation,
however doesn't exactly fullfil the requirements for a development environment. 

### System Componets

Well, what do you need for a development system? First off, Vim. I'm using
this project as an excuse to learn basic Vim, and it will be the only text
editor installed on the system. The next problem would be documentation - how
do you read it? Ha, jokes on you I don't need documentation. Just kidding, 
on this system I'm using Links as a terminal web browser. Now it should be
obvious that this is not the most efficient way to do this, however the goal
of this project was to see just how far you could push only using the
terminal. Well, more accurately a terminal emulator and GUI. Yeah yeah yeah,
I know it's not exactly "only" terminal but close enough. I'm using BSPWM
because I like the configuration via a command line client and SXHKD
