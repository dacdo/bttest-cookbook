file_cache_path = Chef::Config[:file_cache_path]
# in kitchen, the cache_path is /tmp/kitchen/cache
guard_install = ::File.join(file_cache_path, 'to_run_install')
file guard_install
