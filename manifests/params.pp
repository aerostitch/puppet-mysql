class mysql::params {
  case $::osfamily {
    Debian: {
      $mysql_pkgs     = [ 'mysql-server',
                          'mysql-client',
                          'mysql-common',
                          'mysql-testsuite']
      $my_cnf_path    = '/etc/mysql/my.cnf' 
      $mysql_data_dir = '/var/lib/mysql'
      $mysql_svc_name = 'mysql'
    }
  }
}
