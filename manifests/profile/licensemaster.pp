
# Class: splunk::profile::licensemaster
#
# This module manages splunk::profile::licensemaster
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#
# vim: ts=2 sw=2 et
#
# == Class: splunk::profile::licensemaster
#
# The Splunk class takes are of installing and configuring a Splunk component of License Master
# based on the provided parameters. 

class splunk::profile::licensemaster {

  $license_master = lookup("splunk::license_master", String, "first", undef)
  notify { "first $license_master": }
  
  $license_master = undef
  notify { "replaced $license_master": }

  # license master should not be pointing to another master.  pls confirm?
  class { 'splunk' :
    license_master => $license_master,
  }

}