name 'bttest'
maintainer 'Dac Do'
maintainer_email 'dac.do@dttsolutions-it.com'
license 'Apache-2.0'
description 'Installs and configures ntp'
version '0.1.0'
chef_version '>= 15'

supports 'redhat'
supports 'centos'

depends 'ntp', '~> 3.0'
# depends 'wbc_provider'

source_url 'https://github.com/dacdo/bttest-cookbook'
issues_url 'https://github.com/dacdo/bttest-cookbook/issues'
