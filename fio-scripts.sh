#!/bin/bash 

read " fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randread --bs=4K --size=1G --numjobs=16 --runtime=600 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-read"
write " fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randwrite --bs=4K --size=1G --numjobs=16 --runtime=600 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-write"
r7w3 " fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randrw --bs=4K --size=1G --numjobs=16 --runtime=600 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --rwmixwrite=70 --rwmixread=30 --output=2vm-r7w3"

sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
ssh 115.71.12.21 


---
- name: fio for flush
  become: true
  hosts: ceph_osds
  gather_facts: no 
  tasks:
  - name: flush cache
    shell: "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"

- name: fio for vm
  become: true
  gather_facts: no 
  hosts: 2vm
  tasks:
  - name: test
    shell: "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randread --bs=4K --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-read"

- name: fio for flush
  become: true
  hosts: ceph_osds
  gather_facts: no 
  tasks:
  - name: flush cache
    shell: "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"

- name: fio for vm
  become: true
  gather_facts: no 
  hosts: 2vm
  tasks:
  - name: test
    shell: "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randread --bs=4K --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-read"

r7w3 " fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randrw --bs=4K --size=1G --numjobs=16 --runtime=600 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --rwmixwrite=70 --rwmixread=30 --output=2vm-r7w3"



