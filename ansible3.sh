ansible ceph_osds -m shell -a "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"
ansible 2vm -m shell -a "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randread --bs=4k --size=1G --numjobs=16 --runtime=180 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-4k-read"
sleep 5
ssh vm-61  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-62  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 

ansible ceph_osds -m shell -a "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"
ansible 2vm -m shell -a "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randwrite --bs=4k --size=1G --numjobs=16 --runtime=180 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-4k-write"
sleep 5
ssh vm-61  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-62  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 

ansible ceph_osds -m shell -a "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"
ansible 2vm -m shell -a "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randread --bs=8k --size=1G --numjobs=16 --runtime=180 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-8k-read"
sleep 5
ssh vm-61  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-62  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 

ansible ceph_osds -m shell -a "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"
ansible 2vm -m shell -a "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randwrite --bs=8k --size=1G --numjobs=16 --runtime=180 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-8k-write"
sleep 5
ssh vm-61  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-62  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 

ansible ceph_osds -m shell -a "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"
ansible 2vm -m shell -a "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randread --bs=16k --size=1G --numjobs=16 --runtime=180 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-16k-read"
sleep 5
ssh vm-61  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-62  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 

ansible ceph_osds -m shell -a "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"
ansible 2vm -m shell -a "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randwrite --bs=16k --size=1G --numjobs=16 --runtime=180 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-16k-write"
sleep 5
ssh vm-61  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-62  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 

ansible ceph_osds -m shell -a "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"
ansible 2vm -m shell -a "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randread --bs=32k --size=1G --numjobs=16 --runtime=180 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-32k-read"
sleep 5
ssh vm-61  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-62  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 

ansible ceph_osds -m shell -a "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"
ansible 2vm -m shell -a "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randwrite --bs=32k --size=1G --numjobs=16 --runtime=180 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-32k-write"
sleep 5
ssh vm-61  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-62  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 

ansible ceph_osds -m shell -a "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"
ansible 2vm -m shell -a "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randread --bs=64k --size=1G --numjobs=16 --runtime=180 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-64k-read"
sleep 5
ssh vm-61  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-62  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 

ansible ceph_osds -m shell -a "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"
ansible 2vm -m shell -a "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randwrite --bs=64k --size=1G --numjobs=16 --runtime=180 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-64k-write"
sleep 5
ssh vm-61  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-62  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 

ansible ceph_osds -m shell -a "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"
ansible 2vm -m shell -a "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randread --bs=1024k --size=1G --numjobs=16 --runtime=180 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-1024k-read"
sleep 5
ssh vm-61  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-62  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 

ansible ceph_osds -m shell -a "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"
ansible 2vm -m shell -a "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randwrite --bs=1024k --size=1G --numjobs=16 --runtime=180 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-1024k-write"
sleep 5
ssh vm-61  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-62  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 

ansible ceph_osds -m shell -a "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"
ansible 2vm -m shell -a "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randrw --bs=4k --size=1G --numjobs=16 --runtime=180 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-4-rw --rwmixwrite=70 --rwmixread=30"
sleep 5
ssh vm-61  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-62  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 

ansible ceph_osds -m shell -a "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"
ansible 2vm -m shell -a "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randrw --bs=8k --size=1G --numjobs=16 --runtime=180 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-8-rw --rwmixwrite=70 --rwmixread=30"
sleep 5
ssh vm-61  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-62  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 

ansible ceph_osds -m shell -a "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"
ansible 2vm -m shell -a "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randrw --bs=16k --size=1G --numjobs=16 --runtime=180 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-16-rw --rwmixwrite=70 --rwmixread=30"
sleep 5
ssh vm-61  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-62  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 

ansible ceph_osds -m shell -a "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"
ansible 2vm -m shell -a "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randrw --bs=32k --size=1G --numjobs=16 --runtime=180 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-32-rw --rwmixwrite=70 --rwmixread=30"
sleep 5
ssh vm-61  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-62  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 

ansible ceph_osds -m shell -a "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"
ansible 2vm -m shell -a "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randrw --bs=64k --size=1G --numjobs=16 --runtime=180 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-64-rw --rwmixwrite=70 --rwmixread=30"
sleep 5
ssh vm-61  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-62  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 

ansible ceph_osds -m shell -a "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"
ansible 2vm -m shell -a "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randrw --bs=1024k --size=1G --numjobs=16 --runtime=180 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-1024-rw --rwmixwrite=70 --rwmixread=30"
sleep 5
ssh vm-61  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-62  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 

