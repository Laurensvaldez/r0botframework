@echo off

call robot -d results tests/Crm.robot
call robot -d results --include smoke tests/Crm.robot
call robot -d  U:\code_projects\udemy\results -i smoke tests\Crm.robot