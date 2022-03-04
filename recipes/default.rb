#
# Cookbook:: bttest
# Recipe:: default
#

log 'rel7' if el7?
log 'not rel7' unless el7?

include_recipe 'ntp::default'
# include_recipe 'wbc_provider::default'

file '/tmp/el7.cfg' do
  content '<html>This is a configuration file.</html>'
  owner 'root'
  group 'root'
  mode '0644'
end

cookbook_file '/tmp/access_test.txt' do
  source 'access_test.txt'
  owner 'root'
  group 'root'
  mode '0644'
  action :create
end

cmd = 'ls /tmp/*cfg > /tmp/files.lst'

execute 'check tmp' do
  command cmd
end
