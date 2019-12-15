<h1 align="center">
CoreOS bootstrap ignition/cloud-inits
</h1>

At the installation, a ignition/cloud-init (deprecated) file should be provided to accomplish a first setup in other to be able to access from there via SSH.

### Instructions
At the live environment of CoreOS ISO, just download the Git repo and use the appropriate ignition/cloud-init YAML file:
```
sudo su - root
git clone git@git.secandsys.com:/secandsys/SAS.git

# Ignition / Cloud-init automatically restarts networkd service. At this point, installation can be done:
coreos-install -d /dev/<device> -c coreos-bootstrap/<platform>/<hostname>.{ign/yml}

# When installation completes, reboot the server:
reboot
```
