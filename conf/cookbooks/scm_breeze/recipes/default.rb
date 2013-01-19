link "#{ENV['HOME']}/.scm_breeze" do
  to "#{ENV['PWD']}/../scm_breeze"
end

link "#{ENV['HOME']}/.git.scmbrc" do
  to "#{ENV['PWD']}/../dot-git.scmbrc"
end

link "#{ENV['HOME']}/.smcbrc" do
  to "#{ENV['PWD']}/../dot-smcbrc"
end
