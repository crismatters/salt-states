# Salt States
Some basic salt states for understanding configurarion management

# Salt Orch
Some orchestration states for a webserver deployment using orchestration runner

# Vagrantfile
Use this Vagrant environment to test the complete orchestration states
```ruby
 Vagrant.configure(2) do |config|
  net = "192.168.56"
```
### Salt Master (Ubuntu 18.04 Bionic Beaver)
```ruby
  config.vm.define "master" do |master|
    master.vm.hostname = 'salt'
    master.vm.box = 'bento/ubuntu-18.04'
    master.vm.network :private_network, ip: "#{net}.10"
  end
```
### Salt Web1 (Debian 9.11 Stretch)
```ruby 
    config.vm.define "web1" do |web1|
      web1.vm.hostname = 'web1'
      web1.vm.box = "bento/debian-9.11"
      web1.vm.network :private_network, ip: "#{net}.11"
    end
```
### Salt FTP1 (CentOS 6.9)
```ruby
  config.vm.define "ftp1" do |ftp1|
     ftp1.vm.hostname = 'ftp1'
     ftp1.vm.box = "bento/centos-7"
     ftp1.vm.network :private_network, ip: "#{net}.12"
  end
```
 ### Salt DB1 (Ubuntu 18.04 Bionic Beaver)
 ```ruby
   config.vm.define "db1" do |db1|
       db1.vm.hostname = 'db1'
       db1.vm.box = "bento/ubuntu-18.04"
       db1.vm.network :private_network, ip: "#{net}.13"
  end
```
 ### Salt minion (CentOS 6.9)
```ruby 
    config.vm.define "minion" do |minion|
       minion.vm.hostname = 'minion1'
       minion.vm.box = "bento/centos-7"
       minion.vm.network :private_network, ip: "#{net}.20"
   end
end
```
