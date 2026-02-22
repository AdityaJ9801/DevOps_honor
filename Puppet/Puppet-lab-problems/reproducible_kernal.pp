# Reproducible Kernel Manifest for Windows
# Goal: Teach students that "latest" is the enemy of reproducibility

# 1. Install Python 3.14 specifically via Chocolatey
package { 'python314':
  ensure   => installed,
  provider => 'chocolatey',
}

# 2. Use Exec to install exact versions of libraries
exec { 'install_reproducible_libraries':
  command => 'C:/Python314/python.exe -m pip install pandas==2.0.3 numpy==1.24.4',
  path    => ['C:/Python314', 'C:/Windows/System32'],
  unless  => 'C:/Python314/python.exe -m pip show pandas | findstr "Version: 2.0.3"',
  require => Package['python314'],
}

# 3. Notify students of success
notify { 'Reproducible Kernel Ready':
  message => "Python 3.14 with pandas==2.0.3 and numpy==1.24.4 installed. No 'latest' used!",
}