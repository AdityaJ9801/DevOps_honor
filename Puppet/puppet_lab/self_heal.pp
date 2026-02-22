file { 'D:/DevOps/Puppet/puppet-lab/IMPORTANT_CLASS_RULES.txt':
  ensure  => present,
  content => "1. Don't touch the hardware.\n2. Always use Puppet for changes.\n3. Stay curious!",
  # mode    => '0444', # This makes it Read-Only for everyone!
}