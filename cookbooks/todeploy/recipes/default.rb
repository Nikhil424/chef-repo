#
# Cookbook Name:: todeploy
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'git::default'
include_recipe 'deploy::pre-deploy'

deploy_code 'code_deployment' do
  action :deploy
end

include_recipe 'deploy::post-deploy'
