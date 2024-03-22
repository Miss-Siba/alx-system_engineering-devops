#!/usr/bin/puppet

# Update Flask and Werkzeug to their latest versions
exec { 'update_flask_werkzeug':
  command => 'pip3 install --upgrade flask werkzeug',
  path    => ['/usr/bin', '/usr/local/bin'],
}

# Install Flask version 2.1.0 using pip3
package { 'flask':
  ensure   => '2.1.0',
  provider => 'pip3',
  require  => Exec['update_flask_werkzeug'],
}
