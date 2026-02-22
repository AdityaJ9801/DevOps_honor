# Automated Workspace Manifest
# Goal: Automate the boring start of every project

# 1. Ensure the main workspace directory exists
file { 'D:/DevOps/Puppet/Puppet-lab-problems/DS_Lab':
  ensure => directory,
}

# 2. Create a .gitignore file with common ignores
file { 'D:/DevOps/Puppet/Puppet-lab-problems/DS_Lab/.gitignore':
  ensure  => present,
  content => "*.pyc\n__pycache__/\n.env\n.ipynb_checkpoints/\n",
  require => File['D:/DevOps/Puppet/Puppet-lab-problems/DS_Lab'],
}

# 3. Create a requirements.txt file with pinned libraries
file { 'D:/DevOps/Puppet/Puppet-lab-problems/DS_Lab/requirements.txt':
  ensure  => present,
  content => "pandas==2.0.3\nnumpy==1.24.4\nmatplotlib==3.7.2\nscikit-learn==1.3.0\njupyterlab==4.0.5\n",
  require => File['D:/DevOps/Puppet/Puppet-lab-problems/DS_Lab'],
}

# 4. Notify students of success
notify { 'Automated Workspace Ready':
  message => "D:/DevOps/Puppet/Puppet-lab-problems/DS_Lab created with .gitignore and requirements.txt pre-filled.",
}