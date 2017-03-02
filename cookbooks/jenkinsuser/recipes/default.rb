#
# Cookbook Name:: jenkinsuser
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

jenkins_password_credentials 'user' do
  id          'user-password'
  description 'user of jenkins'
  password    'jenkins'
end
