link "#{ENV['HOME']}/.gitconfig" do
  to "#{ENV['PWD']}/../dot-gitconfig"
end

link "#{ENV['HOME']}/.gitignore" do
  to "#{ENV['PWD']}/../dot-gitignore"
end

directory "#{ENV['HOME']}/local/bin" do
  recursive true
end

Dir.glob(File.join(ENV['PWD'], "..", "bin", "*")).each do |f|
  link "#{ENV['HOME']}/local/bin/#{File.basename f}" do
    to f
  end
end

[ "git-flow",
  "git-flow-feature",
  "git-flow-hotfix",
  "git-flow-init",
  "git-flow-release",
  "git-flow-support",
  "git-flow-version",
  "gitflow-common",
  "gitflow-shFlags" ].each do |script|
  link "#{ENV['HOME']}/local/bin/#{script}" do
    to "#{ENV['PWD']}/../gitflow/#{script}"
  end
end

directory "#{ENV['HOME']}/.completion.d"
link "#{ENV['HOME']}/.completion.d/git-flow-completion" do
  to "#{ENV['PWD']}/../git-flow-completion/git-flow-completion.bash"
end

link "#{ENV['HOME']}/local/bin/git-imerge" do
  to "#{ENV['PWD']}/../git-imerge/git-imerge"
end

link "#{ENV['HOME']}/local/bin/python2" do
  to "/usr/bin/python2.7"
end
