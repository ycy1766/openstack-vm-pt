#!/bin/bash 


for R in 2vm 4vm 6vm 8vm 10vm 
do
for i in 4 8 16 32 64 1024
do
for I in read write 
do
echo ansible ceph_osds -m shell -a  "\"sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;\""
echo ansible $R -m shell -a  "\"fio --directory=/mnt/vdb --name test_file --direct=1 --rw=rand${I} --bs=${i}k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=${R}-${i}k-${I}\""
echo sleep 5
echo ssh vm-61  " tt=`ps aux |grep -i fio | wc -l `; while [ $tt -ne 0 ]; do tt=`ps aux |grep -i fio| grep -iv grep  | wc -l `; echo play ; sleep 1 ;  done "
echo ssh vm-62  " tt=`ps aux |grep -i fio | wc -l `; while [ $tt -ne 0 ]; do tt=`ps aux |grep -i fio| grep -iv grep  | wc -l `; echo play ; sleep 1 ;  done "
echo 
done
done
for i in 4 8 16 32 64 1024
do
echo ansible ceph_osds -m shell -a  "\"sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;\""
echo ansible $R -m shell -a  "\"fio --directory=/mnt/vdb --name test_file --direct=1 --rw=randrw --bs=${i}k --size=1G --numjobs=16 --runtime=10 --group_reporting --ioengine=libaio --norandommap --eta-newline=1 --output=${R}-${i}-rw --rwmixwrite=70 --rwmixread=30\""
echo sleep 5
echo ssh vm-61  " tt=`ps aux |grep -i fio | wc -l `; while [ $tt -ne 0 ]; do tt=`ps aux |grep -i fio| grep -iv grep  | wc -l `; echo play ; sleep 1 ;  done "
echo ssh vm-62  " tt=`ps aux |grep -i fio | wc -l `; while [ $tt -ne 0 ]; do tt=`ps aux |grep -i fio| grep -iv grep  | wc -l `; echo play ; sleep 1 ;  done "
echo 
done
done
