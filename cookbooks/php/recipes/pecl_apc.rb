#
# Cookbook Name:: php
# Recipe:: pecl_memcached
#

ey_cloud_report "php-pecl-apc" do
	message "installing pecl apc"
end

package "dev-php/pecl-apc" do
	action :install
end
