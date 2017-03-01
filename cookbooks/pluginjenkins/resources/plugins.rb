action :install do

  jenkins_plugin 'github' do
    options '-deploy -cold'
  end

  jenkins_plugin 'buildresult-trigger' do
    options '-deploy -cold'
  end

  jenkins_plugin 'artifactory' do
    options '-deploy -cold'
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
