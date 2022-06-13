#!bin/bash
mysql -uroot -p -e "CREATE DATABASE inc;use inc; CREATE TABLE employees ( emp_id  int  NOT NULL, emp_name  varchar(10)  NOT NULL, job_name  varchar(10)  NOT NULL, manager_  int, hire_date  date, salary  int  NOT NULL, dep_id  char(4)  NOT NULL);"

for var in `cat /root/try.csv`
do
col_1=`echo $var | cut -f1 -d','`
col_2=`echo $var | cut -f2 -d','`
col_3=`echo $var | cut -f3 -d','`
col_4=`echo $var | cut -f4 -d','`
col_5=`echo $var | cut -f5 -d','`
col_6=`echo $var | cut -f6 -d','`
col_7=`echo $var | cut -f7 -d','`
mysql -uroot -p -e "use inc;INSERT INTO employees VALUES ('$col_1','$col_2','$col_3','$col_4','$col_5','$col_6','$col_7')"
done
mysql -uroot -p -e "use hamo;SELECT * FROM employees;"
