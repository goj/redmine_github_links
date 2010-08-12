require 'redmine'
class GitHubLinksApplicationHooks < Redmine::Hook::ViewListener

  def view_layouts_base_html_head(context = {})
    stylesheet_link_tag("/redmine/plugin_assets/redmine_github_links/stylesheets/github_links.css")
  end

end
