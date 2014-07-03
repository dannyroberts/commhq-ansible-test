Ansible Deployment Test
========================

Three VMs will be powered up,
* control
* app1
* db1

Instructions to test:
---

Setup the instances by:
```
vagrant up
```

Login to the control instance:
```
vagrant ssh control
```

Go to the cchq playbook path and run:
```
cd /vagrant/cchq
ansible-playbook -i hosts cchq.yml
```

Watch deployment!
