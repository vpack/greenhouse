#
# Cookbook Name:: ngxtestsite
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.
#

include_recipe 'apt'
include_recipe 'nginx'
include_recipe "consul"
include_recipe "chef-consul-template"


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

consul_service_def 'greenhouse-webserver' do
  port 80
  tags ['http']
  check(
    interval: '3s',
    http: 'http://localhost:80'
  )
  notifies :reload, 'service[consul]'
end


#node.default['datadog']['api_key'] = "5b74b9ca1c6be82cdb7dcc9f5c9d7446"
#node.default['datadog']['application_key'] = "3735348a84ac0f590fecb0cfc31f2f849726aeb9"
#
#include_recipe 'datadog::dd-agent'
