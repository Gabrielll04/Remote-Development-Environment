# About :notes:

This repository builds a dockerfile image with Arch Linux with scripts that configure a remote PC completely. It contains Yay package manager, git, Node dependencies, Elixir dependencies, LunarVim, zsh and etc.
To install packages using Yay, you need to change to builder user, to change users run:
~~~shell
su - builder
~~~
Then, you are able to install any package in AUR (Arch User Repository) with ```yay -S ${package-name}```, that's enought to install in any users. To back to root user, type "exit" on the terminal.
There's no way to work with 
