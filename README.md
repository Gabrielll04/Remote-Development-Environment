# About :notes:

This repository builds a dockerfile image with Arch Linux with scripts that configure a remote PC completely. It contains Yay package manager, git, Node dependencies, Elixir dependencies, LunarVim, zsh and etc.
To install packages using Yay, you need to change to builder user, to change users run:
~~~shell
su - builder
~~~
Then, you are able to install any package in AUR (Arch User Repository) with ```yay -S ${package-name}```, that's enought to install in any users. To back to root user, type "exit" on the terminal.
There's no way to work with 

# Persisting data

Sometimes, you need to run/close an container several times, you can keep the data so you don't lose what you were doing. To do this, run this command before running the container: 
~~~shell
docker volume create ${volume-name}
~~~
*Replace the ```${volume-name}``` to a name you like.*

After that, just run the container like this:
~~~shell
docker run -it -v ${volume-name}:/tmp/sources ${container-name}
~~~
*Replace the ```${container-name}``` to the name you used when building the image*

The path ```/tmp/sources/``` is a directory that is created on the build time and exists for this time, you can change it if you want. This is an exemple of how the last command should look like:
~~~bash
docker run -it source-codes:/tmp/sources remote-environment
~~~