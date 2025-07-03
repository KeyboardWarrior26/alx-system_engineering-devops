# 7-puppet_install_nginx_web_server.pp
# Install and configure Nginx with a custom 301 redirection and Hello World page

# Install Nginx
package { 'nginx':
  ensure => 'installed',
}

# Create the Hello World page
file { '/var/www/html/index.html':
  ensure  => 'file',
  content => 'Hello World!',
  require => Package['nginx'],
}

# Configure Nginx server block
file { '/etc/nginx/sites-available/default':
  ensure  => 'file',
  content => "
server {
    listen 80;
    server_name _;

    location / {
        root /var/www/html;
        index index.html;
    }

    location /redirect_me {
        return 301 https://www.youtube.com/watch?v=QH2-TGUlwu4;
    }
}
",
  require => Package['nginx'],
  notify  => Service['nginx'],
}

# Ensure Nginx service is running and enabled
service { 'nginx':
  ensure => 'running',
  enable => true,
  require => Package['nginx'],
}

