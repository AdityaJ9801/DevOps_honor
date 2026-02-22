user { 'PuppetStudent':
  ensure     => present,
  comment    => 'A test user created via Puppet',
  password   => 'P@ssword123!',
  groups     => ['Users'],
  managehome => true,
}