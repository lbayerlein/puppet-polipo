# polipoproxy

#### Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with polipoproxy](#setup)
    * [What polipoproxy affects](#what-polipoproxy-affects)
    * [Beginning with polipoproxy](#beginning-with-polipoproxy)
4. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)

## Overview
It is a modul for configuring polipo as a forward caching proxy.

All of this is in a very young state. I will extend this later


## Module Description

This module install polipo from the repo and configures it. It gives parameters for the config file and creates an additional WPAD file for the browser. This file has an example content.

If you want to manage a leightweight squid alternative, you probably come to polipo. It has a proxy functionality with a tiny webserver included. You can roll out the file for you browser automatically. With dns or dhcp you can give the clients the info, to use this file.

## Setup

### What polipoproxy affects

* It installs the polipo packages for Debian and Ubuntu
* It installs the WPAD file for the proxy informations

### Beginning with polipoproxy

On top of this webpage, there is the command you have to use for installing it. Alternatively type this:

  puppet module install balu-polipoproxy


## Reference

Here, list the classes, types, providers, facts, etc contained in your module.
This section should include all of the under-the-hood workings of your module so
people know what the module is touching on their system but don't need to mess
with things. (We are working on automating this section!)

## Limitations

* Ubuntu
* Debian
