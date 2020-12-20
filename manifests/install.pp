# @summary A short summary of the purpose of this class
#
class apache::install (
  $include_name   = $apache::params::install_name,
  $include_ensure = $apache::params::install_ensure,
) inherits apache::params {
  package { "${install_name}":
   ensure => $install_ensure,
  }
}
