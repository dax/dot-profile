execute "default-env" do
  command "[ -f /usr/bin/virtualenvwrapper.sh ] && . /usr/bin/virtualenvwrapper.sh && mkvirtualenv default"
  creates "#{ENV['HOME']}/.virtualenvs/default"
end
