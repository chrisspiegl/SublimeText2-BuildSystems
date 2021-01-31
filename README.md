SublimeText2-BuildSystems
=========================

![current status](https://img.shields.io/badge/current%20status-halted-red?style=flat-square)

## Halted Project

I lost motivation to work on this for now. The code is here if you want to take a look.

## About

Build systems for JavaC and CC (C/C++) for Mac OS X and Sublime Text 2. A blog post about this repository is at [my site](http://cspiegl.com/2012/10/30/st2-build-systems).


# Installation via Git
1. Open Terminal.app and call
```
cd ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/User/
```
1. Now you need to checkout the repository
```
git clone git://github.com/cspiegl/SublimeText2-BuildSystems.git
```
1. Change Directory to the newly cloned repository
```
cd ./SublimeText2-BuildSystems
```
1. Give the bash scripts right to be ran
```
chmod 755 javacRun.sh ccRun.sh
```
1. Restart Sublime Text 2


# Requirements
* For the C++ build system, you need the Xcode Command Line Tools installed!


# Ideas / Tutorials / Resources
* [Unofficial Documentation Build System](http://docs.sublimetext.info/en/latest/reference/build_systems.html)
* [Tutorial Build System](http://addyosmani.com/blog/custom-sublime-text-build-systems-for-popular-tools-and-languages/)
