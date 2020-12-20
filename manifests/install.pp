# @summary A short summary of the purpose of this class
#
class apache::install {
  package { "${apache::install_name}":
   ensure => $apache::install_ensure,
  }
}
