# Description

Ansible Playbook which will create servers for workshops on hetzner.


To run this, you need to do something like this:

```
export HCLOUD_TOKEN=hetzner-token-goes-here
ansible-playbook -i $(which hcloud_inventory) site.yml
```

It also depends on [hcloud-hetzner](https://github.com/thetechnick/hcloud-ansible)
