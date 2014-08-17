class mysql::config (
  $user,
  $group,
){
  include mysql::params
  file { $mysql::params::my_cnf_path:
    ensure  => present,
    source  => 'puppet:///modules/mysql/my.cnf',
    owner   => $user,
    group   => $group,
    require => Class['mysql::install'],
    notify  => Class['mysql::service'],
  }

  file { $mysql::params::mysql_data_dir:
    owner   => $user,
    group   => $group,
    recurse => true,
    require => File[ $mysql::params::my_cnf_path ],
  }
}
