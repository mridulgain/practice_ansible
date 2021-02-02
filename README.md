### What?
An environment to practice ansible concepts
### How?
- You may run a single container as **ansible-controller**
```
$ docker run --name ansible-controller -d mridulgain/ansible-controller
$ docker exec -it ansible-controller bash
```
- then add *localhost* at ```/etc/ansible/hosts``` file and you are good to go.
#### Or,
Open another terminal and spin up another container using the same image as **ansible-nodes**
```
$ docker run --name ansible-node-1 -d mridulgain/ansible-controller
```
Get its IP address,
```
$ docker exec -it ansible-node-1 ip a
```
- add the IP address in managed hosts file (i.e /etc/ansible/hosts) at the controller
- verify the set up. On the controller run,
```
$ ansible all -m ping.
```
