module GitHubMacro
  Redmine::WikiFormatting::Macros.register do
    desc "Displays a link to GitHub\n\n" +
      " @{{github(user_repo, revision, text?)}}@"
    macro :github do |obj, args|
      repo = args[0].strip
      sha = args[1].strip
      text = args[2] || sha
      return '<a class="github-link" href="http://github.com/'+ repo + '/commit/' + sha + '">' + text + '</a>'
    end
  end
end

