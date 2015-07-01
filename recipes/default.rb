#
# Cookbook Name:: ngxtestsite
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.
#

include_recipe 'apt'
include_recipe 'nginx'

user 'www-data'
 
directory '/var/www/nginx-default' do
  owner 'www-data'
  group 'www-data'
  mode '0755'
  recursive true
  action :create
end
 
file '/var/www/nginx-default/index.html' do
  owner 'www-data'
  group 'www-data'
  mode '0755'
  content 'Welcome to the Greenhouse @ Scholastic'
  action :create
end

include_recipe 'greenhouse::datadog'
