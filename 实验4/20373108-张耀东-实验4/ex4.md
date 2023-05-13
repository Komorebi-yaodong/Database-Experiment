# 创建初始用户OT
1. 用sysdba身份登录
``sqlplus / as sysdba``

2. 到xepdb1会话中
``alter session set container = xepdb1;``

3. 创建用户
``create user OT identified by ot;``

4. 赋予用户权限
``GRANT CONNECT, RESOURCE, DBA TO OT;``

5. 导入初始数据

``@./oracle_sql/schema_oracle.sql;``这里的目录自己改一下，是sql建表文件

``@./oracle_sql/data_oracle.sql;``这里的目录自己改一下，是sql导入数据文件

6. 创建directory对象

``create directory backup as 'D:\TmpFile\db_bk\';``这里的目录自己改一下

删除目录，以防万一用的`` drop directory backup; ``

7. 将当前目录的权限授予
``grant read,write on directory backup to public;``

8. 退出
``exit;``

# 进行数据库备份

1. 以下在命令行（cmd）中执行

2. 导出
``expdp OT/ot@xepdb1 tables = Students job_name=ex4_data1 directory=backup parallel=1 dumpfile=Students.dmp content=all logfile=ex4_data1.log``

``expdp OT/ot@xepdb1 tables = Classifications job_name=ex4_data4 directory=backup parallel=1 dumpfile=Classifications.dmp content=all logfile=ex4_data4.log``

``expdp OT/ot@xepdb1 tables = Books job_name=ex4_data2 directory=backup parallel=1 dumpfile=Books.dmp content=all logfile=ex4_data2.log``

``expdp OT/ot@xepdb1 tables = Borrows job_name=ex4_data3 directory=backup parallel=1 dumpfile=Borrows.dmp content=all logfile=ex4_data3.log``

# 删除OT，创建另一个用户ot_bk
1. 到xepdb1会话中
``alter session set container = xepdb1;``

2. 删除用户
``drop user OT CASCADE;``

3. 创建新用户
``create user ot_bk identified by ot_bk;``

4. 赋予新用户权限
``GRANT CONNECT, RESOURCE, DBA TO ot_bk;``

5. 退出
``exit;``

6. 导入
``impdp ot_bk/ot_bk@xepdb1 tables="OT"."STUDENTS" directory=backup dumpfile=Students.dmp REMAP_SCHEMA=OT:ot_bk REMAP_TABLESPACE=OT:ot_bk``

``impdp ot_bk/ot_bk@xepdb1 tables="OT"."Classifications" directory=backup dumpfile=Classifications.dmp REMAP_SCHEMA=OT:ot_bk REMAP_TABLESPACE=OT:ot_bk``

``impdp ot_bk/ot_bk@xepdb1 tables="OT"."Books" directory=backup dumpfile=Books.dmp REMAP_SCHEMA=OT:ot_bk REMAP_TABLESPACE=OT:ot_bk``

``impdp ot_bk/ot_bk@xepdb1 tables="OT"."Borrows" directory=backup dumpfile=Borrows.dmp REMAP_SCHEMA=OT:ot_bk REMAP_TABLESPACE=OT:ot_bk``
