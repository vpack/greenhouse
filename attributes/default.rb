default['consul']['service_mode'] = 'client'

default['consul']['server_ui'] = true
default['consul']['datacenter'] = "aws-us-east"
#default['consul']['servers'] =  [ "10.44.215.162", "10.44.211.72", "10.44.212.204" ]
default['consul']['servers'] =  %w{10.44.215.162 10.44.211.72 10.44.212.204}

default['consul']['config']['start_join'] = %w{10.44.215.162 10.44.211.72 10.44.212.204}
