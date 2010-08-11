module GitHubMacro
  Redmine::WikiFormatting::Macros.register do
    desc "Displays a link to GitHub\n\n" +
      " @{{github(user_repo, revision, text?)}}@"
    macro :github do |obj, args|
      repo = args[0].strip
      sha = args[1].strip rescue nil
      if sha then
        text = args[2].strip rescue sha
        return '<a class="github-link" href="http://github.com/'+ repo + '/commit/' + sha + '">' + text.strip + '</a>'
      else
        return '<a class="github-link" href="http://github.com/'+ repo + '">' + repo + '</a>'
      end
    end
  end
end

