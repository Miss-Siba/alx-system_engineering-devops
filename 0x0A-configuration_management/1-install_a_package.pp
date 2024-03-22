#1-install_a_package.pp

exec { 'update_flask_werkzeug':
  command => 'pip3 install --upgrade flask werkzeug',
  path    => ['/usr/bin', '/usr/local/bin'],
}

exec { 'install_flask':
  command => 'pip3 install flask==2.1.0',
  path    => ['/usr/bin', '/usr/local/bin'],
  unless  => 'pip3 show flask | grep -q Version',
  require => Exec['update_flask_werkzeug'],
}
