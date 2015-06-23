require 'serverspec'


# Required by serverspec
set :backend, :exec

describe package('nginx') do
  it { should be_installed }
end

describe "Nginx service" do

  it "is listening on port 80" do
    expect(port(81)).to be_listening
  end

  it "has a running service of nginx" do
    expect(service("nginx")).to be_running
  end

end

describe user('www-data') do
  it { should exist }
end

describe file('/var/www/nginx-default') do
  it { should be_directory }
end

describe file('/var/www/nginx-default/index.html') do
  it { should be_file }
end

# SELinux should be enforcing
describe selinux do
  it { should be_enforcing }
end
