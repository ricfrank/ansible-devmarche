1 - vagrant up

2 - vagrant ssh controlhost

3 - ssh-copy-id vagrant@10.10.10.2 (password=vagrant)
    ssh-copy-id vagrant@10.10.10.3 (password=vagrant)

4 - ansible-playbook /vagrant/playbooks.yml -i /vagrant/hosts.ini -vv

5 - ansible-playbook /vagrant/deploy_playbooks.yml -i /vagrant/hosts.ini -vv

6 - adds on your hosts file
    10.10.10.2      devmarche.dev
    10.10.10.3      devmarche.stage

7 - navigate application on development node with devmarche.dev
    navigate application on stage node with devmarche.stage
