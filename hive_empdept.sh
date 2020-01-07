hive --hiveconf hive.metastore.uris=thrift://127.0.0.1:9083 -e "
drop table dept;
create table dept(
    deptno int,
    dname string,
    loc string
)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ','
tblproperties ('skip.header.line.count'='1');

load data local inpath '/tmp/dept.csv' overwrite into table dept;

drop table emp;
create table emp(
    empno int,
    ename string,
    job string,
    mgr int,
    hiredate string,
    sal int,
    comm int,
    deptno int
)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ','
tblproperties ('skip.header.line.count'='1');
load data local inpath '/tmp/emp.csv' overwrite into table emp;
select * from emp;

select deptno,sum(sal) from emp group by deptno;
select deptno,avg(sal) avgsal from emp where sal>1000 group by deptno
       having(avgsal>2000) order by avgsal ;
show tables;
"       
