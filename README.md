# vagrant-fuel-iso
Vagrant configuration that eases building Fuel ISOs

Run

```
vagrant up
vagrant ssh
sudo su
salt-call state.highstate
cd /sources/fuel-main
make iso
```
