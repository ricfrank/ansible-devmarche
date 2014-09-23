Purpose:
--------

1 - server provision on "development" and "stage" hosts

2 - deploy application on "stage" host
 

Requirements:
-------------

Vagrant >= 1.6


Setup and run project:
----------------------

1 - vagrant up

2 - vagrant ssh controlhost

3 - ssh-copy-id vagrant@10.10.10.2 (password=vagrant)

4 - ssh-copy-id vagrant@10.10.10.3 (password=vagrant)

5 - Run provision on "development" and "stage" nodes: ansible-playbook /vagrant/playbooks.yml -i /vagrant/hosts.ini -vv

6 - Run deploy on "stage" node: ansible-playbook /vagrant/deploy_playbooks.yml -i /vagrant/hosts.ini -vv

7 - add on your hosts file "10.10.10.2      devmarche.dev"

8 - add on your hosts file "10.10.10.3      devmarche.stage"

9 - navigate application on development node with devmarche.dev

10 - navigate application on stage node with devmarche.stage
