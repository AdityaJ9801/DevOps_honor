# Ensure the directory exists
file { 'D:/DevOps/Puppet/Puppet-lab-problems':
  ensure => directory,
}

# Ensure the file exists and depends on the directory
file { 'D:/DevOps/Puppet/Puppet-lab-problems/student_welcome.txt':
  ensure  => present,
  content => "Puppet successfully managed this file!\n",
  require => File['D:/DevOps/Puppet/Puppet-lab-problems'],
}