ansible 2vm -m shell -a fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randread --bs=4k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-4k-read
ansible ceph_osds -m shell -a sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
ansible 2vm -m shell -a fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randwrite --bs=4k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-4k-write
ansible ceph_osds -m shell -a sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
ansible 2vm -m shell -a fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randread --bs=8k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-8k-read
ansible ceph_osds -m shell -a sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
ansible 2vm -m shell -a fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randwrite --bs=8k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-8k-write
ansible ceph_osds -m shell -a sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
ansible 2vm -m shell -a fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randread --bs=16k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-16k-read
ansible ceph_osds -m shell -a sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
ansible 2vm -m shell -a fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randwrite --bs=16k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-16k-write
ansible ceph_osds -m shell -a sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
ansible 2vm -m shell -a fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randread --bs=32k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-32k-read
ansible ceph_osds -m shell -a sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
ansible 2vm -m shell -a fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randwrite --bs=32k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-32k-write
ansible ceph_osds -m shell -a sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
ansible 2vm -m shell -a fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randread --bs=64k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-64k-read
ansible ceph_osds -m shell -a sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
ansible 2vm -m shell -a fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randwrite --bs=64k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-64k-write
ansible ceph_osds -m shell -a sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
ansible 2vm -m shell -a fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randread --bs=1024k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-1024k-read
ansible ceph_osds -m shell -a sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
ansible 2vm -m shell -a fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randwrite --bs=1024k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-1024k-write
ansible ceph_osds -m shell -a sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
ansible 2vm -m shell -a fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randrw --bs=4k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-4-rw --rwmixwrite=70 --rwmixread=30
ansible ceph_osds -m shell -a sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
ansible 2vm -m shell -a fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randrw --bs=8k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-8-rw --rwmixwrite=70 --rwmixread=30
ansible ceph_osds -m shell -a sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
ansible 2vm -m shell -a fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randrw --bs=16k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-16-rw --rwmixwrite=70 --rwmixread=30
ansible ceph_osds -m shell -a sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
ansible 2vm -m shell -a fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randrw --bs=32k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-32-rw --rwmixwrite=70 --rwmixread=30
ansible ceph_osds -m shell -a sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
ansible 2vm -m shell -a fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randrw --bs=64k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-64-rw --rwmixwrite=70 --rwmixread=30
ansible ceph_osds -m shell -a sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
ansible 2vm -m shell -a fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randrw --bs=1024k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-1024-rw --rwmixwrite=70 --rwmixread=30
ansible ceph_osds -m shell -a sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
ansible 4vm -m shell -a fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randread --bs=4k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-4k-read
ansible ceph_osds -m shell -a sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
ansible 4vm -m shell -a fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randwrite --bs=4k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-4k-write
ansible ceph_osds -m shell -a sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
ansible 4vm -m shell -a fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randread --bs=8k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-8k-read
ansible ceph_osds -m shell -a sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
ansible 4vm -m shell -a fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randwrite --bs=8k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-8k-write
ansible ceph_osds -m shell -a sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
ansible 4vm -m shell -a fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randread --bs=16k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-16k-read
ansible ceph_osds -m shell -a sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
ansible 4vm -m shell -a fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randwrite --bs=16k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-16k-write
ansible ceph_osds -m shell -a sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
ansible 4vm -m shell -a fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randread --bs=32k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-32k-read
ansible ceph_osds -m shell -a sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
ansible 4vm -m shell -a fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randwrite --bs=32k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-32k-write
ansible ceph_osds -m shell -a sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
ansible 4vm -m shell -a fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randread --bs=64k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-64k-read
ansible ceph_osds -m shell -a sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
ansible 4vm -m shell -a fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randwrite --bs=64k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-64k-write
ansible ceph_osds -m shell -a sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
ansible 4vm -m shell -a fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randread --bs=1024k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-1024k-read
ansible ceph_osds -m shell -a sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
ansible 4vm -m shell -a fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randwrite --bs=1024k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-1024k-write
ansible ceph_osds -m shell -a sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
ansible 2vm -m shell -a fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randrw --bs=4k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-4-rw --rwmixwrite=70 --rwmixread=30
ansible ceph_osds -m shell -a sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
ansible 2vm -m shell -a fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randrw --bs=8k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-8-rw --rwmixwrite=70 --rwmixread=30
ansible ceph_osds -m shell -a sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
ansible 2vm -m shell -a fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randrw --bs=16k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-16-rw --rwmixwrite=70 --rwmixread=30
ansible ceph_osds -m shell -a sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
ansible 2vm -m shell -a fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randrw --bs=32k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-32-rw --rwmixwrite=70 --rwmixread=30
ansible ceph_osds -m shell -a sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
ansible 2vm -m shell -a fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randrw --bs=64k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-64-rw --rwmixwrite=70 --rwmixread=30
ansible ceph_osds -m shell -a sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
ansible 2vm -m shell -a fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randrw --bs=1024k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-1024-rw --rwmixwrite=70 --rwmixread=30
ansible ceph_osds -m shell -a sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
ansible 6vm -m shell -a fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randread --bs=4k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-4k-read
ansible ceph_osds -m shell -a sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
ansible 6vm -m shell -a fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randwrite --bs=4k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-4k-write
ansible ceph_osds -m shell -a sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
ansible 6vm -m shell -a fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randread --bs=8k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-8k-read
ansible ceph_osds -m shell -a sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
ansible 6vm -m shell -a fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randwrite --bs=8k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-8k-write
ansible ceph_osds -m shell -a sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
ansible 6vm -m shell -a fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randread --bs=16k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-16k-read
ansible ceph_osds -m shell -a sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
ansible 6vm -m shell -a fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randwrite --bs=16k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-16k-write
ansible ceph_osds -m shell -a sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
ansible 6vm -m shell -a fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randread --bs=32k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-32k-read
ansible ceph_osds -m shell -a sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
ansible 6vm -m shell -a fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randwrite --bs=32k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-32k-write
ansible ceph_osds -m shell -a sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
ansible 6vm -m shell -a fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randread --bs=64k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-64k-read
ansible ceph_osds -m shell -a sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
ansible 6vm -m shell -a fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randwrite --bs=64k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-64k-write
ansible ceph_osds -m shell -a sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
ansible 6vm -m shell -a fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randread --bs=1024k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-1024k-read
ansible ceph_osds -m shell -a sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
ansible 6vm -m shell -a fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randwrite --bs=1024k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-1024k-write
ansible ceph_osds -m shell -a sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
ansible 2vm -m shell -a fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randrw --bs=4k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-4-rw --rwmixwrite=70 --rwmixread=30
ansible ceph_osds -m shell -a sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
ansible 2vm -m shell -a fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randrw --bs=8k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-8-rw --rwmixwrite=70 --rwmixread=30
ansible ceph_osds -m shell -a sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
ansible 2vm -m shell -a fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randrw --bs=16k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-16-rw --rwmixwrite=70 --rwmixread=30
ansible ceph_osds -m shell -a sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
ansible 2vm -m shell -a fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randrw --bs=32k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-32-rw --rwmixwrite=70 --rwmixread=30
ansible ceph_osds -m shell -a sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
ansible 2vm -m shell -a fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randrw --bs=64k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-64-rw --rwmixwrite=70 --rwmixread=30
ansible ceph_osds -m shell -a sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
ansible 2vm -m shell -a fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randrw --bs=1024k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-1024-rw --rwmixwrite=70 --rwmixread=30
ansible ceph_osds -m shell -a sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
ansible 8vm -m shell -a fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randread --bs=4k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-4k-read
ansible ceph_osds -m shell -a sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
ansible 8vm -m shell -a fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randwrite --bs=4k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-4k-write
ansible ceph_osds -m shell -a sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
ansible 8vm -m shell -a fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randread --bs=8k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-8k-read
ansible ceph_osds -m shell -a sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
ansible 8vm -m shell -a fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randwrite --bs=8k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-8k-write
ansible ceph_osds -m shell -a sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
ansible 8vm -m shell -a fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randread --bs=16k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-16k-read
ansible ceph_osds -m shell -a sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
ansible 8vm -m shell -a fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randwrite --bs=16k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-16k-write
ansible ceph_osds -m shell -a sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
ansible 8vm -m shell -a fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randread --bs=32k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-32k-read
ansible ceph_osds -m shell -a sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
ansible 8vm -m shell -a fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randwrite --bs=32k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-32k-write
ansible ceph_osds -m shell -a sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
ansible 8vm -m shell -a fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randread --bs=64k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-64k-read
ansible ceph_osds -m shell -a sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
ansible 8vm -m shell -a fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randwrite --bs=64k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-64k-write
ansible ceph_osds -m shell -a sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
ansible 8vm -m shell -a fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randread --bs=1024k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-1024k-read
ansible ceph_osds -m shell -a sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
ansible 8vm -m shell -a fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randwrite --bs=1024k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-1024k-write
ansible ceph_osds -m shell -a sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
ansible 2vm -m shell -a fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randrw --bs=4k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-4-rw --rwmixwrite=70 --rwmixread=30
ansible ceph_osds -m shell -a sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
ansible 2vm -m shell -a fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randrw --bs=8k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-8-rw --rwmixwrite=70 --rwmixread=30
ansible ceph_osds -m shell -a sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
ansible 2vm -m shell -a fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randrw --bs=16k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-16-rw --rwmixwrite=70 --rwmixread=30
ansible ceph_osds -m shell -a sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
ansible 2vm -m shell -a fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randrw --bs=32k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-32-rw --rwmixwrite=70 --rwmixread=30
ansible ceph_osds -m shell -a sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
ansible 2vm -m shell -a fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randrw --bs=64k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-64-rw --rwmixwrite=70 --rwmixread=30
ansible ceph_osds -m shell -a sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
ansible 2vm -m shell -a fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randrw --bs=1024k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-1024-rw --rwmixwrite=70 --rwmixread=30
ansible ceph_osds -m shell -a sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
ansible 10vm -m shell -a fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randread --bs=4k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-4k-read
ansible ceph_osds -m shell -a sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
ansible 10vm -m shell -a fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randwrite --bs=4k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-4k-write
ansible ceph_osds -m shell -a sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
ansible 10vm -m shell -a fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randread --bs=8k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-8k-read
ansible ceph_osds -m shell -a sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
ansible 10vm -m shell -a fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randwrite --bs=8k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-8k-write
ansible ceph_osds -m shell -a sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
ansible 10vm -m shell -a fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randread --bs=16k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-16k-read
ansible ceph_osds -m shell -a sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
ansible 10vm -m shell -a fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randwrite --bs=16k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-16k-write
ansible ceph_osds -m shell -a sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
ansible 10vm -m shell -a fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randread --bs=32k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-32k-read
ansible ceph_osds -m shell -a sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
ansible 10vm -m shell -a fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randwrite --bs=32k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-32k-write
ansible ceph_osds -m shell -a sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
ansible 10vm -m shell -a fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randread --bs=64k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-64k-read
ansible ceph_osds -m shell -a sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
ansible 10vm -m shell -a fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randwrite --bs=64k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-64k-write
ansible ceph_osds -m shell -a sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
ansible 10vm -m shell -a fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randread --bs=1024k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-1024k-read
ansible ceph_osds -m shell -a sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
ansible 10vm -m shell -a fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randwrite --bs=1024k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-1024k-write
ansible ceph_osds -m shell -a sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
ansible 2vm -m shell -a fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randrw --bs=4k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-4-rw --rwmixwrite=70 --rwmixread=30
ansible ceph_osds -m shell -a sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
ansible 2vm -m shell -a fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randrw --bs=8k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-8-rw --rwmixwrite=70 --rwmixread=30
ansible ceph_osds -m shell -a sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
ansible 2vm -m shell -a fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randrw --bs=16k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-16-rw --rwmixwrite=70 --rwmixread=30
ansible ceph_osds -m shell -a sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
ansible 2vm -m shell -a fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randrw --bs=32k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-32-rw --rwmixwrite=70 --rwmixread=30
ansible ceph_osds -m shell -a sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
ansible 2vm -m shell -a fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randrw --bs=64k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-64-rw --rwmixwrite=70 --rwmixread=30
ansible ceph_osds -m shell -a sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
ansible 2vm -m shell -a fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randrw --bs=1024k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=2vm-1024-rw --rwmixwrite=70 --rwmixread=30
ansible ceph_osds -m shell -a sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
