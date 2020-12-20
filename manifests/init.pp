# @summary A short summary of the purpose of this class
#
class apache (
  String $install_name,
  String $install_ensure,
) {
  include apache::install
}
