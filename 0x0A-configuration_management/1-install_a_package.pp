# Define a Puppet class for installing Flask
#class flask_installation {
    package { 'python3-pip': # Ensure pip3 is installed
      ensure => installed,
    }

    exec { 'install_flask':
      command => ['/usr/bin/pip3 install Flask==2.1.0'],
      path    => ['/usr/bin', '/usr/local/bin'],
      unless  => '/usr/bin/pip3 show Flask | grep -q "Version: 2.1.0"',
      require => Package['python3-pip'],
    }
#}

# Include the class to ensure installation
#include flask_installation

