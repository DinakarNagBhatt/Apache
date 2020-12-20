# @summary A short summary of the purpose of this class
#
class apache::install {
  package { 'httpd':
   ensure => present,
  }
}