ansible ceph_osds -m shell -a "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"
ansible 4vm -m shell -a "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randread --bs=4k --size=1G --numjobs=16 --runtime=180 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=4vm-4k-read"
sleep 5
ssh vm-61  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-62  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-63  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-64  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 

ansible ceph_osds -m shell -a "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"
ansible 4vm -m shell -a "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randwrite --bs=4k --size=1G --numjobs=16 --runtime=180 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=4vm-4k-write"
sleep 5
ssh vm-61  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-62  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-63  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-64  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 

ansible ceph_osds -m shell -a "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"
ansible 4vm -m shell -a "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randread --bs=8k --size=1G --numjobs=16 --runtime=180 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=4vm-8k-read"
sleep 5
ssh vm-61  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-62  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-63  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-64  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 

ansible ceph_osds -m shell -a "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"
ansible 4vm -m shell -a "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randwrite --bs=8k --size=1G --numjobs=16 --runtime=180 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=4vm-8k-write"
sleep 5
ssh vm-61  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-62  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-63  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-64  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 

ansible ceph_osds -m shell -a "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"
ansible 4vm -m shell -a "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randread --bs=16k --size=1G --numjobs=16 --runtime=180 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=4vm-16k-read"
sleep 5
ssh vm-61  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-62  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-63  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-64  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 

ansible ceph_osds -m shell -a "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"
ansible 4vm -m shell -a "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randwrite --bs=16k --size=1G --numjobs=16 --runtime=180 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=4vm-16k-write"
sleep 5
ssh vm-61  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-62  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-63  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-64  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 

ansible ceph_osds -m shell -a "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"
ansible 4vm -m shell -a "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randread --bs=32k --size=1G --numjobs=16 --runtime=180 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=4vm-32k-read"
sleep 5
ssh vm-61  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-62  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-63  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-64  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 

ansible ceph_osds -m shell -a "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"
ansible 4vm -m shell -a "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randwrite --bs=32k --size=1G --numjobs=16 --runtime=180 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=4vm-32k-write"
sleep 5
ssh vm-61  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-62  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-63  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-64  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 

ansible ceph_osds -m shell -a "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"
ansible 4vm -m shell -a "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randread --bs=64k --size=1G --numjobs=16 --runtime=180 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=4vm-64k-read"
sleep 5
ssh vm-61  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-62  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-63  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-64  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 

ansible ceph_osds -m shell -a "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"
ansible 4vm -m shell -a "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randwrite --bs=64k --size=1G --numjobs=16 --runtime=180 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=4vm-64k-write"
sleep 5
ssh vm-61  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-62  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-63  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-64  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 

ansible ceph_osds -m shell -a "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"
ansible 4vm -m shell -a "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randread --bs=1024k --size=1G --numjobs=16 --runtime=180 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=4vm-1024k-read"
sleep 5
ssh vm-61  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-62  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-63  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-64  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 

ansible ceph_osds -m shell -a "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"
ansible 4vm -m shell -a "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randwrite --bs=1024k --size=1G --numjobs=16 --runtime=180 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=4vm-1024k-write"
sleep 5
ssh vm-61  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-62  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-63  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-64  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 

ansible ceph_osds -m shell -a "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"
ansible 4vm -m shell -a "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randrw --bs=4k --size=1G --numjobs=16 --runtime=180 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=4vm-4-rw --rwmixwrite=70 --rwmixread=30"
sleep 5
ssh vm-61  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-62  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-63  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-64  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 

ansible ceph_osds -m shell -a "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"
ansible 4vm -m shell -a "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randrw --bs=8k --size=1G --numjobs=16 --runtime=180 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=4vm-8-rw --rwmixwrite=70 --rwmixread=30"
sleep 5
ssh vm-61  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-62  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-63  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-64  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 

ansible ceph_osds -m shell -a "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"
ansible 4vm -m shell -a "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randrw --bs=16k --size=1G --numjobs=16 --runtime=180 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=4vm-16-rw --rwmixwrite=70 --rwmixread=30"
sleep 5
ssh vm-61  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-62  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-63  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-64  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 

ansible ceph_osds -m shell -a "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"
ansible 4vm -m shell -a "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randrw --bs=32k --size=1G --numjobs=16 --runtime=180 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=4vm-32-rw --rwmixwrite=70 --rwmixread=30"
sleep 5
ssh vm-61  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-62  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-63  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-64  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 

