# using puppet to make changes to the default ssh config file
# so that one can connect to a server without typing a password.

file { '/etc/ssh/ssh_config':
  ensure => present,
}

# Ensure SSH private key is configured
file_line { 'SSH Private Key':
  path               => '/etc/ssh/ssh_config',
  line               => 'PasswordAuthentication no',
  match              => '^#PasswordAuthentication',
}
# Deny Password Authentication
file_line { 'Deny Password ':
  path               => '/etc/ssh/ssh_config',
  line               => 'IdentityFile `/.ssh/school',
  match              => '^#IdentityFile',
}
