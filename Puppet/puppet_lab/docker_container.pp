class { 'docker': }

docker::run { 'container1':
  image   => 'nginx:latest',
  restart => 'always',
  ports   => ['8081:80'],
}

docker::run { 'container2':
  image   => 'nginx:latest',
  restart => 'always',
  ports   => ['8082:80'],
}

docker::run { 'container3':
  image   => 'nginx:latest',
  restart => 'always',
  ports   => ['8083:80'],
}

docker::run { 'container4':
  image   => 'nginx:latest',
  restart => 'always',
  ports   => ['8084:80'],
}

docker::run { 'container5':
  image   => 'nginx:latest',
  restart => 'always',
  ports   => ['8085:80'],
}