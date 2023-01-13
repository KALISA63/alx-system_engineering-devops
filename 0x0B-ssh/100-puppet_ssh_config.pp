# Modifies ssh_config file

file { '/etc/ssh/ssh_config':
  ensure => present,
}
-> file_line { 'change pass id to /etc/ssh/ssh_config':
  path => '/etc/ssh/ssh_config',
  line => '    PasswordAuthentication no',
}
file_line { 'change IdentutyFile to /etc/ssh/ssh_config':
  path => '/etc/ssh/ssh_config',
  line => '    IdentityFile ~/.ssh/school',
}
