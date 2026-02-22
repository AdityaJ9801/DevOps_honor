exec { 'set-PROJECT_PATH':
  command => 'C:\\Windows\\System32\\setx.exe PROJECT_PATH "D:\\DevOps\\Puppet\\Puppet-lab-problems" /M',
  unless  => 'C:\\Windows\\System32\\setx.exe PROJECT_PATH | findstr "D:\\DevOps\\Puppet\\Puppet-lab-problems"',
}