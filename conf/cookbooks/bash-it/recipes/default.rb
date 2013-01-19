def enable type, name
  link "#{ENV['HOME']}/.bash_it/#{type}/enabled/#{name}" do
    to "#{ENV['HOME']}/.bash_it/#{type}/available/#{name}"
  end
end

def enable_alias name
  enable "aliases", name
end

def enable_completion name
  enable "completion", name
end

def enable_plugin name
  enable "plugins", name
end

link "#{ENV['HOME']}/.bash_it" do
  to "#{ENV['PWD']}/../bash-it"
end

link "#{ENV['HOME']}/.bashrc" do
  to "#{ENV['HOME']}/.bash_it/template/bash_profile.template.bash"
end

link "#{ENV['HOME']}/.bash_profile" do
  to "#{ENV['PWD']}/../dot-bash_profile"
end

Dir.glob(File.join(ENV['PWD'], "..", "custom", "*")).each do |f|
  link "#{ENV['HOME']}/.bash_it/custom/#{File.basename f}" do
    to f
  end
end

directory "#{ENV['HOME']}/.bash_it/aliases/enabled"
directory "#{ENV['HOME']}/.bash_it/completion/enabled"
directory "#{ENV['HOME']}/.bash_it/plugins/enabled"

directory "#{ENV['HOME']}/.bash_it/plugins/enabled"

enable_alias "general.aliases.bash"
enable_alias "heroku.aliases.bash"
enable_alias "less.aliases.bash"
enable_alias "tmux.aliases.bash"
enable_alias "bundler.aliases.bash"
enable_alias "maven.aliases.bash"
enable_alias "hg.aliases.bash"
enable_alias "rails.aliases.bash"
enable_alias "vim.aliases.bash"

enable_completion "git.completion.bash"
enable_completion "rake.completion.bash"
enable_completion "defaults.completion.bash"
enable_completion "ssh.completion.bash"
enable_completion "tmux.completion.bash"
enable_completion "gem.completion.bash"
enable_completion "git_flow.completion.bash"

enable_plugin "extract.plugin.bash"
enable_plugin "virtualenv.plugin.bash"
enable_plugin "base.plugin.bash"
enable_plugin "latex.plugin.bash"
enable_plugin "ssh.plugin.bash"
enable_plugin "_xterm.plugin.bash"
enable_plugin "battery.plugin.bash"
enable_plugin "hg.plugin.bash"
enable_plugin "nvm.plugin.bash"
enable_plugin "subversion.plugin.bash"
enable_plugin "zcd.plugin.bash"
enable_plugin "browser.plugin.bash"
enable_plugin "javascript.plugin.bash"
enable_plugin "tmux.plugin.bash"
enable_plugin "dirs.plugin.bash"
enable_plugin "jekyll.plugin.bash"
enable_plugin "ruby.plugin.bash"
enable_plugin "vagrant.plugin.bash"
enable_plugin "fasd.plugin.bash"
enable_plugin "java.plugin.bash"
enable_plugin "nginx.plugin.bash"
enable_plugin "rbenv.plugin.bash"
