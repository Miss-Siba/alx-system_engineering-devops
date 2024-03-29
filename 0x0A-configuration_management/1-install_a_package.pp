#!/usr/bin/puppet

# Install Werkzeug to their latest versions
package { 'Werkzeug':
  ensure   => '2.1.1',
  provider => 'pip3',
}

# Install Flask version 2.1.0 using pip3
package { 'flask':
  ensure   => '2.1.0',
  provider => 'pip3',
}
