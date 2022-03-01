name 'bttest'

cookbook 'bttest', path: '.'
cookbook 'test_cookbook', path: './test/integration/test_cookbook'

run_list 'bttest', 'test_cookbook'
# equivalent to the following line
# run_list 'bttest::default'

# Where to find external cookbooks:
default_source :supermarket
# default_source :artifactory, 'https://artifactory.srv.westpac.com.au/artifactory/api/chef/EntChef_Prod_Supermarket'
# default_source :artifactory, 'https://artifactory.srv.westpac.com.au/artifactory/api/chef/Ext_Community_Supermarket' do |s|
#   s.preferred_for 'line'
# end

