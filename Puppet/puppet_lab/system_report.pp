# Using top-level facts is safer for beginners
$msg = "System Audit for: ${facts['hostname']}
---------------------------------------
CPU Count: ${facts['processors']['count']}
Memory:    ${facts['memoryfree']}
OS:        ${facts['os']['family']} ${facts['os']['release']['full']}
Uptime:    ${facts['uptime']}
---------------------------------------"

notify { 'System Report':
  message => $msg,
}