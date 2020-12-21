# @summary A short summary of the purpose of this class
#
class apache::service {
  service { "${apache::service_name}":
    ensure => $apache::service_ensure,
    enable => $apache::service_enable,
    hasrestart => true,
    loglevel => debug,
  }
}