ansible ceph_osds -m shell -a "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"
ansible 4vm -m shell -a "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randrw --bs=64k --size=1G --numjobs=16 --runtime=180 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=4vm-64-rw --rwmixwrite=70 --rwmixread=30"
sleep 5
ssh vm-61  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-62  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-63  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-64  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 

ansible ceph_osds -m shell -a "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"
ansible 4vm -m shell -a "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randrw --bs=1024k --size=1G --numjobs=16 --runtime=180 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=4vm-1024-rw --rwmixwrite=70 --rwmixread=30"
sleep 5
ssh vm-61  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-62  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-63  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-64  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 

ansible ceph_osds -m shell -a "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"
ansible 6vm -m shell -a "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randread --bs=4k --size=1G --numjobs=16 --runtime=180 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=6vm-4k-read"
sleep 5
ssh vm-61  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-62  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-63  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-64  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-65  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-66  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 

ansible ceph_osds -m shell -a "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"
ansible 6vm -m shell -a "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randwrite --bs=4k --size=1G --numjobs=16 --runtime=180 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=6vm-4k-write"
sleep 5
ssh vm-61  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-62  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-63  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-64  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-65  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-66  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 

ansible ceph_osds -m shell -a "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"
ansible 6vm -m shell -a "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randread --bs=8k --size=1G --numjobs=16 --runtime=180 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=6vm-8k-read"
sleep 5
ssh vm-61  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-62  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-63  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-64  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-65  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-66  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 

ansible ceph_osds -m shell -a "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"
ansible 6vm -m shell -a "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randwrite --bs=8k --size=1G --numjobs=16 --runtime=180 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=6vm-8k-write"
sleep 5
ssh vm-61  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-62  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-63  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-64  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-65  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-66  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 

ansible ceph_osds -m shell -a "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"
ansible 6vm -m shell -a "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randread --bs=16k --size=1G --numjobs=16 --runtime=180 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=6vm-16k-read"
sleep 5
ssh vm-61  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-62  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-63  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-64  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-65  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-66  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 

ansible ceph_osds -m shell -a "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"
ansible 6vm -m shell -a "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randwrite --bs=16k --size=1G --numjobs=16 --runtime=180 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=6vm-16k-write"
sleep 5
ssh vm-61  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-62  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-63  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-64  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-65  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-66  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 

ansible ceph_osds -m shell -a "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"
ansible 6vm -m shell -a "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randread --bs=32k --size=1G --numjobs=16 --runtime=180 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=6vm-32k-read"
sleep 5
ssh vm-61  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-62  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-63  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-64  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-65  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-66  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 

ansible ceph_osds -m shell -a "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"
ansible 6vm -m shell -a "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randwrite --bs=32k --size=1G --numjobs=16 --runtime=180 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=6vm-32k-write"
sleep 5
ssh vm-61  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-62  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-63  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-64  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-65  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-66  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 

ansible ceph_osds -m shell -a "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"
ansible 6vm -m shell -a "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randread --bs=64k --size=1G --numjobs=16 --runtime=180 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=6vm-64k-read"
sleep 5
ssh vm-61  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-62  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-63  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-64  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-65  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-66  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 

ansible ceph_osds -m shell -a "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"
ansible 6vm -m shell -a "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randwrite --bs=64k --size=1G --numjobs=16 --runtime=180 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=6vm-64k-write"
sleep 5
ssh vm-61  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-62  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-63  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-64  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-65  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-66  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 

ansible ceph_osds -m shell -a "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"
ansible 6vm -m shell -a "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randread --bs=1024k --size=1G --numjobs=16 --runtime=180 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=6vm-1024k-read"
sleep 5
ssh vm-61  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-62  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-63  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-64  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-65  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-66  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 

ansible ceph_osds -m shell -a "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"
ansible 6vm -m shell -a "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randwrite --bs=1024k --size=1G --numjobs=16 --runtime=180 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=6vm-1024k-write"
sleep 5
ssh vm-61  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-62  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-63  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-64  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-65  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-66  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 

ansible ceph_osds -m shell -a "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"
ansible 6vm -m shell -a "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randrw --bs=4k --size=1G --numjobs=16 --runtime=180 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=6vm-4-rw --rwmixwrite=70 --rwmixread=30"
sleep 5
ssh vm-61  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-62  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-63  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-64  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-65  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-66  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 

ansible ceph_osds -m shell -a "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"
ansible 6vm -m shell -a "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randrw --bs=8k --size=1G --numjobs=16 --runtime=180 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=6vm-8-rw --rwmixwrite=70 --rwmixread=30"
sleep 5
ssh vm-61  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-62  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-63  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-64  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-65  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-66  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 

