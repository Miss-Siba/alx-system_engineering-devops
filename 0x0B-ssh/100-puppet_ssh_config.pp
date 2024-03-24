# Ensure the SSH client configuration file exists

file { '/etc/ssh/ssh_config':
  ensure => present,
}

# Ensure SSH private key is configured
file_line { 'SSH Private Key':
  path  => '/etc/ssh/ssh_config',
  line  => '    IdentityFile ~/.ssh/school',
  match => '^#\s*IdentityFile\s+~/.ssh/school$',
}
# Deny Password Authentication
file_line { 'Deny Password Authentication ':
  path  => '/etc/ssh/ssh_config',
  line  => '    PasswordAuthentication no',
  match => '^#\s*PasswordAuthentication\s+yes$',
}
