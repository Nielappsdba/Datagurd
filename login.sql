column NAME_COL_PLUS_SHOW_PARAM format a40 wrap
column VALUE_COL_PLUS_SHOW_PARAM format a80 wrap
set lines 200 echo on trimsp on tab off pages 10000 serverout on size 1000000 feedback off verify off term off echo off arraysize 5000
define _pr="SQL> "
column pr new_value _pr
select UPPER(SYS_CONTEXT('USERENV','SERVER_HOST'))||':(&_USER@'||SYS_CONTEXT('USERENV','DB_UNIQUE_NAME')||':'||SYS_CONTEXT('USERENV','DATABASE_ROLE')||'> '
pr from dual;
set sqlprompt "&_pr"
column pr clear
alter session set nls_date_format='YYYY-MM-DD HH24:MI:SS';
set termout on
