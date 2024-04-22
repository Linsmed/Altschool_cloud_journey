## Altschool second semester exam

- I automated the provisioning of two Ubuntu-based servers, named “Master” and “Slave”, using Vagrant.

![vagrant-automate](./images/vm-config.PNG)

- Then I ran the command below to bring up the two vms
  `vagrant up`

![vagrant-up](./images/vagrant-config.PNG)

- Then I ran the command below to enter my master machine

`vagrant ssh master`![alt text](image-1.png)

![ssh-master](./images/ssh-master.PNG)

- try and ssh into the slave node from master node

`ssh vagrant@192.168.11`

![ssh](./images/slave-ssh.PNG)

- Try and enter into the slave machine by running

`vagrant ssh slave`

![ssh-slave](./images/ssh-slave.PNG)

- install ansible on your master node using

`sudo apt install ansible`

![ansible](./images/ansible-install.PNG)

- check the version of ansible installed

 ` ansible --version `

 ![version](./images/version-ansible.PNG)


 - on your master node, edit the ssh configuration file and do the same on the slave node.

 ![config](./images/config-file.PNG)

- Then update the inventory file on master node

 ![inventory](./images/inventory.PNG)

 - update the local ansible configuration file on master

 ![](./images/ansible.cfg)

 - update your hosts config file

 `sudo vim /etc/hosts`

 ![host](./images/hosts.PNG)



 - try and ping the slave node

 `ansible -i inventory-qa -m ping slave`

 ![ping](./images/ping.PNG)

 - write your bash script and playbook and run your playbook

 `ansible-playbook inventory-qa webdeploy.yml`

 ![playbook](./images/playbook-final.PNG)


 - After a while, copy the ip address of the slave and paste it on a browser

 ![apache](./images/slave-apache-site.PNG)

 ![laravel](./images/slave-laravel.PNG)