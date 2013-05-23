#
# Cookbook Name:: php
# Recipe:: pecl_memcached
#

ey_cloud_report "php-pecl-memcached" do
	message "installing pecl memcached"
end

package "dev-php/pecl-memcached" do
	version "2.1.0"
	options "--autounmask-write"
	action :install
end
