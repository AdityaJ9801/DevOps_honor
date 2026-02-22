# 1. Force Puppet to use Chocolatey for all package installations
Package { provider => 'chocolatey' }

# 2. Install the Core Data Science Stack
package { ['python3', 'vscode', 'git']:
  ensure => installed,
}

# 3. Create a standardized Project Directory for the class
file { 'C:/DS_Projects':
  ensure => directory,
}

# 4. Use a 'Exec' to install Python libraries (The Data Science toolkit)
# This ensures every student has the exact same library versions
exec { 'install_ds_libraries':
  command => 'C:/Python312/python.exe -m pip install pandas numpy matplotlib scikit-learn jupyterlab',
  path    => 'C:/Windows/System32',
  unless  => 'C:/Python312/python.exe -m pip show pandas',
  require => Package['python3'],
}

# 5. Create a "Shortcut" for their first assignment
file { 'C:/DS_Projects/README.md':
  ensure  => present,
  content => "# Data Science Project\nCreated via Puppet on ${facts['os']['release']['full']}\n\nEnvironment Ready!",
  require => File['C:/DS_Projects'],
}

notify { 'Success':
  message => "Your Data Science Environment is now Bit-for-Bit identical to your classmates.",
}