ansible ceph_osds -m shell -a "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"
ansible 6vm -m shell -a "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randrw --bs=16k --size=1G --numjobs=16 --runtime=180 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=6vm-16-rw --rwmixwrite=70 --rwmixread=30"
sleep 5
ssh vm-61  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-62  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-63  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-64  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-65  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-66  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 

ansible ceph_osds -m shell -a "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"
ansible 6vm -m shell -a "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randrw --bs=32k --size=1G --numjobs=16 --runtime=180 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=6vm-32-rw --rwmixwrite=70 --rwmixread=30"
sleep 5
ssh vm-61  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-62  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-63  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-64  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-65  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-66  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 

ansible ceph_osds -m shell -a "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"
ansible 6vm -m shell -a "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randrw --bs=64k --size=1G --numjobs=16 --runtime=180 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=6vm-64-rw --rwmixwrite=70 --rwmixread=30"
sleep 5
ssh vm-61  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-62  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-63  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-64  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-65  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-66  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 

ansible ceph_osds -m shell -a "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"
ansible 6vm -m shell -a "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randrw --bs=1024k --size=1G --numjobs=16 --runtime=180 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=6vm-1024-rw --rwmixwrite=70 --rwmixread=30"
sleep 5
ssh vm-61  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-62  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-63  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-64  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-65  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-66  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 

ansible ceph_osds -m shell -a "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"
ansible 8vm -m shell -a "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randread --bs=4k --size=1G --numjobs=16 --runtime=180 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=8vm-4k-read"
sleep 5
ssh vm-61  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-62  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-63  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-64  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-65  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-66  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-67  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-68  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 

ansible ceph_osds -m shell -a "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"
ansible 8vm -m shell -a "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randwrite --bs=4k --size=1G --numjobs=16 --runtime=180 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=8vm-4k-write"
sleep 5
ssh vm-61  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-62  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-63  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-64  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-65  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-66  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-67  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-68  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 

ansible ceph_osds -m shell -a "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"
ansible 8vm -m shell -a "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randread --bs=8k --size=1G --numjobs=16 --runtime=180 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=8vm-8k-read"
sleep 5
ssh vm-61  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-62  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-63  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-64  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-65  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-66  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-67  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-68  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 

ansible ceph_osds -m shell -a "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"
ansible 8vm -m shell -a "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randwrite --bs=8k --size=1G --numjobs=16 --runtime=180 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=8vm-8k-write"
sleep 5
ssh vm-61  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-62  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-63  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-64  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-65  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-66  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-67  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-68  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 

ansible ceph_osds -m shell -a "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"
ansible 8vm -m shell -a "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randread --bs=16k --size=1G --numjobs=16 --runtime=180 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=8vm-16k-read"
sleep 5
ssh vm-61  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-62  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-63  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-64  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-65  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-66  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-67  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-68  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 

ansible ceph_osds -m shell -a "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"
ansible 8vm -m shell -a "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randwrite --bs=16k --size=1G --numjobs=16 --runtime=180 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=8vm-16k-write"
sleep 5
ssh vm-61  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-62  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-63  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-64  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-65  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-66  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-67  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-68  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 

ansible ceph_osds -m shell -a "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"
ansible 8vm -m shell -a "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randread --bs=32k --size=1G --numjobs=16 --runtime=180 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=8vm-32k-read"
sleep 5
ssh vm-61  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-62  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-63  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-64  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-65  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-66  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-67  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-68  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 

ansible ceph_osds -m shell -a "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"
ansible 8vm -m shell -a "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randwrite --bs=32k --size=1G --numjobs=16 --runtime=180 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=8vm-32k-write"
sleep 5
ssh vm-61  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-62  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-63  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-64  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-65  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-66  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-67  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-68  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 

ansible ceph_osds -m shell -a "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"
ansible 8vm -m shell -a "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randread --bs=64k --size=1G --numjobs=16 --runtime=180 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=8vm-64k-read"
sleep 5
ssh vm-61  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-62  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-63  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-64  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-65  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-66  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-67  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-68  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 

ansible ceph_osds -m shell -a "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"
ansible 8vm -m shell -a "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randwrite --bs=64k --size=1G --numjobs=16 --runtime=180 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=8vm-64k-write"
sleep 5
ssh vm-61  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-62  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-63  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-64  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-65  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-66  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-67  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-68  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 

