# 1. Ensure the directory exists
file { 'C:/PuppetLab':
  ensure => directory,
}

# 2. Ensure the file exists (and wait for the directory to be ready)
file { 'C:/PuppetLab/student_welcome.txt':
  ensure  => present,
  content => "Puppet successfully managed this file!\n",
  require => File['C:/PuppetLab'], # This tells Puppet: "Do the folder first!"
}