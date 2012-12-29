link "#{ENV['HOME']}/.rbenv" do
  to "#{ENV['PWD']}/../rbenv"
end

directory "#{ENV['HOME']}/.rbenv/plugins"

link "#{ENV['HOME']}/.rbenv/plugins/ruby-build" do
  to "#{ENV['PWD']}/../ruby-build"
end
