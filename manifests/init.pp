# @summary A short summary of the purpose of this class
#
class apache (
  String $install_name,
  String $install_ensure,
  String $config_path,
  String $config_ensure,
) {
  contain apache::install
  contain apache::config

  Class['::apache::install']
  -> Class['::apache::config']
}
