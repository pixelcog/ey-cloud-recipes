#
# Cookbook Name:: php
# Recipe:: default

# Add the APC PECL extension
include_recipe "php::pecl_apc"

# Add the Memcached PECL extension
include_recipe "php::pecl_memcached"

# Reload PHP-FPM config
ey_cloud_report "php-fpm-reload" do
	message "restarting php-fpm"
end

bash "php-reload-config" do
	code "monit restart php-fpm"
	user "root"
end
