require 'redmine'

# autoload magic
Dir::foreach(File.join(File.dirname(__FILE__), 'lib')) do |file|
  next unless /\.rb$/ =~ file
  require file
end

Redmine::Plugin.register :redmine_github_links do
  name 'Redmine Github Links plugin'
  author 'Krzysztof Goj'
  description 'This plugin adds wiki macro for easy linking to GitHub'
  version '0.0.1'
  url 'http://github.com/goj/redmine_github_links'
  author_url 'http://krzysiek-goj.blogspot.com'
end
