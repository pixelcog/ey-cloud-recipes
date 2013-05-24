#
# Cookbook Name:: php
# Recipe:: pecl_memcached
#

ey_cloud_report "php-ini-custom" do
	message "customizing php config"
end

template "/tmp/php-custom.ini" do
	source "php-custom.ini.erb"
	mode 0644
	variables(
		:timezone => 'America/Chicago',
		:allow_url_fopen => 'On'
	)
end

bash "copy config to cgi-php5.4" do
	user "root"
	code %(cp /tmp/php-custom.ini /etc/php/cgi-php5.4/ext-active/custom.ini)
end

bash "copy config to cli-php5.4" do
	user "root"
	code %(cp /tmp/php-custom.ini /etc/php/cli-php5.4/ext-active/custom.ini)
end

bash "copy config to fpm-php5.4" do
	user "root"
	code %(cp /tmp/php-custom.ini /etc/php/fpm-php5.4/ext-active/custom.ini)
end
