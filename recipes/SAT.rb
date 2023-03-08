#
# Cookbook Name:: D085
# Recipe:: SAT
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
#
# This recipe would be designed to point to Satellite Terminal Server Image
package 'httpd'

service 'httpd' do
  action [:enable, :start]
end

template '/var/www/html/index.html' do # ~FC033
  source 'index.html.erb'
end
