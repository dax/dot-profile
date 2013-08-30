package "python"
package "python-dev"
package "python-virtualenv"
if platform?("debian")
  package "virtualenvwrapper"
else
  package "python-virtualenvwrapper"
end
