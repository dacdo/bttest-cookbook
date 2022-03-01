def el7?
  return true if platform_family?('rhel') && node['platform_version'].to_i == 7
  false
end
