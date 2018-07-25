#
# Cookbook:: chef_wordpress
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
apt_update 'update'

apt_package 'php7.0-fpm' do
  action :install
end

apt_package 'php7.0-mysql' do
  action :install
end

apt_package 'php7.0-curl' do
  action :install
end

apt_package 'php7.0-gd' do
  action :install
end

apt_package 'php7.0-mbstring' do
  action :install
end

apt_package 'php7.0-mycrypt' do
  action :install
end

apt_package 'php7.0-xml' do
  action :install
end

apt_package 'php7.0-xmlrpc' do
  action :install
end

apt_package 'apache2' do
  action :install
end

directory '/home/ubuntu/wordpress' do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

remote_file '/home/ubuntu/wordpress_latest.tar.gz' do
  source 'https://wordpress.org/latest.tar.gz'
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

execute 'untar_wordpress' do
  command 'tar xvf /home/ubuntu/wordpress_latest.tar.gz -C /home/ubuntu/wordpress/'
end