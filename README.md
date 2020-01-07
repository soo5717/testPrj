# testPrj
## Prerequistic

### hostname 
* Master is hadoop master. 
* example
```
sudo -i
echo "3.86.148.90 master" >> /etc/hosts
```

### Keyfile
* keyfile name is MyKey.pem
```
$ ls
MyKey.pem  do.sh  hive_empdept.sh
```

## install
```
git clone https://github.com/soo5717/testPrj.git
cd testPrj
scp ~/MyKey.pem ./
. do.sh
```

## Result
```
~
~
Time taken: 1.138 seconds, Fetched: 14 row(s)
Query ID = hadoop_20200107050713_ebaa49b6-863f-48e3-ade3-fa639a1d0ad8
Total jobs = 1
Launching Job 1 out of 1
Status: Running (Executing on YARN cluster with App id application_1578362769746_0006)

Map 1: 0/1      Reducer 2: 0/1
Map 1: 0(+1)/1  Reducer 2: 0/1
Map 1: 0/1      Reducer 2: 0/1
Map 1: 1/1      Reducer 2: 0(+1)/1
Map 1: 1/1      Reducer 2: 1/1
OK
10      8750
20      10875
30      9400
Time taken: 10.902 seconds, Fetched: 3 row(s)
Query ID = hadoop_20200107050724_e5feba28-d491-44e8-9996-8007544fa926
Total jobs = 1
Launching Job 1 out of 1
Status: Running (Executing on YARN cluster with App id application_1578362769746_0006)

Map 1: 0(+1)/1  Reducer 2: 0/1  Reducer 3: 0/1
Map 1: 1/1      Reducer 2: 0(+1)/1      Reducer 3: 0/1
Map 1: 1/1      Reducer 2: 1/1  Reducer 3: 1/1
OK
20      2518.75
10      2916.6666666666665
Time taken: 1.147 seconds, Fetched: 2 row(s)
OK
dept
emp
Time taken: 0.022 seconds, Fetched: 2 row(s)
```

