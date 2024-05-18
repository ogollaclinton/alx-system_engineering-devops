# Define a Puppet class for killing the process
#class kill_process {
    exec { 'kill_killmenow_process':
        command     => 'pkill killmenow',
        onlyif      => 'pgrep killmenow',
        path        => ['/bin', '/usr/bin', '/sbin', '/usr/sbin'],
        refreshonly => true,
    }
#}

# Include the class to ensure the process is killed
#include kill_process

