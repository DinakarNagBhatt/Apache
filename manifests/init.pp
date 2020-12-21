# @summary A short summary of the purpose of this class
#
class apache (
  String $install_name,
  String $install_ensure,
  String $config_path,
  String $config_ensure,
  String $service_name,
  String $service_ensure,
  Boolean $service_enable,
  String[1] $vhosts_owner,
  String[1] $vhosts_group,
  String[1] $vhosts_dir,
) {
  contain apache::install
  contain apache::config
  contain apache::service

  Class['::apache::install']
  -> Class['::apache::config']
  ~> Class['::apache::service']
}
