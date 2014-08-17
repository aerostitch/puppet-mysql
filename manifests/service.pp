class mysql::service (
  $ensure,
  $enabled,
){
  include mysql::params
  service { $mysql::params::mysql_svc_name:
    ensure     => $ensure,
    hasstatus  => true,
    hasrestart => true,
    enable     => $enabled,
    require    => Class['mysql::config'],
  }
}
