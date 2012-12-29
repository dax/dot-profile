directory "#{ENV['HOME']}/.profile.d" do
  recursive true
end

link "#{ENV['HOME']}/.profile" do
  to "#{ENV['PWD']}/../dot-profile"
end

Dir.glob(File.join(ENV['PWD'], "..", "dot-profile.d", "*")).each do |f|
  link "#{ENV['HOME']}/.profile.d/#{File.basename f}" do
    to f
  end
end

directory "#{ENV['HOME']}/local/bin" do
  recursive true
end

link "#{ENV['HOME']}/.mailcap" do
  to "#{ENV['PWD']}/../dot-mailcap"
end
