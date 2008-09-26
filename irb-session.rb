require 'active_resource'
def _______
puts 'hi'
______
_______
require 'lib/lighthouse'
Lighthouse.account = 'remitaylor'
Lighthouse.authenticate 'remi@remitaylor.com', gets
Lighthouse.authenticate 'remi@remitaylor.com', gets.strip
Lighthouse.token = 'c0937588f59fba5aac4ae8d80da5ce87c3497753'
projects = Lighthouse::Project.find(:all)
project.first
projects.first
projects.first.attributes.keys
projects.map &:name
leo = projects.find {|p| p.name == 'leo' }
leo.tickets.length
leo.milestones
leo.milestones.first
leo.milestones.first.name
leo.milestones.first.attributes.keys
leo.milestones.first.title
leo.milestones.first.tickets
leo.milestones.first.methods.sort - Object.methods
leo.tickets.first
leo.tickets.group {|t| t.milestone_id }
leo.tickets.group_by {|t| t.milestone_id }
by_milestone = leo.tickets.group_by {|t| t.milestone_id }
by_milestone.length
by_milestone.first
by_milestone.first.first.milestone_id
y by_milestone.first
y by_milestone.first.class
by_milestone.first.class
by_milestone.first.length
by_milestone.first.first
require '../lib/jira4r/jira4r'
require 'jira4r/jira4r'
Jira4R::JiraTool.new 2, "http://hickory.eol.org:8080"
jira = Jira4R::JiraTool.new 2, "http://hickory.eol.org:8080"
jira.login('rtaylor',gets.strip)
require 'mechanize'
mech = WWW::Mechanize.nenw
mech = WWW::Mechanize.new
mech.get('http://hickory.eol.org:8080/secure/Dashboard.jspa') do |page|
x = mech.get('http://hickory.eol.org:8080/secure/Dashboard.jspa')
x.forms
x.forms.length
y = x.forms.first {|f| f.os_username = 'rtaylor'; f.os_password = gets.strip; }.click_button
p = gets.strip
p
y = x.forms.first {|f| f.os_username = 'rtaylor'; f.os_password = p; }.click_button
y.html
page
mecho
mech
page = mech.get 'http://hickory.eol.org:8080/secure/Dashboard.jspa'
form = page.forms.first
form.os_username = 'rtaylor'
form
form.os_password = p
page = mech.submit form
mech.submit(form)
require 'logger'
 agent = WWW::Mechanize.new{|a| a.log = Logger.new(STDERR) }
page = agent.get "http://hickory.eol.org:8080/secure/Dashboard.jspa"
form.os_password = gets.strip
page = agent.submit form
inside = agent.get 'http://hickory.eol.org:8080/secure/Dashboard.jspa'
