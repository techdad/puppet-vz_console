# OpenVZ console (vz_console)

#### Table of Contents

1. [Description](#description)
1. [Usage - Configuration options and additional functionality](#usage)
1. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
1. [Development - Guide for contributing to the module](#development)
1. [Roadmap - The whishlist/to do loist for module development](#roadmap)

## Description

Enable the OpenVZ login console.

 * Primarily targetted at Proxmox PVE 3.x containers.
 * Initial version is for *Centos / RHEL 6.x only!*


## Usage

Very simple, just include the class:

```
node default {

    include vz_console

}
```

## Reference

There are no variables to set, this module is a direct puppet implementation of the instructions at: [pve.proxmox.com/wiki/OpenVZ_Console](https://pve.proxmox.com/wiki/OpenVZ_Console).

## Development

Just send a pull request.

## Roadmap

Add support for other distributions and releases (CentOS/RHEL 7.x, Debian, Ubunutu, etc.)
