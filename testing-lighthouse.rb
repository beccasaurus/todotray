#! /usr/bin/env ruby
$:.unshift File.dirname(__FILE__) + '/lib'
require 'rubygems'
require 'simpletray'

SimpleTray.icon_directory = File.join File.dirname(__FILE__), 'icons'

module SimpleTray::Builder

  # unfortunately, this currently won't support multiple accounts  :(
  require 'lighthouse-api/lib/lighthouse'
  def lighthouse account, token, name = 'Lighthouse', icon = 'lighthouse.png'
    ::Lighthouse.account = account
    ::Lighthouse.token   = token
    menu name, icon do
      begin
        Lighthouse::Project.find(:all).each {|p| item p.name { msgbox "You clicked project: #{p.name}" } }
      rescue
        item "the Lighthouse API isn't working right now"
      end
    end
  end

end

SimpleTray.app 'TODO' do

  lighthouse 'remitaylor', 'c0937588f59fba5aac4ae8d80da5ce87c3497753'

  basecamp {}


  jira {}
  ____
  exit
end
