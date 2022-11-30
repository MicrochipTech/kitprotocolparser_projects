Kit Protocol Parser Host Projects - Kit Protocol Library
===========================================================

Introduction
------------------------
This code base implements an object-oriented C library which supports
Microchip CryptoAuth devices.  The family of devices supported currently are:

- [ATECC608B](http://www.microchip.com/ATECC608B)
- [ATECC608A](http://www.microchip.com/ATECC608A)
- [ATECC508A](http://www.microchip.com/ATECC508A)
- [ATECC108A](http://www.microchip.com/ATECC108A)
- [ATSHA204A](http://www.microchip.com/ATSHA204A)

Prerequisite skills:
  - strong C programming and code reading
  - Knowledge of flashing microcontrollers with new code
  - Familiarity with Microchip CryptoAuth device functionality

Using Git to Incorporate Kitprotocol_parser library as submodule
------------------------------------------------------------------
You can include this project in your own project under git

Using kitprotocol_parser as a git submodule, you can maintain your application separately from kitprotocol_parser.

If your project is already in git but you haven’t yet integrated kitprotocol_parser, change to the directory
where you want to put kitprotocol_parser.

```bash
git submodule add -b master <giturl to kitprotocol_parser>
```

This adds kitprotocol_parser library as a subdirectory and separate git repo within your own project.
Changes and commits to your project vs kitprotocol_parser will remain separated into each respective repository.

If there is a project you want to checkout that already incorporates kitprotocol_parser as a submodule
if you clone the repo that incorporates kitprotocol_parser, after cloning, you'll still need to fill out the
kitprotocol_parser submodule after cloning:

```bash
git submodule init
git submodule update –remote
cd kitprotocol_parser
git checkout master
```

Release notes for DM320118
------------------------------------------------------
 1.0.6
  - Updated SPI for Fast Crypto reads

 1.0.4
  - Discovery issue for CryptoAUTH-XPRO boards are fixed

 1.0.3
  - Added UART interface to host

List of Host Projects
-----------------------------
Project Title: cryptoauth_trust_platform (DM320118 as host)
  -
Connection Details:
  - Cypto Auth Trust Platform board which is having ATECC608A on board.

Notes:
  - Create kitprotocol_parser_config.h to define supported HAL interfaces and Max devices to discover

Result:
  - Discover the CryptoAuthentication Device which is connected to host
  - Result can be viewed on Serial Interface, configured as 115200-8-N-1