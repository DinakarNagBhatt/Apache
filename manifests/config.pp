# @summary A short summary of the purpose of this class
# Managed any Apache Configurations
class apache::config {
  file { 'apache_config':
    ensure => $apache::config_ensure,
    path => $apache::config_path,
    source => "puppet:///modules/apache/${osfamily}.conf",
    mode => '0664',
    owner => 'root',
    group => 'root'
  }
}
