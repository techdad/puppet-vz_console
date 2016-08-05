# Class: vz_console
# ===========================
#
# Enable the OpenVZ login console.
#
# Examples
# --------
#
# @example
#    {
#		include vz_console
#	}
#
# Authors
# -------
#
# Daniel Shaw <daniel@techdad.xyz>
#
# License
# -------
#
# Apache 2.0
#

class vz_console {

# create the config
file { '/etc/init/tty.conf':
  ensure => file,
  owner  => 'root',
  group  => 'root',
  mode   => '0644',
  source => 'puppet:///modules/vz_console/tty.conf',
}

# start the tty service in init, when config changes
exec { 'start_tty':
  command     => 'start tty',
  subscribe   => File['/etc/init/tty.conf'],
  refreshonly => true,
}

# vim: set tabstop=2 set softtabstop=2 set shiftwidth=2 set expandtab
