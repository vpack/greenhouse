name             'greenhouse'
maintainer       'VPACK'
maintainer_email 'VPackiriswamy-consultant@scholastic.com'
license          'MIT'
description      'Greenhouse Static Site'
version          '0.0.1'

%w{ apt nginx datadog consul }.each do |cookbook|
  depends cookbook
end
 
supports 'ubuntu'
supports 'centos7'

