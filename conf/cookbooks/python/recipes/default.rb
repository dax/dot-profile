if platform?("debian")
  vew = "/etc/bash_completion.d/virtualenvwrapper"
else
  vew = "/usr/bin/virtualenvwrapper.sh"
end

execute "default-env" do
  command "bash -c '. #{vew} && mkvirtualenv default'"
  creates "#{ENV['HOME']}/.virtualenvs/default"
end
