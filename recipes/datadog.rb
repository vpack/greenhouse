#
# Cookbook Name:: greenhouse
# Recipe:: Datadog
#
# Copyright (c) 2015 The Authors, All Rights Reserved.
#

node.default['datadog']['api_key'] = "5b74b9ca1c6be82cdb7dcc9f5c9d7446"
node.default['datadog']['application_key'] = "3735348a84ac0f590fecb0cfc31f2f849726aeb9"

include_recipe 'datadog::dd-agent'
