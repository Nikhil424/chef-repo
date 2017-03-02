resource_name :pluginjenkins_plugins

action :install do

  jenkins_plugin 'github' do
    notifies :restart, 'service[jenkins]', :immediately
  end

  jenkins_plugin 'buildresult-trigger' do
    notifies :restart, 'service[jenkins]', :immediately
  end

  jenkins_plugin 'artifactory' do
    notifies :restart, 'service[jenkins]', :immediately
  end

end

action :uninstall do

  jenkins_plugin 'github' do
    action :uninstall
  end

  jenkins_plugin 'buildresult-trigger' do
    action :uninstall
  end

  jenkins_plugin 'artifactory' do
    action :uninstall
  end

end
