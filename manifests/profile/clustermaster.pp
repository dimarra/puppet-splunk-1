
# Class: splunk::profile::clustermaster
#
# This module manages splunk::profile::clustermaster
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
# == Class: splunk::profile::clustermaster
#
# The Splunk class takes are of installing and configuring a Splunk component of Cluster Master
# based on the provided parameters. 

class splunk::profile::clustermaster {

  $clustering_first = lookup("splunk::clustering", Hash, "first", "default value")
  notify { $clustering_first: }

  $clustering_deep = lookup("splunk::clustering", Hash, "deep", "default value")
  notify { $clustering_deep: }

  $clustering_unique = lookup("splunk::clustering", Hash, "unique", "default value")
  notify { $clustering_unique: }

  $clustering_hash = lookup("splunk::clustering", Hash, "hash", "default value")
  notify { $clustering_hash: }


  include splunk
#  class { 'splunk' :
#    clustering => { 
#      master   => undef,
#    }
#  }

}
