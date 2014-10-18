class phpfarm::packages {
  exec { 'apt-get update':
    path => ['/usr/bin'],
    before => Class['phpfarm::packages']
  }

  package {[
      'git',
      'curl',
      'build-essential',
      'libxml2-dev',
      'libssl-dev',
      'libbz2-dev',
      'libcurl4-openssl-dev',
      'libjpeg-dev',
      'libpng12-dev',
      'libmcrypt-dev',
      'libmhash-dev',
      'libmysqlclient-dev',
      'libpspell-dev',
      'autoconf',
      'libcloog-ppl0'
    ]:
    ensure => present,
    require => Exec['apt-get update']
  }
}
