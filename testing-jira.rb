#! /usr/bin/env ruby

require 'rubygems'
require 'simpletray'
require 'jira4r'
require 'yaml'

# jira stuff requires
#   gem install soap4r
#   gem install remi-jira4r

SimpleTray.icon_directory = File.join File.dirname(__FILE__), 'icons'

options = YAML.load_file 'jira.yml'
$jira = Jira::JiraTool.new 2, options[:url]
puts "Logging in ..."
$jira.login options[:username], options[:password]
$filters = $jira.getSavedFilters
puts "Logged in & loaded saved filters: #{ $filters.map {|f| f.name }.inspect }"

SimpleTray.app 'Jira' do

  # for each filter ...
  $filters.each do |filter|
    menu filter.name do

      # for each issues ...
      issues = $jira.getIssuesFromFilter filter.id
      if issues.empty?
        item('no issues'){ }
      else
        issues.each do |issue|
          issue_number = /-(\d*)$/.match(issue.key)[1]
          issue_url    = File.join options[:url], 'browse', issue.key
          item "\##{ issue_number } #{ issue.summary }" do
            cmd = "firefox #{ issue_url }"
            puts cmd
            `#{ cmd }`
          end
        end
      end

    end
  end
  ____
  exit
end