ansible ceph_osds -m shell -a "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"
ansible 8vm -m shell -a "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randread --bs=1024k --size=1G --numjobs=16 --runtime=180 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=8vm-1024k-read"
sleep 5
ssh vm-61  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-62  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-63  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-64  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-65  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-66  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-67  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-68  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 

ansible ceph_osds -m shell -a "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"
ansible 8vm -m shell -a "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randwrite --bs=1024k --size=1G --numjobs=16 --runtime=180 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=8vm-1024k-write"
sleep 5
ssh vm-61  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-62  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-63  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-64  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-65  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-66  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-67  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-68  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 

ansible ceph_osds -m shell -a "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"
ansible 8vm -m shell -a "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randrw --bs=4k --size=1G --numjobs=16 --runtime=180 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=8vm-4-rw --rwmixwrite=70 --rwmixread=30"
sleep 5
ssh vm-61  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-62  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-63  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-64  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-65  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-66  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-67  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-68  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 

ansible ceph_osds -m shell -a "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"
ansible 8vm -m shell -a "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randrw --bs=8k --size=1G --numjobs=16 --runtime=180 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=8vm-8-rw --rwmixwrite=70 --rwmixread=30"
sleep 5
ssh vm-61  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-62  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-63  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-64  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-65  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-66  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-67  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-68  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 

ansible ceph_osds -m shell -a "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"
ansible 8vm -m shell -a "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randrw --bs=16k --size=1G --numjobs=16 --runtime=180 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=8vm-16-rw --rwmixwrite=70 --rwmixread=30"
sleep 5
ssh vm-61  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-62  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-63  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-64  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-65  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-66  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-67  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-68  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 

ansible ceph_osds -m shell -a "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"
ansible 8vm -m shell -a "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randrw --bs=32k --size=1G --numjobs=16 --runtime=180 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=8vm-32-rw --rwmixwrite=70 --rwmixread=30"
sleep 5
ssh vm-61  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-62  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-63  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-64  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-65  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-66  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-67  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-68  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 

ansible ceph_osds -m shell -a "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"
ansible 8vm -m shell -a "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randrw --bs=64k --size=1G --numjobs=16 --runtime=180 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=8vm-64-rw --rwmixwrite=70 --rwmixread=30"
sleep 5
ssh vm-61  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-62  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-63  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-64  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-65  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-66  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-67  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-68  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 

ansible ceph_osds -m shell -a "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"
ansible 8vm -m shell -a "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randrw --bs=1024k --size=1G --numjobs=16 --runtime=180 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=8vm-1024-rw --rwmixwrite=70 --rwmixread=30"
sleep 5
ssh vm-61  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-62  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-63  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-64  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-65  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-66  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-67  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-68  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 

ansible ceph_osds -m shell -a "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"
ansible 10vm -m shell -a "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randread --bs=4k --size=1G --numjobs=16 --runtime=180 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=10vm-4k-read"
sleep 5
ssh vm-61  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-62  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-63  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-64  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-65  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-66  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-67  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-68  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-69  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-70  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 

ansible ceph_osds -m shell -a "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"
ansible 10vm -m shell -a "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randwrite --bs=4k --size=1G --numjobs=16 --runtime=180 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=10vm-4k-write"
sleep 5
ssh vm-61  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-62  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-63  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-64  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-65  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-66  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-67  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-68  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-69  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-70  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 

ansible ceph_osds -m shell -a "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"
ansible 10vm -m shell -a "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randread --bs=8k --size=1G --numjobs=16 --runtime=180 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=10vm-8k-read"
sleep 5
ssh vm-61  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-62  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-63  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-64  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-65  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-66  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-67  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-68  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-69  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-70  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 

ansible ceph_osds -m shell -a "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"
ansible 10vm -m shell -a "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randwrite --bs=8k --size=1G --numjobs=16 --runtime=180 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=10vm-8k-write"
sleep 5
ssh vm-61  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-62  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-63  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-64  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-65  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-66  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-67  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-68  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-69  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-70  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 

ansible ceph_osds -m shell -a "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"
ansible 10vm -m shell -a "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randread --bs=16k --size=1G --numjobs=16 --runtime=180 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=10vm-16k-read"
sleep 5
ssh vm-61  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-62  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-63  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-64  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-65  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-66  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-67  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-68  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-69  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-70  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 

