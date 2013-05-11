link "#{ENV['HOME']}/.rbenv" do
  to "#{ENV['PWD']}/../rbenv"
end

directory "#{ENV['HOME']}/.rbenv/plugins"

execute "install ruby-build rbenv plugin" do
  command "cp -a #{ENV['PWD']}/../ruby-build #{ENV['HOME']}/.rbenv/plugins/"
end
