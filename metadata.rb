name             'greenhouse'
maintainer       'VPACK'
maintainer_email 'VPackiriswamy-consultant@scholastic.com'
license          'MIT'
description      'Greenhouse Static Site'
version          '0.0.1'

%w{ apt nginx datadog }.each do |cookbook|
  depends cookbook
end

depends 'consul-template', '~> 0.8.0'
depends 'consul' , '= 0.10.1'

supports 'ubuntu'
supports 'centos7'

