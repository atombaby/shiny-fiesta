#
# Cookbook Name:: package
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

template "config.txt" do
    path '/var/tmp/config.txt'
    source node['package']['template']
    cookbook node['package']['wrapper']
    variables({
        :variable => node["package"]["text"]
    })
end