ansible ceph_osds -m shell -a "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"
ansible 10vm -m shell -a "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randwrite --bs=16k --size=1G --numjobs=16 --runtime=180 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=10vm-16k-write"
sleep 5
ssh vm-61  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-62  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-63  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-64  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-65  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-66  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-67  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-68  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-69  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-70  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 

ansible ceph_osds -m shell -a "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"
ansible 10vm -m shell -a "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randread --bs=32k --size=1G --numjobs=16 --runtime=180 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=10vm-32k-read"
sleep 5
ssh vm-61  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-62  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-63  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-64  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-65  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-66  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-67  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-68  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-69  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-70  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 

ansible ceph_osds -m shell -a "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"
ansible 10vm -m shell -a "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randwrite --bs=32k --size=1G --numjobs=16 --runtime=180 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=10vm-32k-write"
sleep 5
ssh vm-61  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-62  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-63  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-64  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-65  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-66  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-67  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-68  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-69  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-70  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 

ansible ceph_osds -m shell -a "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"
ansible 10vm -m shell -a "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randread --bs=64k --size=1G --numjobs=16 --runtime=180 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=10vm-64k-read"
sleep 5
ssh vm-61  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-62  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-63  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-64  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-65  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-66  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-67  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-68  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-69  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-70  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 

ansible ceph_osds -m shell -a "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"
ansible 10vm -m shell -a "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randwrite --bs=64k --size=1G --numjobs=16 --runtime=180 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=10vm-64k-write"
sleep 5
ssh vm-61  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-62  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-63  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-64  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-65  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-66  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-67  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-68  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-69  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-70  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 

ansible ceph_osds -m shell -a "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"
ansible 10vm -m shell -a "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randread --bs=1024k --size=1G --numjobs=16 --runtime=180 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=10vm-1024k-read"
sleep 5
ssh vm-61  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-62  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-63  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-64  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-65  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-66  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-67  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-68  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-69  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-70  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 

ansible ceph_osds -m shell -a "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"
ansible 10vm -m shell -a "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randwrite --bs=1024k --size=1G --numjobs=16 --runtime=180 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=10vm-1024k-write"
sleep 5
ssh vm-61  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-62  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-63  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-64  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-65  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-66  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-67  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-68  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-69  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-70  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 

ansible ceph_osds -m shell -a "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"
ansible 10vm -m shell -a "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randrw --bs=4k --size=1G --numjobs=16 --runtime=180 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=10vm-4-rw --rwmixwrite=70 --rwmixread=30"
sleep 5
ssh vm-61  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-62  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-63  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-64  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-65  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-66  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-67  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-68  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-69  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-70  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 

ansible ceph_osds -m shell -a "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"
ansible 10vm -m shell -a "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randrw --bs=8k --size=1G --numjobs=16 --runtime=180 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=10vm-8-rw --rwmixwrite=70 --rwmixread=30"
sleep 5
ssh vm-61  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-62  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-63  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-64  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-65  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-66  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-67  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-68  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-69  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-70  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 

ansible ceph_osds -m shell -a "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"
ansible 10vm -m shell -a "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randrw --bs=16k --size=1G --numjobs=16 --runtime=180 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=10vm-16-rw --rwmixwrite=70 --rwmixread=30"
sleep 5
ssh vm-61  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-62  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-63  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-64  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-65  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-66  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-67  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-68  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-69  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-70  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 

ansible ceph_osds -m shell -a "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"
ansible 10vm -m shell -a "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randrw --bs=32k --size=1G --numjobs=16 --runtime=180 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=10vm-32-rw --rwmixwrite=70 --rwmixread=30"
sleep 5
ssh vm-61  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-62  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-63  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-64  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-65  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-66  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-67  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-68  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-69  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-70  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 

ansible ceph_osds -m shell -a "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"
ansible 10vm -m shell -a "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randrw --bs=64k --size=1G --numjobs=16 --runtime=180 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=10vm-64-rw --rwmixwrite=70 --rwmixread=30"
sleep 5
ssh vm-61  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-62  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-63  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-64  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-65  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-66  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-67  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-68  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-69  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-70  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 

ansible ceph_osds -m shell -a "sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;"
ansible 10vm -m shell -a "fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randrw --bs=1024k --size=1G --numjobs=16 --runtime=180 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=10vm-1024-rw --rwmixwrite=70 --rwmixread=30"
sleep 5
ssh vm-61  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-62  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-63  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-64  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-65  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-66  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-67  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-68  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-69  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 
ssh vm-70  'tt=1; while [ $tt -ne 0 ]; do tt=0; echo play ; sleep 1 ;  done' 

